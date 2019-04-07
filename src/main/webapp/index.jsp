<%! int size = 10; %>
<html>
<body>
<h2>Hello World!</h2>
<% while(size < 100) { %>
	<p style="font-size:<%=size %>px;">Font size <%=size  %> </p>
	<%size+=5; %>
<%} %>
</body>
</html>

