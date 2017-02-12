<!-- #include virtual="/QoSv2/Helper/CommonFN.asp" -->
<%
If Session("Authorized") = True Then
    Response.Redirect "../dcr/ldap.asp?LoginType=Self&item=" & Server.URLEncode(ServiceBrigde("encode_base64", Session("uid")))
Else
    Response.Redirect "../dcr/frm.asp"
End If
%>