<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Form</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <%@ include file="/WEB-INF/views/attach/_css.jsp" %>
  
</head>

<body class="templatemo-bg-gray templatemo-bg-image-1">
  
  <jsp:include page="${jsp}"></jsp:include>
  

<%@ include file="/WEB-INF/views/attach/_js.jsp" %>
</body>

</html>