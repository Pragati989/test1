<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayPalProcessing.aspx.cs" Inherits="TOLLRATE.PayPalProcessing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Processing Paypal ...</title>
</head>
<body onload="document.Paypal.submit();">

		<!-- item_number should get passed back -->
		<form id="Paypal" name="Paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
			
			<input type="hidden" name="cmd" value="_xclick">
			<input type="hidden" name="upload" value="1" />
			
			<!-- The following is for aggregated PayPal data instead of itemized -->
			<!--
			<input type="hidden" name="item_name" value="Aggregated Items" />-->
			<input type="hidden" name="amount" value="<%=Session["pay"].ToString()%>" />
			
			
			
			
			<input type="hidden" name="business" value="rituuagrawal@gmail.com" />
									
			<%-- %><input type="hidden" name="invoice" value="<%=SelectedInvoice.InvoiceId.ToString()%>" />
			<input type="hidden" name="no_note" value="0" /> 
			<input type="hidden" name="currency_code" value="<%=SelectedInvoice.Currency %>" />
			<input type="hidden" name="lc" value="<%=SelectedInvoice.ShipToCountry %>" /> 
			<input type="hidden" name="return" value="<%=System.Web.Configuration.WebConfigurationManager.AppSettings["websiteUrl"] %>/ThankYou.aspx" />
			<input type="hidden" name="cancel_return" value="<%=System.Web.Configuration.WebConfigurationManager.AppSettings["websiteUrl"] %>" />
			<input type="hidden" name="email" value="<%=System.Web.Configuration.WebConfigurationManager.AppSettings["paypalAccount"] %>" /> 
			<input type="hidden" name="cn" value="How did you hear about us?" />
           <input type="submit" value="Submit Payment Info" />
		
		<%=SelectedInvoice.ToString() %>--%>
            </form>
	</body>
</html>