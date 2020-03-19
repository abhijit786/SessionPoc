

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Session Management in NodeJS using Node and Express</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#submit").click(function(){
    var pno = $("#pno").val();
    var idnvstat = $("#idnvstat").val();
    var ptype = $("#ptype").val();
    var sessionid = $("#sessionid").val();
    var data = new FormData();
    data.append('name', 'Bob'); 
    var SendInfo={"name":"bob","id":123}
    var SendInfo = {"pno":pno,"idnvstat":idnvstat,"ptype":ptype,"sessionid":sessionid};
    $.ajax({
    type: "POST",
    url: "/setdata",
    data: JSON.stringify(SendInfo),
    contentType: "application/json;",
    success: function(result){
        console.log(result);
        //if(result==1)
        //{
        window.open('/home','home');  
        //}
    }
}); 



    });
}); 
</script>
</head>
<body>
<input type="number" size="40" placeholder="Type your policy number" value="1234567" id="pno"><br />
<input type="text" size="40" placeholder="Type your sessiom number" value="99999999" id="sessionid"><br />
<input type="text" size="40" placeholder="Type your policy type" value="Policy Holder" id="ptype"><br />
<input type="text" size="40" placeholder="Type your IDNV status" value="Success" id="idnvstat"><br />

<button id="submit">Go</button>
</body>
</html>