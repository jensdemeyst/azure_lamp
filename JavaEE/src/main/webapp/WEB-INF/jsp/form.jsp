<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
	<title>Bank Account Balance</title>
            <!--<link rel=STYLESHEET href="./resources/css/main.css" type="text/css"/>-->
        	<spring:url value="/resources/css/main.css" var="urlCss"/>
                <link rel="stylesheet" href="${urlCss}" type="text/css" />
    </head>
    <body>
        <fieldset>
            <legend>Bank Account Balance</legend>
            
             <h2>BankCustomerList</h2>
             <h2>${bankCustomerList}</h2>
           
             <h2>Positive balance</h2>
             <h2>${bankCustomerBalanceList}</h2>
             
            <form:form method="POST" action="bank.htm" modelAttribute="bankCustomer">
                <p>Customer ID: 
                <form:input path="id" size = "15"/>
                <form:errors path="id"/></p>

                <input type="submit" value="Show Balance">
            </form:form>
        </fieldset>
    </body>
</html>