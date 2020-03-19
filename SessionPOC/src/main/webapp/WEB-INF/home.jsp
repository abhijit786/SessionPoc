 <html>
<head>
<title>Home Page</title>
</head>
<body>
	
            <h2>Policy Number is <%=request.getSession().getAttribute("pno") %></h2>
            <h2>IDNV Status is <%=request.getSession().getAttribute("idnvstat") %></h2>
            <h2>Session ID is <%=request.getSession().getAttribute("sessionid") %></h2>
            <h2>Policy Type is <%=request.getSession().getAttribute("ptype") %></h2>

</body>
</html>