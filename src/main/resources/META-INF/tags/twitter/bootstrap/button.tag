<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://efsavage.com/twitter-bootstrap" prefix="bs" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="style" required="false" type="String" 
%><%@ attribute name="href" required="false" type="String" 
%><%@ attribute name="size" required="false" type="Boolean" 
%><%@ attribute name="modal" required="false" type="String" 
%><%@ attribute name="block" required="false" type="Boolean" 
%><%@ attribute name="cssClass" required="false" type="String" 
%><%@ attribute name="text" required="false" type="String" 
%><%@ attribute name="icon" required="false" type="String" 
%><%@ attribute name="iconPos" required="false" type="String" 
%><%@ attribute name="type" required="false" type="String" 
%><%@ attribute name="name" required="false" type="String" 
%><%@ attribute name="value" required="false" type="String" 
%><c:if test="${!empty modal}"><c:set var="href">#${modal}</c:set></c:if><<c:choose><c:when test="${!empty href}">a href="${href}"</c:when><c:otherwise>button</c:otherwise></c:choose> class="btn <c:if test="${block}">btn-block</c:if> <c:choose><
c:when test="${size eq 'large'}">btn-large</c:when><
c:when test="${size eq 'small'}">btn-small</c:when><
c:when test="${size eq 'mini'}">btn-mini</c:when></c:choose> <c:choose><
c:when test="${style eq 'primary'}">btn-primary</c:when><
c:when test="${style eq 'info'}">btn-info</c:when><
c:when test="${style eq 'success'}">btn-success</c:when><
c:when test="${style eq 'warning'}">btn-warning</c:when><
c:when test="${style eq 'danger'}">btn-danger</c:when><
c:when test="${style eq 'inverse'}">btn-inverse</c:when><
c:when test="${style eq 'link'}">btn-link</c:when></c:choose> ${cssClass}" <c:if test="${disabled}">disabled="disabled"</c:if> <c:choose><
c:when test="${type eq 'button'}">type="button"</c:when><
c:when test="${type eq 'submit'}">type="submit"</c:when><
c:when test="${type eq 'reset'}">type="reset"</c:when></c:choose><c:if test="${!empty modal}"> data-toggle="modal"</c:if><c:if test="${!empty name}"> name="${name}"</c:if><c:if test="${!empty value}"> value="${value}"</c:if>><c:if test="${iconPos ne 'right' && !empty icon}"><bs:icon type="${icon}" white="${!empty style && style ne 'default'}" /> </c:if><c:choose><c:when test="${!empty text}">${text}</c:when><c:otherwise><jsp:doBody /></c:otherwise></c:choose><c:if test="${iconPos eq 'right' && !empty icon}"> <bs:icon type="${icon}" white="${!empty style && style ne 'default'}" /></c:if></<c:choose><c:when test="${!empty href}">a</c:when><c:otherwise>button</c:otherwise></c:choose>>