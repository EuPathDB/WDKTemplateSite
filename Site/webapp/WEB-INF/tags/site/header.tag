<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="imp" tagdir="/WEB-INF/tags/imp" %>

<c:set var="project" value="${applicationScope.wdkModel.displayName}" />

<%@ attribute name="title"
              description="Value to appear in page's title"
%>
<%@ attribute name="refer" 
                          type="java.lang.String"
                          required="false" 
                          description="Page calling this tag"
%>

<%-------- CHECK list below: some are not in use:
	- division being used by login and help, 
	- banner by many pages   
----------------------------------------------------------%>
<%@ attribute name="banner"
              required="false"
              description="Value to appear at top of page"
%>
<%@ attribute name="parentDivision"
              required="false"
%>

<%@ attribute name="parentUrl"
              required="false"
%>
<%@ attribute name="divisionName"
              required="false"
%>

<%@ attribute name="division"
              required="false"
%>
<%@ attribute name="summary"
              required="false"
              description="short text description of the page"
%>

<%@ attribute name="headElement"
              required="false"
              description="additional head elements"
%>

<%@ attribute name="bodyElement"
              required="false"
              description="additional body elements"
%>



<html>

<%--------------------------- HEAD of HTML doc ---------------------%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>
	<c:out value="${title}" default="WDK ${project}" />
</title>

<!-- for IE and other beowsers -->
<link rel="icon" type="image/png" href="<c:url value="/images/favicon.ico" /> "> 
<link rel="shortcut icon" href="<c:url value="/images/favicon.ico" /> ">

<%-- css from WDK  --%>
<imp:wdkStylesheets refer="${refer}" /> 

<%-- When definitions are in conflict, the next one overrides the previous one  --%>
<link rel="StyleSheet" href="<c:url value="/css/style.css" />" 		type="text/css">
<link rel="stylesheet" href="<c:url value="/css/Color.css" />"        	type="text/css" />

<!--[if lt IE 8]>
<link rel="stylesheet" href="<c:url value="/css/ie7.css"/>" type="text/css" />
<![endif]-->

<!--[if lt IE 7]>
<link rel="stylesheet" href="<c:url value="/css/ie6.css"/>" type="text/css" />
<![endif]-->

<%-- wdkJavascripts is included here --%>
<imp:jscript refer="${refer}"/>



<%-- LETS CHECK WHO IS USING THIS, OR REMOVE ---%>
<SCRIPT TYPE="text/javascript" lang="JavaScript">
<!--

function uncheck(notFirst) {
    var form = document.downloadConfigForm;
    var cb = form.selectedFields;
    if (notFirst) {
        for (var i=1; i<cb.length; i++) {
            cb[i].checked = null;
        }
    } else {
        cb[0].checked = null;
    }
}

function check(all) {
    var form = document.downloadConfigForm;
    var cb = form.selectedFields;
    cb[0].checked = (all > 0 ? null : 'checked');
    for (var i=1; i<cb.length; i++) {
        cb[i].checked = (all > 0 ? 'checked' : null);
    }
}

-->
</SCRIPT>


</head>

<%--------------------------- BODY of HTML doc ---------------------%>
<body>

  <imp:siteInfo/>

  <div id="siteLogoBanner">
    <div id="login" class="ui-state-default ui-corner-all">
      <imp:smallMenu/>
    </div>

    <a href="<c:url value="/" />"><imp:image src="/wdk/images/strategiesWDK.png" border="0" alt="Site logo"/></a>
  <c:choose>
  <c:when test="${not empty banner}">
    <span class="bannerh1">${banner}</span>
  </c:when>
  <c:otherwise>
    <span class="bannerh1">${project}</span>
  </c:otherwise>
  </c:choose>
  <br><br>
  </div>

<div id="tabsLogin" style="position:relative">
  <div id="leftLinks" style="position:absolute;top:-4pt;left:8pt;font-size:130%">
    <table><tr><td>
    <a href='<c:url value="/" />'>New Search</a></td><td>
    <a href='<c:url value="/showApplication.do" />'>My Strategies</a></td><td>
    <a href='<c:url value="/showXmlDataContent.do?name=XmlQuestions.StrategiesHelp" />'>Strategy Tips</a></td>
<%--	<td><a href='<c:url value="/showXmlDataList.do" />'>News</a></td>  --%>
   </tr></table>  
  </div>
</div>
<br><br><br>
  <hr />
