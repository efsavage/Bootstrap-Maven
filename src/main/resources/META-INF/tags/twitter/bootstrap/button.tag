<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="style" required="false" type="String" 
%><%@ attribute name="size" required="false" type="Boolean" 
%><%@ attribute name="block" required="false" type="Boolean" 
%><%@ attribute name="cssClass" required="false" type="String" 
%><%@ attribute name="text" required="false" type="String" 
%><button class="btn <c:if test="${block}">btn-block</c:if> <c:choose><
c:when test="${size eq 'large'}">btn-large</c:when><
c:when test="${size eq 'small'}">btn-small</c:when><
c:when test="${size eq 'mini'}">btn-mini</c:when></c:choose> <c:choose><
c:when test="${style eq 'primary'}">btn-primary</c:when><
c:when test="${style eq 'info'}">btn-info</c:when><
c:when test="${style eq 'success'}">btn-success</c:when><
c:when test="${style eq 'warning'}">btn-warning</c:when><
c:when test="${style eq 'danger'}">btn-danger</c:when><
c:when test="${style eq 'inverse'}">btn-inverse</c:when><
c:when test="${style eq 'link'}">btn-link</c:when></c:choose> ${cssClass}" <c:if test="${disabled}">disabled="disabled"</c:if> type="button"><c:choose><c:when test="${!empty text}">${text}</c:when><c:otherwise><jsp:doBody /></c:otherwise></c:choose></button>