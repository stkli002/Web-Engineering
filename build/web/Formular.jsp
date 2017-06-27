<%-- 
    Document   : Formular
    Created on : 19.06.2017, 12:41:47
    Author     : ExaShox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
﻿<html>
    <head>
        <title>Formular</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="top">
            <img height="100" src="img/logo.png"/>
            <ul>
                <li><a href="KontaktServlet?action=all">Startseite</a></li>
                <li><a href="Vorstand.html">Vorstand</a></li>
                <li><a href="Formular.jsp">Formular</a></li>
            </ul>
        </div>

        <div id="content">
            <div id="leftside">
                leftbar
            </div>

            <div id="center">
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

            <div id="rightside">
                rightbar
            </div>
        </div>

        <div id="footer">
            <p>
                Besitzer: Stephan Klimek<br/>
                Adresse: Donaldduckstr. 42<br/>
                Tel.: 0815/1337<br/>
            </p>
        </div>
    </body>
</html>
