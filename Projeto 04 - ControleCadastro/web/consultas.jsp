<%-- 
    Document   : consultas
    Created on : 19/04/2018, 08:56:21
    Author     : ASUS
--%>
<%@page import="br.com.fatecpg.controlcadastro.BdCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas</title>
    </head>
    <body>
        <!-- Barra de navegação -->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <h1> Consulta à Lista de cadastrados</h1>
        <fieldset>
                    <form action="">
                        <input type="radio" name="opcao" value="op1"> Listar Clientes
                        <input type="radio" name="opcao" value="op2"> Listar Forneceres<br> 
                        <input type="submit" name="lista" value="Listar">
                    </form>
        </fieldset>
        <h3> Esta página é pra listar a relação de cadastrados!!!!!</h3>
    </body>
</html>
