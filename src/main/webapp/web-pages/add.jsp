<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Add new user</title>
        <link rel="stylesheet" type="text/css" href="styles/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" ></script>
    </head>
    <body class="w3-light-grey">
        <div class="w3-container w3-padding">
            <div class="w3-card-4">
                <div class="w3-container w3-center w3-blue-grey  w3-opacity">
                    <h2>Добавить пользователя</h2>
                </div>
            </div>
            <div>

                    <form method="post" action="${pageContext.request.contextPath}/add" class="w3-selection w3-light-grey w3-padding">
                    <label>Имя:
                        <input type="text" name="name" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
                    </label>
                    <button type="submit" class="w3-btn w3-gray w3-round-large w3-margin-bottom w3-opacity">Подтвердить</button>
                    </form>
            </div>

                <%
                    if (request.getAttribute("userName") != null)  {
                        if (((String) request.getAttribute("userWasNotInList")).equals("false")) {
                %>
                            <script>
                                alert("Пользователь ${userName} уже присутствует в списке! Введи другое имя!")
                            </script>
                <%
                        }
                    }
                %>
        </div>

        <div class="w3-container w3-light-grey w3-opacity w3-left-align w3-padding">
            <button class="w3-btn w3-round-large w3-grey" onclick="location.href='/quest-project'">К начальной странице</button>
        </div>
    </body>
</html>