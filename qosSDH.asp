<% response.buffer=true %>
<% response.expires=-1 %>
<%

if IsEmpty(Session("Authorized")) and left(Lcase(trim(request.ServerVariables("HTTP_REFERER"))),27) <> "http://mtris.chtldm.com.tw/" then
'if left(Lcase(trim(request.ServerVariables("HTTP_REFERER"))),20) <> "http://10.144.18.152" then
   Response.Redirect "http://10.144.6.48/qosv2"
end if

%>


<!-- frames -->
<frameset  rows="60,*"">
 	<frame name="a" src="gMoinfo.asp" marginwidth="10" marginheight="10" scrolling="no" frameborder="0" noresize>
    
    <frameset  cols="265,*">
			<frame name="b" src="SDHChartqos.asp" marginwidth="0" marginheight="0" scrolling="auto" frameborder="yes">
			<frame name="c" src="pcmqos.htm" marginwidth="10" marginheight="10" scrolling="auto" frameborder="yes">
    </frameset>
</frameset>