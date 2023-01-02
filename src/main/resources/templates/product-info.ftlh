<!DOCTYPE html>
<html>
<head>
    <title>Micana</title>
</head>
<body>
<hi>By Micana</hi><hr>
<h4>Информация о товаре </h4>
<b>Название товара </b>${product.title}<br>
<b>Описание товара </b>${product.description}<br>
<b>Цена товара </b>${product.price}<br>
<b>Издатель товара </b>${product.author}<br>
<b>Жанр </b>${product.genre}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить">
</form>
</body>
</html>