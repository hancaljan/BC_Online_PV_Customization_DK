report 53106 "NCX_DK PV Draft Credit Memo"
{
    Caption = 'PV - Draft Credit Memo';
    DefaultLayout = RDLC;
    RDLCLayout = './src/Report/Documents/rdl/DraftCreditMemo.rdl';

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = sorting("Document Type", "No.") where("Document Type" = const("Credit Memo"));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Draft Credit Memo';

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
            column(ExternalDocumentNo__Lbl; FieldCaption("External Document No.")) { }
            column(ShipmentMethodDescription; ShipmentMethod.Description) { }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl) { }
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
            column(PaymentTermsDescription; PaymentTerms.Description) { }
            column(PaymentTermsDescription_Lbl; PaymentTermsDescLbl) { }
            column(PaymentMethodDescription; PaymentMethod.Description) { }
            column(PaymentMethodDescription_Lbl; PaymentMethodDescLbl) { }
            column(BilltoCustumerNo; "Bill-to Customer No.") { }
            column(BilltoCustomerNo_Lbl; FieldCaption("Bill-to Customer No.")) { }
            column(DocumentDate; Format("Document Date", 0, 4)) { }
            column(DocumentDate_Lbl; FieldCaption("Document Date")) { }
            column(DueDate; Format("Due Date", 0, 4)) { }
            column(DueDate_Lbl; FieldCaption("Due Date")) { }
            column(DocumentNo; "No.") { }
            column(DocumentNo_Lbl; InvoiceNoText) { }
            column(InvoiceNoPosition_Lbl; NextInvoiceNo) { }
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
            column(From_Lbl; FromLbl) { }
            column(BilledTo_Lbl; BilledToLbl) { }
            column(ChecksPayable_Lbl; ChecksPayableText) { }
            column(HomePage_Lbl; HomePageLbl) { }
            column(InvoiceDiscountBaseAmount_Lbl; InvDiscBaseAmtLbl) { }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl) { }
            column(LineAmountAfterInvoiceDiscount_Lbl; LineAmtAfterInvDiscLbl) { }
            column(LocalCurrency_Lbl; LocalCurrencyLbl) { }
            column(ExchangeRateAsText; ExchangeRateText) { }
            column(Page_Lbl; PageLbl) { }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl) { }
            column(Questions_Lbl; QuestionsLbl) { }
            column(Contact_Lbl; CompanyInfo.GetContactUsText()) { }
            column(DocumentTitle_Lbl; DocumentTitleText) { }
            column(YourDocumentTitle_Lbl; YourDocumentTitleText) { }
            column(Thanks_Lbl; ThanksLbl) { }
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
            column(PaymentInstructions_Txt; PaymentInstructionsTxt) { }
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

            dataitem(Line; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = Header;
                DataItemTableView = sorting("Document No.", "Line No.");
                UseTemporary = true;

                #region SalesLine Columns
                column(LineNo_Line; "Line No.") { }
                column(AmountExcludingVAT_Line; Amount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FieldCaption(Amount)) { }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(Description_Line; Description) { }
                column(Description_Line_Lbl; FieldCaption(Description)) { }
                column(LineDiscountPercent_Line; "Line Discount %") { }
                column(LineDiscountPercentText_Line; LineDiscountPctText) { }
                column(LineAmount_Line; FormattedLineAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_Line_Lbl; FieldCaption("Line Amount")) { }
                column(ItemNo_Line; "No.") { }
                column(ItemNo_Line_Lbl; FieldCaption("No.")) { }
                column(ItemReferenceNo_Line; "Item Reference No.") { }
                column(ItemReferenceNo_Line_Lbl; FieldCaption("Item Reference No.")) { }
                column(ShipmentDate_Line; Format("Shipment Date")) { }
                column(ShipmentDate_Lbl; PostedShipmentDateLbl) { }
                column(Quantity_Line; FormattedQuantity) { }
                column(Quantity_Line_Lbl; FieldCaption(Quantity)) { }
                column(Type_Line; Format(Type)) { }
                column(UnitPrice; FormattedUnitPrice)
                {
                    AutoFormatExpression = "Currency Code";
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
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(Unit_Lbl; UnitLbl) { }
                column(Qty_Lbl; QtyLbl) { }
                column(Price_Lbl; PriceLbl) { }
                column(PricePer_Lbl; PricePerLbl) { }
                column(Line_Discount_Amount; "Line Discount Amount") { }
                column(Line_Discount_Amount_Lbl; FieldCaption("Line Discount Amount")) { }
                column(OriginalAmount_Lbl; OriginalAmount_Lbl) { }
                #endregion

                trigger OnPreDataItem()
                begin
                    MoreLines := Find('+');
                    while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                        MoreLines := Next(-1) <> 0;
                    if not MoreLines then
                        CurrReport.Break();
                    SetRange("Line No.", 0, "Line No.");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := false;
                    DummyCompanyInfo.Picture := CompanyInfo.Picture;
                end;

                trigger OnAfterGetRecord()
                begin
                    if Type = Type::"G/L Account" then
                        "No." := '';

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := StrSubstNo('%1%', -Round("Line Discount %", 0.1));

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                    OnLineOnAfterGetRecordOnAfterCalcTotals(Header, Line, TotalAmount, TotalAmountVAT, TotalAmountInclVAT);

                    if "VAT Clause Code" <> '' then
                        if VATAmountLine.Get("VAT Identifier", "VAT Calculation Type", "Tax Group Code", false, "Line Amount" >= 0) then begin
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.Modify();
                        end;

                    FormatLineValues(Line);

                    if FirstLineHasBeenOutput then
                        Clear(DummyCompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = filter(1 .. 99999));

                #region WorkDescriptionLine Columns
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
                begin
                    if WorkDescriptionInstream.EOS then
                        CurrReport.Break();
                    WorkDescriptionInstream.ReadText(WorkDescriptionLine);
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
                    AutoFormatExpression = Header."Currency Code";
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

                    if ShowVATClause("VAT Clause Code") then begin
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
                column(VATClausesHeader; VATClausesText) { }
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

                trigger OnPreDataItem()
                begin
                    if Count = 0 then
                        VATClausesText := ''
                    else
                        VATClausesText := VATClausesLbl;
                end;

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
                column(Amount_ReportTotalsLine; Amount) { }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted") { }
                column(FontBold_ReportTotalsLine; "Font Bold") { }
                column(FontUnderline_ReportTotalsLine; "Font Underline") { }
                #endregion

                trigger OnPreDataItem()
                begin
                    CreateReportTotalLines();
                end;
            }
            dataitem(PaymentReportingArgument; "Payment Reporting Argument")
            {
                DataItemTableView = sorting(Key);
                UseTemporary = true;

                column(PaymentServiceLogo; Logo)
                {
                }
                column(PaymentServiceLogo_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceLogo_Url; GetTargetURL())
                {
                }
                column(PaymentServiceText_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceText_Url; GetTargetURL())
                {
                }
            }
            dataitem(LetterText; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));
                column(GreetingText; GreetingLbl)
                {
                }
                column(BodyText; BodyContentText)
                {
                }
                column(ClosingText; ClosingLbl)
                {
                }
                column(PmtDiscText; PmtDiscText)
                {
                }

                trigger OnPreDataItem()
                begin
                    PmtDiscText := '';
                    if Header."Payment Discount %" <> 0 then
                        PmtDiscText := StrSubstNo(PmtDiscTxt, Header."Pmt. Discount Date", Header."Payment Discount %");
                end;
            }
            dataitem(Totals; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));
                column(TotalNetAmount; TotalAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATBaseLCY; TotalVATBaseLCY)
                {
                }
                column(TotalAmountIncludingVAT; TotalAmountInclVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmount; TotalAmountVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmountLCY; TotalVATAmountLCY)
                {
                }
                column(TotalInvoiceDiscountAmount; TotalInvDiscAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalPaymentDiscountOnVAT; TotalPaymentDiscOnVAT)
                {
                }
                column(TotalVATAmountText; VATAmountLine.VATAmountText())
                {
                }
                column(TotalExcludingVATText; TotalExclVATText)
                {
                }
                column(TotalIncludingVATText; TotalInclVATText)
                {
                }
                column(TotalSubTotal; TotalSubTotal)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalSubTotalMinusInvoiceDiscount; TotalSubTotal + TotalInvDiscAmount)
                {
                }
                column(TotalText; TotalText)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                PaymentServiceSetup: Record "Payment Service Setup";
                ArchiveManagement: Codeunit ArchiveManagement;
                SalesPost: Codeunit "Sales-Post";
                PVFunc: Codeunit "NCX PV Functions";
                Project: Record "APM Project";
                Language: Record Language;
                RegardingTxt: Record "NCX Regarding Text";
                Customer: Record Customer;
                PayTerm: Record "Payment Terms";
                FinChargeTerm: Record "Finance Charge Terms";
                BankAcc: Record "Bank Account";
                SalesLine: Record "Sales Line";
                ActCurrCode: Code[10];
            begin
                if APMProject.get(Header."APM Project No.") then begin
                    clear(resource);
                    if resource.get(apmproject."Project Manager") then;
                end;
                OIOUBLGLN_Value := '';
                OIOUBLGLN_Caption := '';
                RecField.Reset();
                RecField.SetRange(TableNo, database::"Sales Header");
                RecField.SetRange(FieldName, 'OIOUBL-GLN');
                if RecField.FindFirst() then begin
                    RecRef.GETTable(header);
                    FldRef := RecRef.Field(RecField."No.");
                    OIOUBLGLN_Value := FldRef.Value;
                    if OIOUBLGLN_Value <> '' then
                        OIOUBLGLN_Caption := FldRef.Caption;
                end;

                FirstLineHasBeenOutput := false;
                Clear(Line);
                VATAmountLine.DeleteAll();
                VATClauseLine.DeleteAll();
                Line.DeleteAll();
                Clear(SalesPost);
                SalesPost.GetSalesLines(Header, Line, 0);
                OnAfterSalesPostGetSalesLines(Header, Line);

                Line.CalcVATAmountLines(0, Header, Line, VATAmountLine);
                Line.UpdateVATOnLines(0, Header, Line, VATAmountLine);
                OnHeaderOnAfterGetRecordOnAfterUpdateVATOnLines(Header, Line, VATAmountLine);

                CurrReport.Language := LanguageMgt.GetLanguageIdOrDefault("Language Code");
                CurrReport.FormatRegion := LanguageMgt.GetFormatRegionOrDefault("Format Region");
                FormatAddr.SetLanguageCode("Language Code");

                CalcFields("Work Description");
                ShowWorkDescription := "Work Description".HasValue;

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
                SalesLine.SetRange("Document Type", "Document Type");
                SalesLine.SetRange("Document No.", "No.");
                if SalesLine.FindSet(false) then begin
                    SalesLine.CalcSums("Line Discount Amount");
                    DiscountAmt := SalesLine."Line Discount Amount";
                end;
                // </PV>

                FormatAddr.GetCompanyAddr("Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
                FormatAddr.SalesHeaderBillTo(CustAddr, Header);
                ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, Header);
                DocumentTitleText := SalesConfirmationLbl;
                YourDocumentTitleText := StrSubstNo(YourDocLbl, SalesConfirmationLbl);
                InvoiceNoText := InvNoLbl;
                BodyContentText := BodyLbl;
                ChecksPayableText := StrSubstNo(ChecksPayableLbl, CompanyInfo.Name);

                if not CompanyBankAccount.Get(Header."Company Bank Account Code") then
                    CompanyBankAccount.CopyBankFieldsFromCompanyInfo(CompanyInfo);

                if not Cust.Get("Bill-to Customer No.") then
                    Clear(Cust);

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      Round(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := StrSubstNo(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                end;

                PaymentServiceSetup.CreateReportingArgs(PaymentReportingArgument, Header);

                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.") then;
                if BillToContact.Get("Bill-to Contact No.") then;

                if not IsReportInPreviewMode() and ArchiveDocument then
                    ArchiveManagement.StoreSalesDocument(Header, false);

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
            end;

            trigger OnPreDataItem()
            begin
                FirstLineHasBeenOutput := false;
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
                    field(LogInteractionField; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Archive Document';
                        ToolTip = 'Specifies if the document is archived after you print it. Note: This option is going to be discontinued in future releases. Instead, for sales invoice versioning you can use the feature to attach draft invoice printout as PDF document.';
                        ObsoleteReason = 'Archiving of Sales Invoice document is not supported.';
                        ObsoleteState = Pending;
                        ObsoleteTag = '22.0';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
            ArchiveDocument := SalesSetup."Archive Orders";
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction();
            LogInteractionEnable := LogInteraction;
        end;
    }



    labels
    {
    }

    trigger OnInitReport()
    var
        SalesHeader: Record "Sales Header";
        IsHandled: Boolean;
    begin
        GLSetup.Get();
        CompanyInfo.SetAutoCalcFields(Picture);
        CompanyInfo.Get();
        SalesSetup.Get();
        CompanyInfo.VerifyAndSetPaymentInfo();

        if SalesHeader.GetLegalStatement() <> '' then
            LegalStatementLbl := SalesHeader.GetLegalStatement();

        IsHandled := false;
        OnInitReportForGlobalVariable(IsHandled, LegalOfficeTxt, LegalOfficeLbl, CustomGiroTxt, CustomGiroLbl, LegalStatementLbl);
#if not CLEAN23
        if not IsHandled then begin
            //LegalOfficeTxt := CompanyInfo.GetLegalOffice();
            //LegalOfficeLbl := CompanyInfo.GetLegalOfficeLbl();
            //CustomGiroTxt := CompanyInfo.GetCustomGiro();
            //CustomGiroLbl := CompanyInfo.GetCustomGiroLbl();
        end;
#endif
    end;

    trigger OnPreReport()
    begin
        if Header.GetFilters = '' then
            Error(NoFilterSetErr);

        if not CurrReport.UseRequestPage() then
            InitLogInteraction();

        CompanyLogoPosition := SalesSetup."Logo Position on Documents";
    end;

    trigger OnPostReport()
    begin
        if LogInteraction and not IsReportInPreviewMode() then begin
            Header.SetLoadFields("No.", "Bill-to Contact No.", "Bill-to Customer No.", "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
            if Header.FindSet() then
                repeat
                    if Header."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          26, Header."No.", 0, 0,
                          Database::Contact, Header."Bill-to Contact No.",
                          Header."Salesperson Code", Header."Campaign No.", Header."Posting Description", Header."Opportunity No.")
                    else
                        SegManagement.LogDocument(
                          26, Header."No.", 0, 0,
                          Database::Customer, Header."Bill-to Customer No.",
                          Header."Salesperson Code", Header."Campaign No.", Header."Posting Description", Header."Opportunity No.");
                until Header.Next() = 0;
        end;
    end;

    var
        DummyCompanyInfo: Record "Company Information";
        VATClause: Record "VAT Clause";
        LanguageMgt: Codeunit Language;
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        WorkDescriptionInstream: InStream;
        WorkDescriptionLine: Text;
        CustAddr: array[8] of Text[100];
        ChecksPayableText: Text;
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        SalesPersonText: Text[50];
#if not CLEAN22
        ArchiveDocument: Boolean;
#endif
        LogInteractionEnable: Boolean;
        CompanyLogoPosition: Integer;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        PmtDiscText: Text;
        PaymentInstructionsTxt: Text;
        VATClausesText: Text;
        NextInvoiceNo: Text;
        //<APM>
        SalesConfirmationLbl: Label 'Draft Credit Memo';
        //SalesConfirmationLbl: Label 'Draft Invoice';
        //</APM>
        YourDocLbl: Label 'Your %1', Comment = '%1 - Your Draft Invoice or Your Invoice';
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
        //<APM>
        //InvNoLbl: Label 'Draft Invoice No.';
        InvNoLbl: Label 'Draft Credit Memo No.';
        //</APM>
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        ShipmentLbl: Label 'Shipment';
        ShiptoAddrLbl: Label 'Ship-to Address';
        ShptMethodDescLbl: Label 'Shipment Method';
        SubtotalLbl: Label 'Subtotal';
        TotalLbl: Label 'Total';
        VATAmtSpecificationLbl: Label 'VAT Amount Specification';
        VATAmtLbl: Label 'VAT Amount';
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
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment = '%1 and %2 are both amounts.';
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidently printing all documents.';
        FromLbl: Label 'From';
        BilledToLbl: Label 'Billed to';
        ChecksPayableLbl: Label 'Please make checks payable to %1', Comment = '%1 = company name';
        QuestionsLbl: Label 'Questions?';
        ThanksLbl: Label 'Thank You!';
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        PmtDiscTxt: Label 'If we receive the payment before %1, you are eligible for a %2% payment discount.', Comment = '%1 = Discount Due Date %2 = value of Payment Discount % ';
        BodyLbl: Label 'Thank you for your business. Your draft invoice is attached to this message.';
        UnitLbl: Label 'Unit';
        QtyLbl: Label 'Qty', Comment = 'Short form of Quantity';
        PriceLbl: Label 'Price';
        PricePerLbl: Label 'Price per';
        LCYTxt: label ' (LCY)';
        VATClauseText: Text;
        //<APM>
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
        //</APM>
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

    protected var
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        CompanyBankAccount: Record "Bank Account";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        FormatAddr: Codeunit "Format Address";
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        LineDiscountPctText: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        LogInteraction: Boolean;
        MoreLines: Boolean;
        ShowWorkDescription: Boolean;
        ShowShippingAddr: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        FirstLineHasBeenOutput: Boolean;
        YourDocumentTitleText: Text;
        DocumentTitleText: Text;
        InvoiceNoText: Text;
        BodyContentText: Text;
        LegalOfficeTxt, LegalOfficeLbl, CustomGiroTxt, CustomGiroLbl, LegalStatementLbl : Text;

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractionTemplateCode(Enum::"Interaction Log Entry Document Type"::"Sales Draft Invoice") <> '';
    end;

    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    begin
        FormatDocument.SetTotalLabels(SalesHeader.GetCurrencySymbol(), TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesHeader."Payment Terms Code", SalesHeader."Language Code");
        FormatDocument.SetPaymentMethod(PaymentMethod, SalesHeader."Payment Method Code", SalesHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesHeader."Shipment Method Code", SalesHeader."Language Code");
    end;

    protected procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview() or MailManagement.IsHandlingGetEmailBody());
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

    [IntegrationEvent(false, false)]
    local procedure OnAfterSalesPostGetSalesLines(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
    end;

    local procedure ShowVATClause(VATClauseCode: Code[20]): Boolean
    begin
        if VATClauseCode = '' then
            exit(false);

        exit(true);
    end;

    local procedure FormatLineValues(CurrLine: Record "Sales Line")
    var
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeFormatLineValues(CurrLine, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount, IsHandled);
        if not IsHandled then
            FormatDocument.SetSalesLine(CurrLine, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);
    end;

    local procedure GetDateOfCompletion(): Date
    var
        DetailedSalesLine: Record "APM Detailed Sales Line";
        EndDate: Date;
    begin
        DetailedSalesLine.SetRange("Document Type", Header."Document Type");
        DetailedSalesLine.SetRange("Document No.", Header."No.");
        if DetailedSalesLine.FindSet(false) then
            repeat
                if DetailedSalesLine.Date > EndDate then
                    EndDate := DetailedSalesLine.Date;
            until DetailedSalesLine.Next() = 0;

        exit(EndDate);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnHeaderOnAfterGetRecordOnAfterUpdateVATOnLines(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var VATAmountLine: Record "VAT Amount Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnLineOnAfterGetRecordOnAfterCalcTotals(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var VATBaseAmount: Decimal; var VATAmount: Decimal; var TotalAmountInclVAT: Decimal)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeFormatLineValues(SalesLine: Record "Sales Line"; var FormattedQuantity: Text; var FormattedUnitPrice: Text; var FormattedVATPercentage: Text; var FormattedLineAmount: Text; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnInitReportForGlobalVariable(var IsHandled: Boolean; var LegalOfficeTxt: Text; var LegalOfficeLbl: Text; var CustomGiroTxt: Text; var CustomGiroLbl: Text; var LegalStatementLbl: Text)
    begin
    end;
}
