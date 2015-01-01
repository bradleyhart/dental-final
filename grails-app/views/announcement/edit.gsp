<%@ page import="passdentistry.Announcement" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <title>Announcement</title>
</head>

<body>


<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">List</g:link></li>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="edit-announcement" class="content scaffold-edit" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${announcementInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${announcementInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: announcementInstance, action: 'update']" method="PUT">
        <g:hiddenField name="version" value="${announcementInstance?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:actionSubmit class="save" action="update"
                            value="Update"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
