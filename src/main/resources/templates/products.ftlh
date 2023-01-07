<!DOCTYPE html>
<html>
<head>
    <title>MICANA</title>
</head>
<body>
<h1>MICANA </h1> <hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Выйти">
    </form>

    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>

    <#else>
        <a href="/login">Войти</a></h1><hr>
    </#if>


<h4>Все игры</h4>
<form action="/" method="get">
    Поиск по названию игры: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Игр нет</h3>
</#list>
<#if user.email??>
<hr>
<h3>Создать новую игру</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название игры: <input type="text" name="title"/><br><br>
    Описание игры: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Жанр: <input type="text" name="genre"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить игру"/>
</form>
</#if>
</body>
</html>