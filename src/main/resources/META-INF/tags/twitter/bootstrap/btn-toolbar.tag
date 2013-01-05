<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://efsavage.com/twitter-bootstrap" prefix="bs" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="group" required="false" type="Boolean" 
%><div class="btn-toolbar"><c:choose><c:when test="${group}"><bs:btn-group><jsp:doBody /></bs:btn-group></c:when><c:otherwise><jsp:doBody /></c:otherwise></c:choose></div>