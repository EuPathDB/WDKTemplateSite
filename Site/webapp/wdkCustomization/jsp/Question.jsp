<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib prefix="bean" uri="http://jakarta.apache.org/struts/tags-bean" %>
<%@ taglib prefix="site" tagdir="/WEB-INF/tags/site" %>

<site:header title="${wdkQuestion.recordClass.type}s by ${wdkQuestion.displayName}" refer="customQuestion" banner="${wdkQuestion.recordClass.type} Question page"/>

<jsp:include page="/wdk/jsp/question.form.jsp" />

<site:footer />
