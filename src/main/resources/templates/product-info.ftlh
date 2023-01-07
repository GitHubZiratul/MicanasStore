<!DOCTYPE html>
<html>
<head>
    <title>Micana</title>
</head>
<body>
<h1>MICANA</h1><hr>
<h4>Подробная информация о игре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Жанр: </b>${product.genre}<br>
<b>Автор: </b>${product.user.name}<br>
<b>Номер телефона: </b>${product.user.numberPhone}<br>
<hr>
</body>
</html>