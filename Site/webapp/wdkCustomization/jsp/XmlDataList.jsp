<%@ taglib prefix="imp" tagdir="/WEB-INF/tags/imp" %>
<%@ taglib prefix="imp" tagdir="/WEB-INF/tags/imp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<!-- get wdkXmlQuestionSets saved in request scope -->
<c:set var="xmlQSets" value="${requestScope.wdkXmlQuestionSets}"/>

<imp:header banner="News" />

<!-- show all xml question sets -->
	<div id="cirbulletlist">

<UL>
<c:forEach items="${xmlQSets}" var="qSet">
    <c:set var="qSetName" value="${qSet.name}"/>
    ${qSet.displayName}:<br>

    <!-- show all xml questions in this set -->
    <c:set var="xqs" value="${qSet.questions}"/>
    <c:forEach items="${xqs}" var="q">
        <c:set var="qName" value="${q.name}"/>
	<c:if test="${qName ne 'StrategiesHelp'}">  <%-- This content is available in top menu --%>
        	<LI><a href="showXmlDataContent.do?name=${qSetName}.${qName}">${q.displayName}</a></LI>
	</c:if>
    </c:forEach>
</c:forEach>
</UL>
</div>

<imp:footer/>
