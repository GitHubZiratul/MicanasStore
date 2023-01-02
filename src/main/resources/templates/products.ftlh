<!DOCTYPE html>
<html>
<head>
    <title>Micana</title>
</head>
<body>
<hi>By Micana</hi><hr>
<h4>Список игр доступных для покупок</h4>
<form action="/" method="get">
    Поиск по названию игры: <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p>
            <b>
            ${product.title}
            </b>
            ${product.price} | <a href="/product/${product.id}">Подробнее о товаре</a>
        </p>
    </div>
    <#else >
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    Название товара <input type="text" name="title">
    Описание объявления <input type="text" name="description">
    Цена <input type="number" name="price">
    Жанр <input type="text" name="genre">
    Издатель <input type="text" name="author">
    <input type="submit" value="ДОБАВИТЬ ТОВАР">
</form>
</body>
</html>