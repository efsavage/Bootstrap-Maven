<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" 
%><%@ taglib uri="http://efsavage.com/twitter-bootstrap" prefix="bs" 
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" 
%><%@ attribute name="id" required="true" type="String" 
%><%@ attribute name="headerText" required="false" type="String" 
%><%@ attribute name="cancelText" required="false" type="String" 
%><%@ attribute name="submitText" required="false" type="String" 
%><div id="${id}" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="${id}-label" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
    <c:if test="${!empty headerText}"><h3 id="${id}-label">${headerText}</h3></c:if>
  </div>
  <div class="modal-body">
    <p><jsp:doBody /></p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">${empty cancelText ? 'Cancel' : cancelText}</button>
    <button class="btn btn-primary">${empty submitText ? 'OK' : submitText}</button>
  </div>
</div>