
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Users</title>
        <link rel="stylesheet" type="text/css" href="styles/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    </head>

    <body class="w3-light-grey">
        <div class="w3-container w3-center w3-blue-grey w3-margin-bottom  w3-opacity">
                <h2>Пользователи<small>    </small></h2>
        </div>

        <div>
        <c:set var="nameJS" value="${userNameFromServlet}" scope="session" />
        <c:set var="patienceJS" value="${patienceFromServlet}" scope="session" />
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");
            if (names != null && !names.isEmpty()) {
                for (String element : names) {
                    out.println(" <input type=\"button\" id=\"" + element + "\" value=\"" + element
                     + "\" name=\"" + element + "\" class=\"w3-btn w3-round-large w3-grey w3-margin-bottom  w3-opacity\""
                     + " onclick=\"javascript:clickFunction(this.id)\" > <br/>");
                }
            } else {
                out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">");
                out.println("    <h5>Пользователи пока не добавлены!</h5> </div>");
            }
        %>
        </div>
         <br/>

        <div class="w3-container w3-light-grey w3-opacity w3-left-align w3-padding">
            <button class="w3-btn w3-round-large w3-grey" onclick="location.href='/quest-project'">К начальной странице</button>
        </div>

        <script type="text/javascript">
            function clickFunction(clicked_id) {
                    $.ajax({
                    url: "/quest-project/list",
                    type: "POST",
                    data: { param: clicked_id },
                        success: function(resp) {
                            // Обработка успешного ответа
                            console.log("Data from servlet:", resp);
                            var attribute1 = resp.userNameFromServlet;

                            // Использование атрибутов в вашем коде JavaScript
                            console.log("Attribute 1:", attribute1);
                        },
                        error: function(xhr, status, error) {
                            // Обработка ошибки запроса
                            console.error("Error:", error);
                        }
                    });

                    location.href='test-list';
            }
        </script>
    </body>
</html>