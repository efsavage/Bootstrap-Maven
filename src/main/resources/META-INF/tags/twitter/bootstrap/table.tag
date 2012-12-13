<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="striped" required="false" type="Boolean" 
%><%@ attribute name="bordered" required="false" type="Boolean" 
%><%@ attribute name="hover" required="false" type="Boolean" 
%><%@ attribute name="condensed" required="false" type="Boolean" 
%><%@ attribute name="cssClass" required="false" type="String" 
%><%@ attribute name="caption" required="false" type="String" 
%><table class="table<c:if test="${striped}"> table-striped</c:if><c:if test="${bordered}"> table-bordered</c:if><c:if test="${hover}"> table-hover</c:if><c:if test="${condensed}"> table-condensed</c:if> ${cssClass}"><c:if test="${!empty caption}">
<caption>${caption}</caption>
</c:if><jsp:doBody />
</table>