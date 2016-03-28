<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <title>Your Balance</title>
        <spring:url value="/resources/css/main.css" var="urlCss"/>
        <spring:url value="/resources/img/money-euro.jpg" var="urlImg"/>
        <link rel="stylesheet" href="${urlCss}" type="text/css" /> 
    </head>

    <body>
        <img src="${urlImg}" align="RIGHT"/>

        <ul>
            <li>First name: ${customer.firstname}</li>
            <li>Last name: ${customer.lastname}</li>
            <li>ID: ${customer.id}</li>
            <li>Balance: 
                <spring:bind path="customer.balance">${status.value}</spring:bind>            
            </li>

        </ul>
    </body>
</html>