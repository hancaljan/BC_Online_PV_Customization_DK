report 53105 "NCX_DK PV Posted Invoice Spec."
{
    Caption = 'PV - Posted Invoice Spec.';
    DefaultLayout = RDLC;
    RDLCLayout = './src/Report/Documents/rdl/PostedInvoiceSpec.rdl';

    dataset
    {
        dataitem(Header; "Sales Invoice Header")
        {
            #region SalesInvoiceHeader Columns
            column(SH_No; "No.") { }
            column(CompanyPicture; CompanyInfo.Picture) { }
            column(InvoiceSpec_Lbl; InvoiceSpec_Lbl) { }
            column(InvoiceNo_Lbl; InvoiceNo_Lbl) { }
            column(Page_Lbl; Page_Lbl) { }
            // <PV>
            column(SpecOfInvTxt; SpecOfInvTxt) { }
            column(YourRef_Lbl; YourRef_Lbl) { }
            column(YourRef; Project."NCX Client Reference") { }
            column(PVRef_Lbl; PVRef_Lbl) { }
            column(PVRef; Project."No.") { }
            column(Subtotal_Lbl; Subtotal_Lbl) { }
            column(Subtotal_Before_Disc_Lbl; Subtotal_Before_Disc_Lbl) { }
            column(Subtotal_After_Disc_Lbl; Subtotal_After_Disc_Lbl) { }
            column(Total_Lbl; Total_Lbl) { }
            column(Total_Before_Disc_Lbl; Total_Before_Disc_Lbl) { }
            column(Total_After_Disc_Lbl; Total_After_Disc_Lbl) { }
            column(TotalActCurrTxt; TotalActCurrTxt) { }
            #endregion

            dataitem(Line; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = where("No." = filter(<> ''), "APM Specification" = const(true));

                #region SalesInvoiceLine Columns
                column(SL_LineNo; "Line No.") { }
                column(SL_Description; Description) { }
                // <PV>
                column(SpecificationHeader; SpecificationHeader) { }
                #endregion

                dataitem(DetailedLine; "APM Posted Invoice Spec2")
                {
                    DataItemLink = "Document No." = field("Document No."), "Sales Line No." = field("Line No.");
                    DataItemTableView = sorting("Document Type", "Document No.", "Line No.") where("Document Type" = const("Document Type"::invoice));

                    #region DetailedLine Columns
                    column(DSL_No; "No.") { }
                    column(DSL_No_Lbl; DSL_No_Lbl) { }
                    column(DSL_Date; "Date") { }
                    column(DSL_Date_Lbl; DSL_Date_Lbl) { }
                    column(DSL_Quantity; Quantity) { }
                    column(DSL_Quantity_Lbl; DSL_Quantity_Lbl) { }
                    column(DSL_UnitPrice; "Unit Price") { }
                    column(DSL_UnitPrice_Lbl; DSL_UnitPrice_Lbl) { }
                    column(DSL_Description; Getdescription()) { }
                    column(DSL_Description_Lbl; DSL_Description_Lbl) { }
                    column(DSL_LineDiscountAmount; "Line Discount Amount") { }
                    column(DSL_LineDiscountAmount_Lbl; DSL_LineDiscountAmount_Lbl) { }
                    column(DSL_Amount; Amount) { }
                    column(DSL_Amount_Lbl; DSL_Amount_Lbl) { }
                    // <PV>
                    column(StarMark; StarMark) { }
                    column(ResourceNo; ResourceNo) { }
                    #endregion

                    trigger OnAfterGetRecord()
                    begin
                        // <PV>
                        Clear(ResourceNo);
                        if Type = Type::Resource then
                            ResourceNo := "No.";
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    DetSalesLine: Record "APM Posted Detailed Sales Line";
                    SalesLineBufTmp: Record "APM SalesLineBuf" temporary;
                    InvoiceTxtMgt: Codeunit "APM Invoice Text Management";
                begin
                    // <PV>
                    Clear(StarMark);
                    if (Amount = "Amount Including VAT") and ("No." <> '') then
                        StarMark := '*';

                    Clear(SpecificationHeader);
                    Clear(DetSalesLine);
                    DetSalesLine.SetRange("Document Type", DetSalesLine."Document Type"::Invoice);
                    DetSalesLine.SetRange("Document No.", "Document No.");
                    DetSalesLine.SetRange("Sales Line No.", "Line No.");
                    if DetSalesLine.FindSet(false) then begin
                        Clear(SalesLineBufTmp);
                        SalesLineBufTmp.DeleteAll();
                        repeat
                            SalesLineBufTmp.Init();
                            SalesLineBufTmp."Document Type" := SalesLineBufTmp."Document Type"::Invoice;
                            SalesLineBufTmp."Document No." := "Document No.";
                            SalesLineBufTmp."Line No." := DetSalesLine."Line No.";
                            SalesLineBufTmp.Description := CopyStr(DetSalesLine.Getdescription(), 1, MaxStrLen(SalesLineBufTmp.Description));
                            SalesLineBufTmp."Unit Price" := DetSalesLine."Unit Price";
                            SalesLineBufTmp."Gen. Prod. Posting Group" := DetSalesLine."Gen. Prod. Posting Group";
                            SalesLineBufTmp."VAT Prod. Posting Group" := DetSalesLine."VAT Prod. Posting Group";
                            SalesLineBufTmp."APM Project No." := DetSalesLine."Project No.";
                            SalesLineBufTmp."APM Activity No." := DetSalesLine."Activity No.";
                            SalesLineBufTmp."APM Project Entry No." := DetSalesLine."Project Entry No.";
                            SalesLineBufTmp."APM Type" := DetSalesLine.Type.AsInteger();
                            SalesLineBufTmp."APM No." := DetSalesLine."No.";
                            SalesLineBufTmp."APM Task No." := DetSalesLine."Task No.";
                            SalesLineBufTmp."APM Work type" := DetSalesLine."Work type";
                            SalesLineBufTmp.Insert();
                        until DetSalesLine.Next() = 0;
                        SpecificationHeader := InvoiceTxtMgt.GetInvoiceSpecHdr(SalesHeadTmp, SalesLineBufTmp);
                    end;
                end;
            }

            trigger OnAfterGetRecord()  //SalesHeader
            var
                SalesInvoiceLine: Record "Sales Invoice Line";
                PVFunc: Codeunit "NCX PV Functions";
                ActCurrCode: Code[10];
            begin
                //if no lines to print then skip printing
                SalesInvoiceLine.reset;
                SalesInvoiceLine.setrange("Document No.", "No.");
                SalesInvoiceLine.SetRange("APM Specification", true);
                if SalesInvoiceLine.IsEmpty then CurrReport.Skip();

                // <PV>
                PVFunc.CopyCompanyInfoFromCpmCompany(CompanyInfo, "NCX_CI CPM Company");
                if Project.Get("APM Project No.") then;

                SpecOfInvTxt := StrSubstNo(SpecOfInv_Lbl, "No.");

                if "Currency Code" = '' then begin
                    GLSetup.Get();
                    ActCurrCode := GLSetup."LCY Code";
                end else
                    ActCurrCode := "Currency Code";
                TotalActCurrTxt := StrSubstNo(Total_Act_Curr_Lbl, ActCurrCode);

                Clear(SalesHeadTmp);
                SalesHeadTmp.DeleteAll();
                SalesHeadTmp.Init();
                SalesHeadTmp.TransferFields(Header);
                SalesHeadTmp."Document Type" := SalesHeadTmp."Document Type"::Invoice;
                SalesHeadTmp.Insert();
            end;
        }
    }
    trigger OnInitReport()
    begin
        CompanyInfo.SetAutoCalcFields(Picture);
        CompanyInfo.Get();
    end;

    var
        CompanyInfo: Record "Company Information";
        InvoiceSpec_Lbl: Label 'Invoice Specification';
        InvoiceNo_Lbl: Label 'Invoice No.';
        Page_Lbl: label 'Page';
        DSL_No_Lbl: label 'Resource';
        DSL_Date_Lbl: label 'Date';
        DSL_Quantity_Lbl: label 'Quantity';
        DSL_UnitPrice_Lbl: label 'Price';
        DSL_Description_Lbl: label 'Description';
        DSL_LineDiscountAmount_Lbl: label 'Discount';
        DSL_Amount_Lbl: label 'Total';
        Project: Record "APM Project";
        GLSetup: Record "General Ledger Setup";
        SalesHeadTmp: Record "Sales Header" temporary;
        Subtotal_Lbl: Label 'Subtotal';
        Subtotal_Before_Disc_Lbl: Label 'Subtotal before discount';
        Subtotal_After_Disc_Lbl: Label 'Subtotal after discount';
        Total_Lbl: Label 'Total';
        Total_Before_Disc_Lbl: Label 'Total before discount';
        Total_After_Disc_Lbl: Label 'Total after discount';
        Total_Act_Curr_Lbl: Label 'Total Invoice %1';
        SpecOfInv_Lbl: Label 'Specification of invoice No. %1';
        YourRef_Lbl: Label 'Your Ref.:';
        PVRef_Lbl: Label 'PV Ref.:';
        SpecOfInvTxt, TotalActCurrTxt, SpecificationHeader, StarMark : Text;
        ResourceNo: Code[20];
}
