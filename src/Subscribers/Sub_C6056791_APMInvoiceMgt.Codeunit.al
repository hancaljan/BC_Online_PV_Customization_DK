namespace BC_Online_PV_Customization_Common.BC_Online_PV_Customization_Common;
using Microsoft.Sales.Document;
using System.Security.User;
using Microsoft.Sales.Comment;
using Microsoft.Foundation.Comment;

codeunit 53113 "NCX_DK Sub_C6056791_APMInvMgt"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"APM Invoice Mgt", OnAfterUpdateDocument, '', false, false)]
    local procedure "APM Invoice Mgt_OnAfterUpdateDocument"(var SalesHeader: Record "Sales Header")
    var
        APMProject: record "APM Project";
        APMDetailedSalesLine: Record "APM Detailed Sales Line";
        ElectronicInvoiceBase: Codeunit "NCX Electronic InvoiceBaseMgt";
    begin
        // <PV> #SI# 111960# GLN informations på Sales Invoice
        if SalesHeader."OIOUBL-GLN" <> '' then
            SalesHeader."External Document No." := CopyStr(SalesHeader."NCX Client Reference", 1, 35);
        // </PV> #SI# 111960#

    end;


}
