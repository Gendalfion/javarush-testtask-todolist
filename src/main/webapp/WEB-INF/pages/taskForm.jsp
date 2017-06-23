<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добавление/изменение задачи</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link href="https://fonts.googleapis.com/css?family=Roboto" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/main.css">
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title" align="center">
                Добавление/изменение задачи
            </h3>
        </div>
        <div class="panel-body">
            <form:form id="taskRegisterForm" cssClass="form-horizontal" modelAttribute="taskObject" method="post" action="saveTask">

                <div class="form-group">
                    <div class="control-label col-xs-3"> <form:label path="name" >Название задачи</form:label> </div>
                    <div class="col-xs-6">
                        <form:hidden path="id" value="${taskObject.id}"/>
                        <form:input cssClass="form-control" path="name" value="${taskObject.name}"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="control-label col-xs-3"> <form:label path="description" >Описание задачи</form:label> </div>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="description" value="${taskObject.description}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="schedule" cssClass="control-label col-xs-3">Выполнить до</form:label>
                    <div class="col-xs-6">
                        <fmt:formatDate value="${taskObject.schedule}" pattern="yyyy-MM-dd" var="formattedDate"/>
                        <form:input type="date" cssClass="form-control" path="schedule" value="${formattedDate}" />
                    </div>

                </div>

                <div class="form-group">
                    <div class="control-label col-xs-3"><form:label path="done">Готово?</form:label></div>
                    <div class="col-xs-6" align="left">
                        <form:checkbox cssClass="form-control" path="done" value="${taskObject.done}"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-5">
                        </div>
                        <div class="col-xs-4">
                            <input type="submit" id="saveTask" class="btn btn-primary" value="Подтвердить изменения" onclick="return submitTaskForm();"/>
                        </div>
                        <div class="col-xs-5">
                        </div>
                    </div>
                </div>

            </form:form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function submitTaskForm() {

        var name = $('#name').val().trim();
        var schedule = $('#schedule').val();
        var shortReg = /^\d{4}-\d{1,2}-\d{1,2}$/;

        if(name.length ==0) {
            alert('Введите название задания!');
            $('#name').focus();
            return false;
        }

        if(!schedule.match(shortReg)) {
            alert('Выберите срок выполнения задания!');
            $('#schedule').focus();
            return false;
        }

        return true;
    };
</script>

</body>
</html>
