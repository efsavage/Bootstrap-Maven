<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="type" required="false" type="String" 
%><%@ attribute name="cssClass" required="false" type="String" 
%><tr class="<c:choose><c:when test="${type eq 'success'}"> success</c:when><c:when test="${type eq 'error'}"> error</c:when><c:when test="${type eq 'warning'}"> warning</c:when><c:when test="${type eq 'info'}"> info</c:when></c:choose>${cssClass}"><jsp:doBody /></tr>