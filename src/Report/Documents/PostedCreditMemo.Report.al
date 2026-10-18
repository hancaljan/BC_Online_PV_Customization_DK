report 53107 "NCX_DK PV Posted Credit Memo"
{
    Caption = 'PV - Posted Credit Memo';
    DefaultLayout = RDLC;
    RDLCLayout = './src/Report/Documents/rdl/PostedCreditMemo.rdl';

    dataset
    {
        dataitem(Header; "Sales Cr.Memo Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Credit Memo';

            #region SalesHeader Columns
            column(CompanyAddress1; CompanyAddr[1]) { }
            column(CompanyAddress2; CompanyAddr[2]) { }
            column(CompanyAddress3; CompanyAddr[3]) { }
            column(CompanyAddress4; CompanyAddr[4]) { }
            column(CompanyAddress5; CompanyAddr[5]) { }
            column(CompanyAddress6; CompanyAddr[6]) { }
            column(CompanyAddress7; CompanyAddr[7]) { }
            column(CompanyAddress8; CompanyAddr[8]) { }
            column(CompanyHomePage; CompanyInfo."Home Page") { }
            column(CompanyEMail; CompanyInfo."E-Mail") { }
            column(CompanyPicture; DummyCompanyInfo.Picture) { }
            column(CompanyPhoneNo; CompanyInfo."Phone No.") { }
            column(CompanyPhoneNo_Lbl; CompanyInfoPhoneNoLbl) { }
            column(CompanyGiroNo; CompanyInfo."Giro No.") { }
            column(CompanyGiroNo_Lbl; CompanyInfoGiroNoLbl) { }
            column(CompanyBankName; CompanyBankAccount.Name) { }
            column(CompanyBankName_Lbl; CompanyInfoBankNameLbl) { }
            column(CompanyBankBranchNo; CompanyBankAccount."Bank Branch No.") { }
            column(CompanyBankBranchNo_Lbl; CompanyBankAccount.FieldCaption("Bank Branch No.")) { }
            column(CompanyBankAccountNo; CompanyBankAccount."Bank Account No.") { }
            column(CompanyBankAccountNo_Lbl; CompanyInfoBankAccNoLbl) { }
            column(CompanyIBAN; CompanyBankAccount.IBAN) { }
            column(CompanyIBAN_Lbl; CompanyBankAccount.FieldCaption(IBAN)) { }
            column(CompanySWIFT; CompanyBankAccount."SWIFT Code") { }
            column(CompanySWIFT_Lbl; CompanyBankAccount.FieldCaption("SWIFT Code")) { }
            column(CompanyLogoPosition; CompanyLogoPosition) { }
            column(CompanyRegistrationNumber; CompanyInfo.GetRegistrationNumber()) { }
            column(CompanyRegistrationNumber_Lbl; CompanyInfo.GetRegistrationNumberLbl()) { }
            column(CompanyVATRegNo; CompanyInfo.GetVATRegistrationNumber()) { }
            column(CompanyVATRegNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl()) { }
            column(CompanyVATRegistrationNo; CompanyInfo.GetVATRegistrationNumber()) { }
            column(CompanyVATRegistrationNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl()) { }
            column(CompanyLegalOffice; LegalOfficeTxt) { }
            column(CompanyLegalOffice_Lbl; LegalOfficeLbl) { }
            column(CompanyCustomGiro; CustomGiroTxt) { }
            column(CompanyCustomGiro_Lbl; CustomGiroLbl) { }
            column(CompanyLegalStatement; LegalStatementLbl) { }
            column(CustomerAddress1; CustAddr[1]) { }
            column(CustomerAddress2; CustAddr[2]) { }
            column(CustomerAddress3; CustAddr[3]) { }
            column(CustomerAddress4; CustAddr[4]) { }
            column(CustomerAddress5; CustAddr[5]) { }
            column(CustomerAddress6; CustAddr[6]) { }
            column(CustomerAddress7; CustAddr[7]) { }
            column(CustomerAddress8; CustAddr[8]) { }
            column(SellToContactPhoneNoLbl; SellToContactPhoneNoLbl) { }
            column(SellToContactMobilePhoneNoLbl; SellToContactMobilePhoneNoLbl) { }
            column(SellToContactEmailLbl; SellToContactEmailLbl) { }
            column(BillToContactPhoneNoLbl; BillToContactPhoneNoLbl) { }
            column(BillToContactMobilePhoneNoLbl; BillToContactMobilePhoneNoLbl) { }
            column(BillToContactEmailLbl; BillToContactEmailLbl) { }
            column(SellToContactPhoneNo; SellToContact."Phone No.") { }
            column(SellToContactMobilePhoneNo; SellToContact."Mobile Phone No.") { }
            column(SellToContactEmail; SellToContact."E-Mail") { }
            column(BillToContactPhoneNo; BillToContact."Phone No.") { }
            column(BillToContactMobilePhoneNo; BillToContact."Mobile Phone No.") { }
            column(BillToContactEmail; BillToContact."E-Mail") { }
            column(CustomerPostalBarCode; FormatAddr.PostalBarCode(1)) { }
            column(YourReference; "Your Reference") { }
            column(YourReference__Lbl; FieldCaption("Your Reference")) { }
            column(ExternalDocumentNo; "External Document No.") { }
            column(ExternalDocumentNoLbl; FieldCaption("External Document No.")) { }
            column(ShipmentMethodDescription; ShipmentMethod.Description) { }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl) { }
            column(ShipmentDate; Format("Shipment Date", 0, 4)) { }
            column(ShipmentDate_Lbl; FieldCaption("Shipment Date")) { }
            column(Shipment_Lbl; ShipmentLbl) { }
            column(ShowShippingAddress; ShowShippingAddr) { }
            column(ShipToAddress_Lbl; ShiptoAddrLbl) { }
            column(ShipToAddress1; ShipToAddr[1]) { }
            column(ShipToAddress2; ShipToAddr[2]) { }
            column(ShipToAddress3; ShipToAddr[3]) { }
            column(ShipToAddress4; ShipToAddr[4]) { }
            column(ShipToAddress5; ShipToAddr[5]) { }
            column(ShipToAddress6; ShipToAddr[6]) { }
            column(ShipToAddress7; ShipToAddr[7]) { }
            column(ShipToAddress8; ShipToAddr[8]) { }
            column(ShipToPhoneNo; Header."Ship-to Phone No.") { }
            column(PaymentTermsDescription; PaymentTerms.Description) { }
            column(PaymentTermsDescription_Lbl; PaymentTermsDescLbl) { }
            column(PaymentMethodDescription; PaymentMethod.Description) { }
            column(PaymentMethodDescription_Lbl; PaymentMethodDescLbl) { }
            column(DocumentCopyText; StrSubstNo(DocumentCaption(), CopyText)) { }
            column(BilltoCustumerNo; "Bill-to Customer No.") { }
            column(BilltoCustomerNo_Lbl; FieldCaption("Bill-to Customer No.")) { }
            column(DocumentDate; Format("Document Date", 0, 4)) { }
            column(DocumentDate_Lbl; FieldCaption("Document Date")) { }
            column(DueDate; Format("Due Date", 0, 4)) { }
            column(DueDate_Lbl; FieldCaption("Due Date")) { }
            column(DocumentNo; "No.") { }
            column(DocumentNo_Lbl; InvNoLbl) { }
            column(AppliesToDocument; AppliesToText) { }
            column(AppliesToDocument_Lbl; AppliesToTextLbl) { }
            column(PricesIncludingVAT; "Prices Including VAT") { }
            column(PricesIncludingVAT_Lbl; FieldCaption("Prices Including VAT")) { }
            column(PricesIncludingVATYesNo; Format("Prices Including VAT")) { }
            column(SalesPerson_Lbl; SalespersonLbl) { }
            column(SalesPersonBlank_Lbl; SalesPersonText) { }
            column(SalesPersonName; SalespersonPurchaser.Name) { }
            column(SelltoCustomerNo; "Sell-to Customer No.") { }
            column(SelltoCustomerNo_Lbl; FieldCaption("Sell-to Customer No.")) { }
            column(VATRegistrationNo; GetCustomerVATRegistrationNumber()) { }
            column(VATRegistrationNo_Lbl; GetCustomerVATRegistrationNumberLbl()) { }
            column(LegalEntityType; Cust.GetLegalEntityType()) { }
            column(LegalEntityType_Lbl; Cust.GetLegalEntityTypeLbl()) { }
            column(Copy_Lbl; CopyLbl) { }
            column(EMail_Lbl; EMailLbl) { }
            column(HomePage_Header_Lbl; HomePageLbl) { }
            column(InvoiceDiscountBaseAmount_Lbl; InvDiscBaseAmtLbl) { }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl) { }
            column(LineAmountAfterInvoiceDiscount_Lbl; LineAmtAfterInvDiscLbl) { }
            column(LocalCurrency_Lbl; LocalCurrencyLbl) { }
            column(ExchangeRateASText; ExchangeRateText) { }
            column(Page_Lbl; PageLbl) { }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl) { }
            column(DocumentTitle_Lbl; SalesCreditMemoLbl) { }
            column(ShowWorkDescription; ShowWorkDescription) { }
            column(Subtotal_Lbl; SubtotalLbl) { }
            column(Total_Lbl; TotalLbl) { }
            column(VATAmount_Lbl; VATAmtLbl) { }
            column(VATBase_Lbl; VATBaseLbl) { }
            column(VATAmountSpecification_Lbl; VATAmtSpecificationLbl) { }
            column(VATClauses_Lbl; VATClausesLbl) { }
            column(VATIdentifier_Lbl; VATIdentifierLbl) { }
            column(VATPercentage_Lbl; VATPercentageLbl) { }
            column(VATClause_Lbl; VATClause.TableCaption()) { }
            column(APM_TopTextBlob; APM_GetTopText) { }
            column(APM_ProjectNo_Lbl; header.FieldCaption("APM Project No.")) { }
            column(APM_ProjectNo; Header."APM Project No.") { }
            column(APM_ProjectName_Lbl; ProjectName_Lbl) { }
            column(APM_ProjectName; APMProject.Name) { }
            column(APM_ProjectDescription_lbl; ProjectDescription_lbl) { }
            column(APM_ProjectDescription; APMProject.Description) { }
            column(APM_ProjectManager_lbl; apmproject.FieldCaption("Project Manager")) { }
            column(APM_ProjectManager; resource.Name) { }
            column(APM_Amount_Lbl; Amount_Lbl) { }
            column(APM_UnitPrice_Lbl; UnitPrice_Lbl) { }
            column(APM_CustomerNoLbl; APM_CustomerNoLbl) { }
            column(Header_GLN_lbl; OIOUBLGLN_Caption) { }
            column(Header_GLN; OIOUBLGLN_Value) { }
            column(FaxNo_Lbl; FaxNo_Lbl) { }
            column(CompanyInfo_FaxNo; CompanyInfo."Fax No.") { }
            column(Date_Lbl; Date_Lbl) { }
            column(HeaderRegTxt; HeaderRegTxt) { }
            column(HeaderRegTxt2; HeaderRegTxt2) { }
            column(ClientRefTxt; ClientRefTxt) { }
            column(YourVatRegNo_Lbl; YourVatRegNo_Lbl) { }
            column(CustVatRegNo; CustVatRegNo) { }
            column(PVRef_Lbl; PVRef_Lbl) { }
            column(TotalTxt1; TotalTxt1) { }
            column(TotalTxt2; TotalTxt2) { }
            column(TotalTxt3; TotalTxt3) { }
            column(DateOfCompletionTxt; DateOfCompletionTxt) { }
            column(PaymentTerms_Lbl; PaymentTerms_Lbl) { }
            column(PaymentTermsTxt1; PaymentTermsTxt1) { }
            column(PaymentTermsTxt2; PaymentTermsTxt2) { }
            column(PaymentTermsTxt3; PaymentTermsTxt3) { }
            column(PaymentAccount_Lbl; PaymentAccount_Lbl) { }
            column(PaymentAccountTxt1; PaymentAccountTxt1) { }
            column(PaymentAccountTxt2; PaymentAccountTxt2) { }
            column(VatRegNo_Lbl; VatRegNo_Lbl) { }
            column(DiscountAmt; DiscountAmt) { }
            #endregion

            dataitem(Line; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = Header;
                DataItemTableView = sorting("Document No.", "Line No.");

                #region SalesLine Columns
                column(LineNo_Line; "Line No.") { }
                column(AmountExcludingVAT_Line; Amount)
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FieldCaption(Amount)) { }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(Description_Line; Description) { }
                column(Description_Line_Lbl; FieldCaption(Description)) { }
                column(LineDiscountPercent_Line; "Line Discount %") { }
                column(LineDiscountPercentText_Line; LineDiscountPctText) { }
                column(LineAmount_Line; FormattedLineAmount)
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(LineAmount_Line_Lbl; FieldCaption("Line Amount")) { }
                column(ItemNo_Line; "No.") { }
                column(ItemNo_Line_Lbl; FieldCaption("No.")) { }
                column(ItemReferenceNo_Line; "Item Reference No.") { }
                column(ItemReferenceNo_Line_Lbl; FieldCaption("Item Reference No.")) { }
                column(ShipmentDate_Line; Format("Shipment Date")) { }
                column(ShipmentDate_Line_Lbl; PostedShipmentDateLbl) { }
                column(Quantity_Line; FormattedQuantity) { }
                column(Quantity_Line_Lbl; FieldCaption(Quantity)) { }
                column(Type_Line; Format(Type)) { }
                column(UnitPrice; FormattedUnitPrice)
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 2;
                }
                column(UnitPrice_Lbl; FieldCaption("Unit Price")) { }
                column(UnitOfMeasure; "Unit of Measure") { }
                column(UnitOfMeasure_Lbl; FieldCaption("Unit of Measure")) { }
                column(VATIdentifier_Line; "VAT Identifier") { }
                column(VATIdentifier_Line_Lbl; FieldCaption("VAT Identifier")) { }
                column(VATPct_Line; FormattedVATPct) { }
                column(VATPct_Line_Lbl; FieldCaption("VAT %")) { }
                column(TransHeaderAmount; TransHeaderAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(Line_Discount_Amount; "Line Discount Amount") { }
                column(Line_Discount_Amount_Lbl; FieldCaption("Line Discount Amount")) { }
                column(OriginalAmount_Lbl; OriginalAmount_Lbl) { }
                #endregion

                dataitem(ShipmentLine; "Sales Shipment Buffer")
                {
                    DataItemTableView = sorting("Document No.", "Line No.", "Entry No.");
                    UseTemporary = true;

                    #region ShipmentLine Columns
                    column(DocumentNo_ShipmentLine; "Document No.") { }
                    column(PostingDate_ShipmentLine; Format("Posting Date")) { }
                    column(PostingDate_ShipmentLine_Lbl; FieldCaption("Posting Date")) { }
                    column(Quantity_ShipmentLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(Quantity_ShipmentLine_Lbl; FieldCaption(Quantity)) { }
                    #endregion

                    trigger OnPreDataItem()
                    begin
                        if not DisplayShipmentInformation then
                            CurrReport.Break();

                        SetRange("Line No.", Line."Line No.");
                    end;
                }
                dataitem(AssemblyLine; "Posted Assembly Line")
                {
                    DataItemTableView = sorting("Document No.", "Line No.");
                    UseTemporary = true;

                    #region AssemblyLine Columns
                    column(LineNo_AssemblyLine; "No.") { }
                    column(Description_AssemblyLine; Description) { }
                    column(Quantity_AssemblyLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(UnitOfMeasure_AssemblyLine; GetUOMText("Unit of Measure Code")) { }
                    column(VariantCode_AssemblyLine; "Variant Code") { }
                    #endregion

                    trigger OnPreDataItem()
                    var
                        ValueEntry: Record "Value Entry";
                    begin
                        Clear(AssemblyLine);
                        if not DisplayAssemblyInformation then
                            CurrReport.Break();
                        GetAssemblyLinesForDocument(
                          AssemblyLine, ValueEntry."Document Type"::"Sales Credit Memo", Line."Document No.", Line."Line No.");
                    end;
                }

                trigger OnPreDataItem()
                begin
                    VATAmountLine.DeleteAll();
                    VATClauseLine.DeleteAll();
                    ShipmentLine.Reset();
                    ShipmentLine.DeleteAll();
                    MoreLines := Find('+');
                    while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                        MoreLines := Next(-1) <> 0;
                    if not MoreLines then
                        CurrReport.Break();
                    SetFilter("Line No.", '<=%1', "Line No.");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := false;
                    DummyCompanyInfo.Picture := CompanyInfo.Picture;
                end;

                trigger OnAfterGetRecord()
                begin
                    InitializeSalesShipmentLine();
                    if Type = Type::"G/L Account" then
                        "No." := '';

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := StrSubstNo('%1%', -Round("Line Discount %", 0.1));

                    InsertVATAmountLine(VATAmountLine, Line);

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                    FormatLineValues(Line);

                    if FormatDocument.HideDocumentLine(HideLinesWithZeroQuantity, Line, FieldNo(Quantity)) then
                        CurrReport.Skip();
                    if FirstLineHasBeenOutput then
                        Clear(DummyCompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = filter(1 .. 99999));

                #region WorkDescriptionLines Columns
                column(WorkDescriptionLineNumber; Number) { }
                column(WorkDescriptionLine; WorkDescriptionLine) { }
                #endregion

                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then
                        CurrReport.Break();
                    Header."Work Description".CreateInStream(WorkDescriptionInstream, TEXTENCODING::UTF8);
                end;

                trigger OnAfterGetRecord()
                var
                    TypeHelper: Codeunit "Type Helper";
                begin
                    if WorkDescriptionInstream.EOS then
                        CurrReport.Break();
                    WorkDescriptionLine := TypeHelper.ReadAsTextWithSeparator(WorkDescriptionInstream, TypeHelper.LFSeparator());
                    if WorkDescriptionLine = '' then
                        CurrReport.Break();
                end;

                trigger OnPostDataItem()
                begin
                    Clear(WorkDescriptionInstream)
                end;
            }
            dataitem(VATAmountLine; "VAT Amount Line")
            {
                DataItemTableView = sorting("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;

                #region VATAmountLine Columns
                column(InvoiceDiscountAmount_VATAmountLine; "Invoice Discount Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountAmount_VATAmountLine_Lbl; FieldCaption("Invoice Discount Amount")) { }
                column(InvoiceDiscountBaseAmount_VATAmountLine; "Inv. Disc. Base Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine_Lbl; FieldCaption("Inv. Disc. Base Amount")) { }
                column(LineAmount_VatAmountLine; "Line Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_VatAmountLine_Lbl; FieldCaption("Line Amount")) { }
                column(VATAmount_VatAmountLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmount_VatAmountLine_Lbl; FieldCaption("VAT Amount")) { }
                column(VATAmountLCY_VATAmountLine; VATAmountLCY) { }
                column(VATAmountLCY_VATAmountLine_Lbl; VATAmountLCYLbl) { }
                column(VATBase_VatAmountLine; "VAT Base")
                {
                    AutoFormatExpression = Line.GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(VATBase_VatAmountLine_Lbl; FieldCaption("VAT Base")) { }
                column(VATBaseLCY_VATAmountLine; VATBaseLCY) { }
                column(VATBaseLCY_VATAmountLine_Lbl; VATBaseLCYLbl) { }
                column(VATIdentifier_VatAmountLine; "VAT Identifier") { }
                column(VATIdentifier_VatAmountLine_Lbl; FieldCaption("VAT Identifier")) { }
                column(VATPct_VatAmountLine; "VAT %")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(VATPct_VatAmountLine_Lbl; FieldCaption("VAT %")) { }
                column(NoOfVATIdentifiers; Count) { }
                #endregion

                trigger OnPreDataItem()
                begin
                    Clear(VATBaseLCY);
                    Clear(VATAmountLCY);

                    TotalVATBaseLCY := 0;
                    TotalVATAmountLCY := 0;
                end;

                trigger OnAfterGetRecord()
                begin
                    VATBaseLCY :=
                      GetBaseLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");
                    VATAmountLCY :=
                      GetAmountLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");

                    TotalVATBaseLCY += VATBaseLCY;
                    TotalVATAmountLCY += VATAmountLCY;

                    if "VAT Clause Code" <> '' then begin
                        VATClauseLine := VATAmountLine;
                        if VATClauseLine.Insert() then;
                    end;
                end;
            }
            dataitem(VATClauseLine; "VAT Amount Line")
            {
                DataItemTableView = sorting("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;

                #region VATClauseLine Columns
                column(VATIdentifier_VATClauseLine; "VAT Identifier") { }
                column(Code_VATClauseLine; VATClause.Code) { }
                column(Code_VATClauseLine_Lbl; VATClause.FieldCaption(Code)) { }
                column(Description_VATClauseLine; VATClauseText) { }
                column(Description2_VATClauseLine; VATClause."Description 2") { }
                column(VATAmount_VATClauseLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(NoOfVATClauses; Count) { }
                #endregion

                trigger OnAfterGetRecord()
                begin
                    if "VAT Clause Code" = '' then
                        CurrReport.Skip();
                    if not VATClause.Get("VAT Clause Code") then
                        CurrReport.Skip();
                    VATClauseText := VATClause.GetDescriptionText(Header);
                end;
            }
            dataitem(ReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = sorting("Line No.");
                UseTemporary = true;

                #region ReportTotalsLine Columns
                column(Description_ReportTotalsLine; Description) { }
                column(Amount_ReportTotalsLine; Amount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted") { }
                column(FontBold_ReportTotalsLine; "Font Bold") { }
                column(FontUnderline_ReportTotalsLine; "Font Underline") { }
                #endregion

                trigger OnPreDataItem()
                begin
                    CreateReportTotalLines();
                end;
            }
            dataitem(LetterText; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));

                #region LetterText Columns
                column(GreetingText; GreetingLbl) { }
                column(BodyText; BodyLbl) { }
                column(ClosingText; ClosingLbl) { }
                #endregion
            }
            dataitem(Totals; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));

                #region Totals Columns
                column(TotalNetAmount; Format(TotalAmount, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalVATBaseLCY; TotalVATBaseLCY) { }
                column(TotalAmountIncludingVAT; Format(TotalAmountInclVAT, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalVATAmount; Format(TotalAmountVAT, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalVATAmountLCY; TotalVATAmountLCY) { }
                column(TotalInvoiceDiscountAmount; Format(TotalInvDiscAmount, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalPaymentDiscountOnVAT; TotalPaymentDiscOnVAT) { }
                column(TotalVATAmountText; VATAmountLine.VATAmountText()) { }
                column(TotalExcludingVATText; TotalExclVATText) { }
                column(TotalIncludingVATText; TotalInclVATText) { }
                column(TotalSubTotal; Format(TotalSubTotal, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalSubTotalMinusInvoiceDiscount; Format(TotalSubTotal + TotalInvDiscAmount, 0, AutoFormat.ResolveAutoFormat(Enum::"Auto Format"::AmountFormat, Header."Currency Code"))) { }
                column(TotalText; TotalText) { }
                column(CurrencyCode; CurrCode) { }
                column(CurrencySymbol; CurrSymbol) { }
                #endregion
            }

            trigger OnPreDataItem()
            begin
                FirstLineHasBeenOutput := false;
            end;

            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                Currency: Record Currency;
                GeneralLedgerSetup: Record "General Ledger Setup";
                PVFunc: Codeunit "NCX PV Functions";
                Project: Record "APM Project";
                Language: Record Language;
                RegardingTxt: Record "NCX Regarding Text";
                Customer: Record Customer;
                PayTerm: Record "Payment Terms";
                FinChargeTerm: Record "Finance Charge Terms";
                BankAcc: Record "Bank Account";
                SalesCrMemoLine: Record "Sales Cr.Memo Line";
                ActCurrCode: Code[10];
            begin
                if not IsReportInPreviewMode() then
                    CODEUNIT.Run(CODEUNIT::"Sales Cr. Memo-Printed", Header);

                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue;
                CurrReport.Language := LanguageMgt.GetLanguageIdOrDefault("Language Code");
                CurrReport.FormatRegion := LanguageMgt.GetFormatRegionOrDefault("Format Region");
                FormatAddr.SetLanguageCode("Language Code");

                // <PV>
                PVFunc.CopyCompanyInfoFromCpmCompany(CompanyInfo, "NCX_CI CPM Company");
                if Project.Get("APM Project No.") then;

                Clear(HeaderRegTxt);
                Clear(HeaderRegTxt2);
                if Language.Get("Language Code") and RegardingTxt.Get(Language."NCX Patricia Language ID", Project."NCX Case ID") then
                    HeaderRegTxt := RegardingTxt."Regarding Text"
                else
                    HeaderRegTxt := Project."NCX Catchword";
                HeaderRegTxt2 := Project.Name;
                if HeaderRegTxt = HeaderRegTxt2 then
                    Clear(HeaderRegTxt2);

                Clear(ClientRefTxt);
                if "NCX Client Reference" <> '' then
                    ClientRefTxt := "NCX Client Reference"
                else
                    ClientRefTxt := Project."NCX Client Reference";

                Clear(CustVatRegNo);
                if Customer.Get("Bill-to Customer No.") then
                    CustVatRegNo := Customer."VAT Registration No.";

                if "Currency Code" = '' then begin
                    GLSetup.Get();
                    ActCurrCode := GLSetup."LCY Code";
                end else
                    ActCurrCode := "Currency Code";
                Clear(VATPct);
                CalcFields(Amount, "Amount Including VAT");
                if (Amount <> 0) and ("Amount Including VAT" <> 0) then
                    VATPct := Round(("Amount Including VAT" / Amount - 1) * 100, 0.01);
                TotalTxt1 := StrSubstNo(TotalTxt1_Lbl, ActCurrCode);
                TotalTxt2 := StrsubstNo(TotalTxt2_Lbl, VATPct);
                TotalTxt3 := StrSubstNo(TotalTxt3_Lbl, ActCurrCode);

                DateOfCompletionTxt := StrSubstNo(DateOfCompletion_Lbl, GetDateOfCompletion());

                Clear(PayTerm);
                if PayTerm.Get("Payment Terms Code") then
                    PayTerm.TranslateDescription(PayTerm, "Language Code");
                PaymentTermsTxt1 := PayTerm.Description + ' - ' + StrSubstNo(PaymentTerms1, "No.");
                Clear(PaymentTermsTxt2);
                if FinChargeTerm.Get(Customer."Fin. Charge Terms Code") then
                    PaymentTermsTxt2 := StrSubstNo(PaymentTerms2, FinChargeTerm."Interest Rate");

                if BankAcc.Get(Customer."NCX Payment Account Code") then begin
                    PaymentAccountTxt1 := StrSubstNo(PaymentAccount1, BankAcc.Name, BankAcc."Bank Branch No.", "Currency Code", BankAcc."Bank Account No.");
                    PaymentAccountTxt2 := StrSubstNo(PaymentAccount2, BankAcc."SWIFT Code", BankAcc.IBAN)
                end else begin
                    PaymentAccountTxt1 := StrSubstNo(PaymentAccount1, CompanyInfo."Bank Name", CompanyInfo."Bank Branch No.", "Currency Code", CompanyInfo."Bank Account No.");
                    PaymentAccountTxt2 := StrSubstNo(PaymentAccount2, CompanyInfo."SWIFT Code", CompanyInfo.IBAN);
                end;

                Clear(DiscountAmt);
                SalesCrMemoLine.SetRange("Document No.", "No.");
                if SalesCrMemoLine.FindSet(false) then begin
                    SalesCrMemoLine.CalcSums("Line Discount Amount");
                    DiscountAmt := SalesCrMemoLine."Line Discount Amount";
                end;
                // </PV>

                FormatAddressFields(Header);
                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);

                if not CompanyBankAccount.Get(Header."Company Bank Account Code") then
                    CompanyBankAccount.CopyBankFieldsFromCompanyInfo(CompanyInfo);

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      Round(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := StrSubstNo(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                    CurrCode := "Currency Code";
                    if Currency.Get("Currency Code") then
                        CurrSymbol := Currency.GetCurrencySymbol();
                end else
                    if GeneralLedgerSetup.Get() then begin
                        CurrCode := GeneralLedgerSetup."LCY Code";
                        CurrSymbol := GeneralLedgerSetup.GetCurrencySymbol();
                    end;

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;

                if APMProject.get(Header."APM Project No.") then begin
                    clear(resource);
                    if resource.get(apmproject."Project Manager") then;
                end;

                OIOUBLGLN_Value := '';
                OIOUBLGLN_Caption := '';
                RecField.Reset();
                RecField.SetRange(TableNo, database::"Sales Cr.Memo Header");
                RecField.SetRange(FieldName, 'OIOUBL-GLN');
                if RecField.FindFirst() then begin
                    RecRef.GetTable(header);
                    FldRef := RecRef.Field(RecField."No.");
                    OIOUBLGLN_Value := FldRef.Value;
                    if OIOUBLGLN_Value <> '' then
                        OIOUBLGLN_Caption := FldRef.Caption;
                end;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
                    }
                    field(DisplayShipmentInformation; DisplayShipmentInformation)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Shipments';
                        ToolTip = 'Specifies that shipments are shown on the document.';
                    }
                    field(HideLinesWithZeroQuantityControl; HideLinesWithZeroQuantity)
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies if the lines with zero quantity are printed.';
                        Caption = 'Hide lines with zero quantity';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            InitLogInteraction();
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.Get();
        CompanyInfo.SetAutoCalcFields(Picture);
        CompanyInfo.Get();
        SalesSetup.Get();
        CompanyInfo.VerifyAndSetPaymentInfo();

        if SalesSetup.GetLegalStatement() <> '' then
            LegalStatementLbl := SalesSetup.GetLegalStatement();
    end;

    trigger OnPreReport()
    begin
        if Header.GetFilters = '' then
            Error(NoFilterSetErr);

        CompanyLogoPosition := SalesSetup."Logo Position on Documents";
    end;

    trigger OnPostReport()
    begin
        if LogInteraction and not IsReportInPreviewMode() then
            if Header.FindSet() then
                repeat
                    if Header."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Contact, Header."Bill-to Contact No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Customer, Header."Bill-to Customer No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '');
                until Header.Next() = 0;
    end;

    var
        GLSetup: Record "General Ledger Setup";
        PaymentMethod: Record "Payment Method";
        DummyCompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        LanguageMgt: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        AutoFormat: Codeunit "Auto Format";
        WorkDescriptionInstream: InStream;
        WorkDescriptionLine: Text;
        MoreLines: Boolean;
        CopyText: Text[30];
        ShowWorkDescription: Boolean;
        LogInteraction: Boolean;
        TransHeaderAmount: Decimal;
        LogInteractionEnable: Boolean;
        CompanyLogoPosition: Integer;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        PrevLineAmount: Decimal;
        AppliesToText: Text;
        CurrCode: Text[10];
        CurrSymbol: Text[10];
        SalesCreditMemoNoLbl: Label 'Sales - Credit Memo %1';
        SalespersonLbl: Label 'Sales person';
        CompanyInfoBankAccNoLbl: Label 'Account No.';
        CompanyInfoBankNameLbl: Label 'Bank';
        CompanyInfoGiroNoLbl: Label 'Giro No.';
        CompanyInfoPhoneNoLbl: Label 'P';
        CopyLbl: Label 'Copy';
        EMailLbl: Label 'E';
        HomePageLbl: Label 'Home Page';
        InvDiscBaseAmtLbl: Label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: Label 'Invoice Discount';
        InvNoLbl: Label 'Credit Memo No.';
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        SalesCreditMemoLbl: Label 'Credit Memo';
        ShipmentLbl: Label 'Shipment';
        ShiptoAddrLbl: Label 'Ship-to Address';
        ShptMethodDescLbl: Label 'Shipment Method';
        SubtotalLbl: Label 'Subtotal';
        TotalLbl: Label 'Total';
        VATAmtSpecificationLbl: Label 'VAT Amount Specification';
        VATAmountLCYLbl: Label 'VAT Amount (LCY)';
        VATBaseLbl: Label 'VAT Base';
        VATBaseLCYLbl: Label 'VAT Base (LCY)';
        VATClausesLbl: Label 'VAT Clause';
        VATIdentifierLbl: Label 'VAT Identifier';
        VATPercentageLbl: Label 'VAT %';
        SellToContactPhoneNoLbl: Label 'Sell-to Contact Phone No.';
        SellToContactMobilePhoneNoLbl: Label 'Sell-to Contact Mobile Phone No.';
        SellToContactEmailLbl: Label 'Sell-to Contact E-Mail';
        BillToContactPhoneNoLbl: Label 'Bill-to Contact Phone No.';
        BillToContactMobilePhoneNoLbl: Label 'Bill-to Contact Mobile Phone No.';
        BillToContactEmailLbl: Label 'Bill-to Contact E-Mail';
        SalesPrepCreditMemoNoLbl: Label 'Sales - Prepmt. Credit Memo %1';
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment = '%1 and %2 are both amounts.';
        AppliesToTextLbl: Label 'Applies to Document';
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidentally printing all documents.';
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        BodyLbl: Label 'Thank you for your business. Your credit memo is attached to this message.';
        LCYTxt: label ' (LCY)';
        VATClauseText: Text;
        LegalOfficeTxt, LegalOfficeLbl, CustomGiroTxt, CustomGiroLbl, LegalStatementLbl : Text;
        CompanyInfo: Record "Company Information";
        CompanyBankAccount: Record "Bank Account";
        PaymentTerms: Record "Payment Terms";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        ShipmentMethod: Record "Shipment Method";
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        VATClause: Record "VAT Clause";
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        FormattedLineAmount: Text;
        FormattedQuantity: Text;
        FormattedUnitPrice: Text;
        FormattedVATPct: Text;
        LineDiscountPctText: Text;
        SalesPersonText: Text[50];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalSubTotal: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        DisplayAssemblyInformation: Boolean;
        DisplayShipmentInformation: Boolean;
        FirstLineHasBeenOutput: Boolean;
        ShowShippingAddr: Boolean;
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        VATAmtLbl: Label 'VAT Amount';
        HideLinesWithZeroQuantity: Boolean;
        APMProject: Record "APM Project";
        Resource: record Resource;
        ProjectName_lbl: Label 'Project Name';
        ProjectDescription_lbl: Label 'Project Description';
        Amount_Lbl: Label 'Amount';
        UnitPrice_Lbl: Label 'Unit Price';
        APM_CustomerNoLbl: Label 'Customer No.';
        RecField: Record Field;
        FldRef: FieldRef;
        RecRef: RecordRef;
        OIOUBLGLN_Value: Code[20];
        OIOUBLGLN_Caption: Text[50];
        // <PV>
        FaxNo_Lbl: Label 'F';
        Date_Lbl: Label 'Date';
        YourVatRegNo_Lbl: Label 'Your VAT No.';
        PVRef_Lbl: Label 'PV Ref.';
        OriginalAmount_Lbl: Label 'Original Amount';
        TotalTxt1_Lbl: Label 'Total %1';
        TotalTxt2_Lbl: Label 'VAT';
        TotalTxt3_Lbl: Label 'Total %1 Incl. VAT';
        DateOfCompletion_Lbl: Label 'Date of completion of credited service: %1';
        PaymentTerms_Lbl: Label 'Payment Terms';
        PaymentTerms1: Label 'Please quote Credit Memo No. %1 with remittance.';
        PaymentTerms2: Label 'We reserve the right to charge an additional fee for reminders. Interest will be charged at %1 % per annum after due date until payment has been made.';
        PaymentTermsTxt3: Label 'Please observe our Business Terms at www.pv.eu';
        PaymentAccount_Lbl: Label 'Payment Account';
        PaymentAccount1: Label '%1 Reg. %2 %3 Account No. %4';
        PaymentAccount2: Label 'SWIFT/BIC: %1, IBAN: %2';
        VatRegNo_Lbl: Label 'VAT Reg. No.';

        HeaderRegTxt, HeaderRegTxt2, ClientRefTxt, CustVatRegNo, TotalTxt1, TotalTxt2, TotalTxt3, DateOfCompletionTxt, PaymentTermsTxt1, PaymentTermsTxt2, PaymentAccountTxt1, PaymentAccountTxt2 : Text;
        VATPct, DiscountAmt : Decimal;

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractionTemplateCode(Enum::"Interaction Log Entry Document Type"::"Sales Cr. Memo") <> '';
    end;

    local procedure InitializeSalesShipmentLine()
    var
        ReturnReceiptHeader: Record "Return Receipt Header";
    begin
        if not DisplayShipmentInformation then
            exit;

        if Line."Return Receipt No." <> '' then
            if ReturnReceiptHeader.Get(Line."Return Receipt No.") then
                exit;
        if Header."Return Order No." = '' then
            exit;
        if Line.Type = Line.Type::" " then
            exit;

        ShipmentLine.GetLinesForSalesCreditMemoLine(Line, Header);

        ShipmentLine.Reset();
        ShipmentLine.SetRange("Line No.", Line."Line No.");
        if not ShipmentLine.IsEmpty() then begin
            ShipmentLine.CalcSums(Quantity);
            if ShipmentLine.Quantity <> Line.Quantity then begin
                ShipmentLine.DeleteAll();
                exit;
            end;
        end;
    end;

    protected procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview() or MailManagement.IsHandlingGetEmailBody());
    end;

    local procedure DocumentCaption(): Text[250]
    var
        DocCaption: Text[250];
    begin
        if DocCaption <> '' then
            exit(DocCaption);

        if Header."Prepayment Credit Memo" then
            exit(SalesPrepCreditMemoNoLbl);
        exit(SalesCreditMemoNoLbl);
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[50]
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        if not UnitOfMeasure.Get(UOMCode) then
            exit(UOMCode);
        exit(UnitOfMeasure.Description);
    end;

    local procedure InsertVATAmountLine(var VATAmountLine2: Record "VAT Amount Line"; var SalesCrMemoLine: Record "Sales Cr.Memo Line")
    begin
        VATAmountLine2.Init();
        VATAmountLine2."VAT Identifier" := SalesCrMemoLine."VAT Identifier";
        VATAmountLine2."VAT Calculation Type" := SalesCrMemoLine."VAT Calculation Type";
        VATAmountLine2."Tax Group Code" := SalesCrMemoLine."Tax Group Code";
        VATAmountLine2."VAT %" := SalesCrMemoLine."VAT %";
        VATAmountLine2."VAT Base" := SalesCrMemoLine.Amount;
        VATAmountLine2."Amount Including VAT" := SalesCrMemoLine."Amount Including VAT";
        VATAmountLine2."Line Amount" := SalesCrMemoLine."Line Amount";
        if SalesCrMemoLine."Allow Invoice Disc." then
            VATAmountLine2."Inv. Disc. Base Amount" := SalesCrMemoLine."Line Amount";
        VATAmountLine2."Invoice Discount Amount" := SalesCrMemoLine."Inv. Discount Amount";
        VATAmountLine2."VAT Clause Code" := SalesCrMemoLine."VAT Clause Code";
        VATAmountLine2.InsertLine();
    end;

    local procedure CreateReportTotalLines()
    begin
        ReportTotalsLine.DeleteAll();
        if (TotalInvDiscAmount <> 0) or (TotalAmountVAT <> 0) then
            ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, true, false, false, Header."Currency Code");
        if TotalInvDiscAmount <> 0 then begin
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, false, false, false, Header."Currency Code");
            if TotalAmountVAT <> 0 then
                ReportTotalsLine.Add(TotalExclVATText, TotalAmount, true, false, false, Header."Currency Code");
        end;
        if TotalAmountVAT <> 0 then begin
            ReportTotalsLine.Add(VATAmountLine.VATAmountText(), TotalAmountVAT, false, true, false, Header."Currency Code");
            if TotalVATAmountLCY <> TotalAmountVAT then
                ReportTotalsLine.Add(VATAmountLine.VATAmountText() + LCYTxt, TotalVATAmountLCY, false, true, false);
        end;
    end;

    local procedure FormatAddressFields(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
        FormatAddr.GetCompanyAddr(SalesCrMemoHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesCrMemoBillTo(CustAddr, SalesCrMemoHeader);
        ShowShippingAddr := FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, SalesCrMemoHeader);
    end;

    local procedure FormatDocumentFields(SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
        FormatDocument.SetTotalLabels(SalesCrMemoHeader."Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesCrMemoHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesCrMemoHeader."Payment Terms Code", SalesCrMemoHeader."Language Code");
        FormatDocument.SetPaymentMethod(PaymentMethod, SalesCrMemoHeader."Payment Method Code", SalesCrMemoHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesCrMemoHeader."Shipment Method Code", SalesCrMemoHeader."Language Code");

        AppliesToText :=
          FormatDocument.SetText(SalesCrMemoHeader."Applies-to Doc. No." <> '', StrSubstNo('%1 %2', Format(SalesCrMemoHeader."Applies-to Doc. Type"), SalesCrMemoHeader."Applies-to Doc. No."));
    end;

    local procedure FormatLineValues(CurrLine: Record "Sales Cr.Memo Line")
    begin
        FormatDocument.SetSalesCrMemoLine(CurrLine, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);
    end;

    local procedure GetDateOfCompletion(): Date
    var
        DetailedSalesLine: Record "APM Posted Detailed Sales Line";
        EndDate: Date;
    begin
        DetailedSalesLine.SetRange("Document Type", DetailedSalesLine."Document Type"::"Credit Memo");
        DetailedSalesLine.SetRange("Document No.", Header."No.");
        if DetailedSalesLine.FindSet(false) then
            repeat
                if DetailedSalesLine.Date > EndDate then
                    EndDate := DetailedSalesLine.Date;
            until DetailedSalesLine.Next() = 0;

        exit(EndDate);
    end;
}
