<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
    <head>
        <title>Test-Quest</title>
        <link rel="stylesheet" type="text/css" href="styles/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
        <%
            Integer testKey = (Integer) request.getAttribute("testKeyFromServlet");
            Integer patience = (Integer) request.getAttribute("patienceFromServlet");
            Integer modelKey = (Integer) request.getAttribute("modelKeyFromServlet");
        %>
        <input type="hidden" id="hidden-id" name="hidden-name" value="<%= patience %>" />
    </head>

    <body class="w3-light-grey" style="font-size:80%">
        <div class="w3-container w3-center w3-blue-grey  w3-opacity" >
                <pre><h2>Радужный Тест-Квест<small>     пользователь: ${nameJS}    терпение: <%= patience %> </small></h2></pre>
        </div>

        <%
            if ((testKey == null) || (testKey == 0)) {
        %>

        <div id="1">
            <div class="w3-container w3-center w3-sand">
                <h4>Вопрос 1</h4>
            </div>
            <div class="w3-container w3-sand w3-margin-bottom">
                Что будет выведено в консоль в результате выполнения метода main() класса Computer?
                <pre><code>
                    public class Computer {
                        public void startup() {
                            System.out.print("computer-");
                        }
                    }

                    class Laptop extends Computer {
                        public void startup() {
                            System.out.print("laptop-");
                        }

                        public static void main(String[] args) {
                            Computer computer = new Main().new Laptop();
                            Laptop laptop = new Main().new Laptop();
                            computer.startup();
                            laptop.startup();
                        }
                    }
                </code></pre>
            </div>

            <form method="post" action="${pageContext.request.contextPath}/test-quest">
            <table style="font-size:100%">
                <tr>
                    <td valign="top" width="200">
                         <button id="1" class="w3-btn w3-round-large w3-red" onclick="javascript:clickFunction(this.id)">Ответ 1</button>
                    </td>
                    <td width="500">
                        computer-laptop-
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="2" class="w3-btn w3-round-large w3-yellow" onclick="javascript:clickFunction(this.id)">Ответ 2</button>
                    </td>
                    <td width="500">
                        laptop-computer-
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="3" class="w3-btn w3-round-large w3-green" onclick="javascript:clickFunction(this.id)">Ответ 3</button>
                    </td>
                    <td width="500">
                        laptop-laptop-
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="4" class="w3-btn w3-round-large w3-blue" onclick="javascript:clickFunction(this.id)">Ответ 4</button>
                    </td>
                    <td width="500">
                        Код не скомпилируется.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="5" class="w3-btn w3-round-large w3-purple" onclick="javascript:clickFunction(this.id)">Ответ 5</button>
                    </td>
                    <td width="500">
                        Ничего из перечисленного.
                    </td>
                </tr>
            </table>
            </form>
        </div>

        <% } else if (testKey < 10) { %>

        <div id="2">
            <div class="w3-container w3-center w3-sand">
                <h4>Вопрос 2</h4>
            </div>
            <div class="w3-container w3-sand w3-margin-bottom">
                Что из перечисленного является рекомендованным способом определения асинхронной задачи?
            </div>

            <form method="post" action="${pageContext.request.contextPath}/test-quest">
            <table style="font-size:100%">
                <tr>
                    <td valign="top" width="200">
                         <button id="11" class="w3-btn w3-round-large w3-red" onclick="javascript:clickFunction(this.id)">Ответ 1</button>
                    </td>
                    <td width="500">
                        Создать выражение Callable и передать его в экземпляр Executor.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="12" class="w3-btn w3-round-large w3-yellow" onclick="javascript:clickFunction(this.id)">Ответ 2</button>
                    </td>
                    <td width="500">
                        Создать класс наследник Thread и переопределить метод start().
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="13" class="w3-btn w3-round-large w3-green" onclick="javascript:clickFunction(this.id)">Ответ 3</button>
                    </td>
                    <td width="500">
                        Создать Runnable лямбда выражение и передать его в конструктор Thread.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="14" class="w3-btn w3-round-large w3-blue" onclick="javascript:clickFunction(this.id)">Ответ 4</button>
                    </td>
                    <td width="500">
                        Создать анонимный класс Runnable который переопределяет метод btgin.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="15" class="w3-btn w3-round-large w3-purple" onclick="javascript:clickFunction(this.id)">Ответ 5</button>
                    </td>
                    <td width="500">
                        Ничего из перечисленного.
                    </td>
                </tr>
            </table>
            </form>
        </div>

        <% } else if (testKey < 100) { %>

        <div id="3">
            <div class="w3-container w3-center w3-sand">
                <h4>Вопрос 3</h4>
            </div>
            <div class="w3-container w3-sand w3-margin-bottom">
                    Что отобразится в консоли когда в методе main() встретится следующий участок кода:
                <pre><code>
                    6: var list = new ArrayList<String>();
                    7: list.add("Monday");
                    8: list.add(String::new);
                    9: list.add("Tuesday");
                    10: list.remove(0);
                    11: System.out.println(list.get(0));
                </pre></code>
            </div>

            <form method="post" action="${pageContext.request.contextPath}/test-quest">
            <table style="font-size:100%">
                <tr>
                    <td valign="top" width="200">
                         <button id="21" class="w3-btn w3-round-large w3-red" onclick="javascript:clickFunction(this.id)">Ответ 1</button>
                    </td>
                    <td width="500">
                        null
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="22" class="w3-btn w3-round-large w3-yellow" onclick="javascript:clickFunction(this.id)">Ответ 2</button>
                    </td>
                    <td width="500">
                        пустая строка
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="23" class="w3-btn w3-round-large w3-green" onclick="javascript:clickFunction(this.id)">Ответ 3</button>
                    </td>
                    <td width="500">
                        Monday
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="24" class="w3-btn w3-round-large w3-blue" onclick="javascript:clickFunction(this.id)">Ответ 4</button>
                    </td>
                    <td width="500">
                        Код не скомпилируется.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="25" class="w3-btn w3-round-large w3-purple" onclick="javascript:clickFunction(this.id)">Ответ 5</button>
                    </td>
                    <td width="500">
                        Код скомпилируется, но выбросится runtime исключение.
                    </td>
                </tr>
            </table>
            </form>
        </div>

        <% } else if (testKey < 1000) { %>

        <div id="4">
        <div class="w3-container w3-center w3-sand">
                <h4>Вопрос 4</h4>
            </div>
            <div class="w3-container w3-sand w3-margin-bottom">
                В схеме наследования классов необходимо вставить два класса вместо знаков вопроса.
                <pre><code>
                    OutputStream
                        |
                    FilterOutputStream
                        |       |
                      ????    ????
                </pre></code>
            </div>

            <form method="post" action="${pageContext.request.contextPath}/test-quest">
            <table style="font-size:100%">
                <tr>
                    <td valign="top" width="200">
                         <button id="31" class="w3-btn w3-round-large w3-red" onclick="javascript:clickFunction(this.id)">Ответ 1</button>
                    </td>
                    <td width="500">
                        BufferedOutputStream и PrintStream
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="32" class="w3-btn w3-round-large w3-yellow" onclick="javascript:clickFunction(this.id)">Ответ 2</button>
                    </td>
                    <td width="500">
                        BufferedOutputStream и PrintOutputStream
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="33" class="w3-btn w3-round-large w3-green" onclick="javascript:clickFunction(this.id)">Ответ 3</button>
                    </td>
                    <td width="500">
                        ByteArrayOutputStream and Stream
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="34" class="w3-btn w3-round-large w3-blue" onclick="javascript:clickFunction(this.id)">Ответ 4</button>
                    </td>
                    <td width="500">
                        FileOutputStream и OutputStream
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="35" class="w3-btn w3-round-large w3-purple" onclick="javascript:clickFunction(this.id)">Ответ 5</button>
                    </td>
                    <td width="500">
                        ObjectOutputStream и PrintOutputStream
                    </td>
                </tr>
            </table>
            </form>
        </div>

        <% } else if (testKey < 10000) { %>

        <div id="5">
            <div class="w3-container w3-center w3-sand">
                <h4>Вопрос 5</h4>
            </div>
            <div class="w3-container w3-sand w3-margin-bottom">
                Какой способ или какие способы подходят для создания заглушек (mocks) в классе теста?
            </div>

            <form method="post" action="${pageContext.request.contextPath}/test-quest">
            <table style="font-size:100%">
                <tr>
                    <td valign="top" width="200">
                         <button id="41" class="w3-btn w3-round-large w3-red" onclick="javascript:clickFunction(this.id)">Ответ 1</button>
                    </td>
                    <td width="500">
                        <pre><code>
                             class CatTest {

                                @Test
                                void simpleTest() {
                                    Cat cat = Mockito.mock(Cat.class);
                                }
                            }
                        </pre></code>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="42" class="w3-btn w3-round-large w3-yellow" onclick="javascript:clickFunction(this.id)">Ответ 2</button>
                    </td>
                    <td width="500">
                        <pre><code>
                            import static org.mockito.Mockito.mock;

                            class CatTest {

                                @Test
                                void simpleTest() {
                                    Cat cat = mock(Cat.class);
                                }
                            }
                        </pre></code>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="43" class="w3-btn w3-round-large w3-green" onclick="javascript:clickFunction(this.id)">Ответ 3</button>
                    </td>
                    <td width="500">
                        <pre><code>
                            class CatTest {
                                @Mock
                                Cat cat;

                                @BeforeEach
                                void setUp() throw Exception {
                                    MockitoAnnotations.openMocks(this).close();
                                }

                                @Test
                                void simpleTest() {
                                    Cat cat = Mockito.mock(Cat.class);
                                }

                                @Test
                                void simpleTest() {
                                  // testing code
                                }
                            }
                        </pre></code>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="44" class="w3-btn w3-round-large w3-blue" onclick="javascript:clickFunction(this.id)">Ответ 4</button>
                    </td>
                    <td width="500">
                        Верны ответы 1 и 2.
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="200">
                         <button id="45" class="w3-btn w3-round-large w3-purple" onclick="javascript:clickFunction(this.id)">Ответ 5</button>
                    </td>
                    <td width="500">
                        Верны ответы 1, 2 и 3.
                    </td>
                </tr>
            </table>
            </form>
        </div>
        <% } %>

        <%
            if (testKey.equals(modelKey)) {
        %>
        <div id="7" class="w3-container w3-light-gray w3-left-align w3-padding" style="font-size:125%">
            <div class="w3-container w3-purple w3-left-align w3-padding-64 w3-padding-top-64 w3-center" style="font-size:500%">
                ${nameJS}, ПОЗДРАВЛЯЮ!
            </div>
            <div class="w3-container w3-deep-orange w3-left-align w3-padding-64 w3-padding-top-64 w3-center" style="font-size:500%">
                ТЕСТ-КВЕСТ ПРОЙДЕН УСПЕШНО!
            </div>
            <div class="w3-container w3-green w3-left-align w3-padding-64 w3-padding-top-64 w3-center" style="font-size:500%">
                УСПЕХОВ В ИЗУЧЕНИИ JAVA!
            </div>
        </div>
        <% } %>

        <% if ((testKey > 10000) && (patience > 0) && !testKey.equals(modelKey)) { %>
        <div id="8" class="w3-container w3-light-gray w3-left-align w3-padding" style="font-size:%">
            <div class="w3-container w3-sand w3-left-align w3-padding-64 w3-padding-top-64 w3-center" style="font-size:300%">
                ${nameJS}, ТЕСТ НЕ ПРОЙДЕН!<br/>
                НО ТЕРПЕНИЕ ЕЩЕ ЕСТЬ!<br/>
                МОЖНО ПРОБОВАТЬ ПРОЙТИ ТЕСТ ЕЩЕ РАЗ!<br/>
            <button class="w3-btn w3-round-large w3-grey w3-opacity" onclick="javascript:reloadFunction()" style="font-size:40%">Пройти тест заново</button>
            </div>
        </div>
        <% } %>

        <% if ((testKey > 10000) && (patience <= 0)) { %>
        <div id="9" class="w3-container w3-red w3-left-align w3-padding w3-center" style="font-size:500%">
            ${nameJS}, ТЕСТ НЕ ПРОЙДЕН!<br/>
            УВЫ! ТЕРПЕНИЕ ЗАКОНЧИЛОСЬ!<br/>
            ДЛЯ ИСПРАВЛЕНИЯ СИТУАЦИИ ЕСТЬ ДВА ПУТИ!<br/>
        </div>
        <% } %>

        <div id="6" class="w3-container w3-light-grey w3-opacity w3-left-align w3-padding" style="font-size:125%">
            <button class="w3-btn w3-round-large w3-grey" onclick="location.href='/quest-project'">К начальной странице</button>
        </div>

        <script type="text/javascript">
            function clickFunction(clicked_id) {
                var hid = document.getElementById("hidden-id");
                console.log(hid.value - 1);
                $.ajax({
                url: "/quest-project/test-quest",
                type: "POST",
                data: { paramClick: clicked_id, paramHiddenPatience: hid.value - 1},
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
                window.location.reload();
            }

            function reloadFunction() {
                var hid = 100;
                $.ajax({
                url: "/quest-project/test-quest",
                type: "POST",
                data: { param: 100},
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
                window.location.reload();
            }
        </script>
    </body>
</html>

