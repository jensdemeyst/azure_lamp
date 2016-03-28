<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <title>You Owe Us Money!</title>
        <spring:url value="/resources/css/main.css" var="urlCss"/>
        <spring:url value="/resources/img/Club.gif" var="urlImg"/>
        <link rel="stylesheet" href="${urlCss}" type="text/css" />
    </head>

    <body>
        <img alt="" src="${urlImg}" align="right"/>

        <p>Watch out, ${customer.firstname},
            we know where you live.<br/>
            Pay us the 
            <spring:bind path="customer.balanceNoSign">${status.value}</spring:bind>       
            </p>
        
    </body>
</html>