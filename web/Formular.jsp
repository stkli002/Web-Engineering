<%-- 
    Document   : Formular
    Created on : 19.06.2017, 12:41:47
    Author     : ExaShox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Startseite</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
        <link rel="icon" href="favicon.ico"/>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>       
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">             
                        <button type="button" 
                                class="navbar-toggle collapsed" 
                                data-toggle="collapse" 
                                data-target="#navbar" 
                                aria-expanded="false" 
                                aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>             
                        <a href="KontaktServlet?action=all">
                            <img alt="Logo" height="100" src="img/logo.png"/>
                        </a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="KontaktServlet?action=all">Startseite</a>
                        </li>
                        <li>
                            <a href="Vorstand.html">Vorstand</a>
                        </li>
                        <li class="active">
                            <a href="Formular.jsp">Formular</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div id="leftside" class="col-lg-2">
                leftside
            </div>

            <div id="center" class="col-lg-8">
                <form method="GET" action="KontaktServlet">
                    <fieldset id="formular">
                        <label>Vorname:</label>
                        <input type="text" name="firstname" autofocus="autofocus" required="required"/>
                        <br/>

                        <label>Nachname:</label>
                        <input type="text" name="lastname" required="required"/>
                        <br/>

                        <label>Datum:</label>
                        <input type="date" name="date" required="required"/>
                        <br/>

                        <label>Grund:</label>
                        <select name="description">
                            <option>Sonstiges</option>
                            <option>Feedback</option>
                            <option>Support</option>
                            <option>Kritik</option>
                        </select>
                        <br/>

                        <label>Nachricht:</label>
                        <textarea name="message" rows="4" cols="50"></textarea>
                        <br/>

                        <div style="width: 100%">
                            <button style="float: left;" type="submit">Absenden</button>
                            <button style="float: right;" type="reset">Löschen</button>
                        </div>

                        <input type="hidden" name="action" value="form"/>
                    </fieldset>
                </form>
            </div>

            <div id="rightside" class="col-lg-2">
                rightside
            </div>

            <div class="col-lg-12" id="footer">
                <p>
                    Besitzer: Stephan Klimek<br/>
                    Adresse: Donaldduckstr. 42<br/>
                    Tel.: 0815/1337<br/>
                </p>
            </div>
        </div>
    </body>
</html>