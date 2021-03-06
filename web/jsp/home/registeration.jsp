<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="core" %>
<%@taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Register</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <spring:url value="/resources/core/css/materialize.min.css" var="minCss"/>
        <spring:url value="/resources/core/img" var="img" />
        <link href="${minCss}" rel="stylesheet">
        <link href="${coreCss}" rel="stylesheet">
        <link href="${img}" rel="stylesheet">
        <style>
            body {
                display: flex;
                min-height: 100vh;
                flex-direction: column;
            }

            main {
                flex: 1 0 auto;
            }
        </style>
        <script>
            $(document).ready(function () {
                Materialize.updateTextFields();
            });
        </script>
    </head>
    <body class="indigo darken-1">
        <main>
            <nav class=" indigo darken-2" role="navigation">
                <div class="nav-wrapper container">
                    <a id="logo-container" href="#" class="brand-logo">Register</a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Login</a></li>
                    </ul>
                    <ul id="nav-mobile" class="side-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Login</a></li>
                    </ul>
                </div>
            </nav>
            <sform:form action="lecturer" modelAttribute="speaker">
                <div class="row">
                    <div class="col s4"></div>
                    <div class="row">
                        <div class="col s4">
                            <div class="card">
                                <div class="card-image">
                                    <img src="${img}/register.jpg">
                                    <span class="card-title">Register</span>
                                </div>
                                <div class="card-content">
                                    <p>
                                    <div class="input-field row">
                                        <i class="material-icons prefix">account_circle</i>
                                        <sform:input  path="username" id="icon_prefix" type="text" class="validate"/>
                                        <label for="icon_prefix">User Name</label>
                                    </div>
                                    <div class="input-field row">
                                        <i class="material-icons prefix">email</i>
                                        <sform:input path="email" id="icon_prefix" type="text" class="validate"/>
                                        <label for="icon_prefix">Email</label>
                                    </div>
                                    <div class="input-field row">
                                        <i class="material-icons prefix">lock_outline</i>
                                        <sform:input path="password"  id="icon_prefix" type="text" class="validate"/>
                                        <label for="icon_prefix">Password</label>
                                    </div>
                                    <div class="input-field row">
                                        <i class="material-icons prefix">lock_outline</i>
                                        <sform:input path="" id="icon_prefix" type="text" class="validate"/>
                                        <label for="icon_prefix">Password Again</label>
                                    </div>
                                    </p>
                                </div>
                                <div class="card-action center-align">
                                    <sform:button class="btn waves-effect waves-purple" type="submit" name="action">Submit
                                        <i class="material-icons right">send</i>
                                    </sform:button>
                                </div>
                            </div>
                        </div>
                    </div>
                </sform:form>

                <div class="col s4"></div>
            </div>
        </main>
        <footer class="page-footer  grey darken-3">
            <div class="footer-copyright">
                <div class="container">
                    <div class="mdl-logo" >&copy; WIlliam A Nadeeshani 2017</div>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <spring:url value="/resources/core/js/materialize.min.js" var="initJs" />
        <link href="${initJs}" rel="stylesheet">

    </body>
</html>


