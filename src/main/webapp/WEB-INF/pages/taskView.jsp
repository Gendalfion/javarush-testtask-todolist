<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Список заданий</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/main.css">

</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="center"><b>Список заданий</b></div>
            </h3>
        </div>
        <div class="panel-body">
            <div class="panel-heading" align="center">
                <h3 class="panel-title" style="margin-top:25px;margin-bottom:25px;">
                    <a href="addTestTasks">Добавить тестовые данные в таблицу 'tasks'</a>
                </h3>
                <h3 class="panel-title">
                    <a href="/createTask">Новая задача</a>
                </h3>
            </div>

            <c:if test="${empty tasksList}">
                Задания отсутствуют.
            </c:if>
            <c:if test="${not empty tasksList}">
                <h3 class="panel-title">
                    <div align="center">
                        <c:forEach var="pageNum" items="${pageList}">
                            <c:if test="${pageNum == curPage}">
                                ${pageNum}
                            </c:if>
                            <c:if test="${pageNum != curPage}">
                                <a href="getAllTasks?done=${filter}&page=${pageNum}">${pageNum}</a>
                            </c:if>
                        </c:forEach>
                    </div>
                </h3>
                
                <table class="table table-hover table-bordered table-condensed">
                    <thead style="background-color: DarkGreen; color: white;">
                    <tr>
                        <th>Задача</th>
                        <th>Описание задачи</th>
                        <th>Выполнить до</th>
                        <th>Готово</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="taskModel" items="${tasksList}">
                        <tr>
                            <th><c:out value="${taskModel.name}"/></th>
                            <th><c:out value="${taskModel.description}"/></th>
                            <th><fmt:formatDate value="${taskModel.schedule}" pattern="yyyy.MM.dd"/></th>
                            <th><c:if test="${taskModel.done}"><img src="/resources/done.png" width="32" height="32"/></c:if>
                                <c:if test="${not taskModel.done}"><img src="/resources/undone.png" width="32" height="32"></c:if></th>
                            <th><a href="editTask?id=<c:out value='${taskModel.id}'/>">Изменить</a> </th>
                            <th><a href="deleteTask?id=<c:out value='${taskModel.id}'/>">Удалить</a> </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            
            <div class="panel-heading">
                <h3 class="panel-title">
                    <div align="center" class="row">
                        <div class="col-xs-4">
                            <c:if test="${filter.equals('all')}">
                                Все задачи
                            </c:if>
                            <c:if test="${!filter.equals('all')}">
                                <a href="getAllTasks?done=all&page=1">Все задачи</a>
                            </c:if>
                        </div>

                        <div class="col-xs-4">
                            <c:if test="${filter.equals('done')}">
                                Только готовые
                            </c:if>
                            <c:if test="${!filter.equals('done')}">
                                <a href="getAllTasks?done=done&page=1">Только готовые</a>
                            </c:if>
                        </div>

                        <div class="col-xs-4">
                            <c:if test="${filter.equals('undone')}">
                                Неготовые
                            </c:if>
                            <c:if test="${!filter.equals('undone')}">
                                <a href="getAllTasks?done=undone&page=1">Неготовые</a>
                            </c:if>
                        </div>
                    </div>
                </h3>
            </div>
                
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
