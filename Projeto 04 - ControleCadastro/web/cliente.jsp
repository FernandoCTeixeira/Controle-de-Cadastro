<%-- 
    Document   : home
    Created on : 18/04/2018, 02:43:28
    Author     : Fernando
--%>
<!--Agora é hora dos ajustes...-->

<%@page import="br.com.fatecpg.controlcadastro.BdCliente"%>
<%@page import="br.com.fatecpg.controlcadastro.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("add") != null)
    {
        Cliente c = new Cliente();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        BdCliente.getClienteList().add(c);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("del") != null)
    {
        BdCliente.getClienteList().remove(Integer.parseInt(request.getParameter("i")));
        response.sendRedirect(request.getRequestURI());
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro cliente</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Clean responsive bootstrap website template">
        <meta name="author" content="">
  <!-- styles -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
        <link href="assets/css/docs.css" rel="stylesheet">
        <link href="assets/css/prettyPhoto.css" rel="stylesheet">
        <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">
        <link href="assets/css/flexslider.css" rel="stylesheet">
        <link href="assets/css/refineslide.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700" rel="stylesheet">

        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/color/default.css" rel="stylesheet">
    </head>
    <body>
        <section main="content">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br><br>
        <br><br><br>
        <center>
        <h1>CADASTRO DE CLIENTE</h1>
        <fieldset>
            <lengend>Incluir Contato</lengend>
            <form>
                <table align="center">
                    <tr><th>Nome:</th><td><input type="text" name="nome"/></td></tr>
                    <tr><th>Cpf:</th><td><input type="text" name="cpf"/></td></tr>
                    <tr><th>Rg:</th><td><input type="text" name="rg"/></td></tr>
                    <tr><th>Email:</th><td><input type="email" name="email"/></td></tr>
                    <tr><th>Telefone:</th><td><input type="text" name="telefone"/></td></tr>
                    <tr><th>Endereço:</th><td><input type="text" name="endereco"/></td></tr>
                    <tr align="center"><td colspan="2"><input type="submit" name="add" value="Adicionar"/></td></tr>
                </table>
            </form>
        </fieldset>
        <hr>
        <table border="1">
            <tr><th>Indice</th><th>Nome</th><th>Cpf</th><th>Rg</th><th>Email</th><th>Telefone</th><th>Endereço</th><th>-</th></tr>
            <%for(int i = 0; i < BdCliente.getClienteList().size(); i++){%>
            <tr>
                <td><%=i%></td>
                
                <td><%=BdCliente.getClienteList().get(i).getNome()%></td>
                <td><%=BdCliente.getClienteList().get(i).getCpf()%></td>
                <td><%=BdCliente.getClienteList().get(i).getRg()%></td>
                <td><%=BdCliente.getClienteList().get(i).getEmail()%></td>
                <td><%=BdCliente.getClienteList().get(i).getTelefone()%></td>
                <td><%=BdCliente.getClienteList().get(i).getEndereco()%></td>
                
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        <br>
        </center>
        </section>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
  <script src="assets/js/jquery.js"></script>
  <script src="assets/js/modernizr.js"></script>
  <script src="assets/js/jquery.easing.1.3.js"></script>
  <script src="assets/js/google-code-prettify/prettify.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/jquery.prettyPhoto.js"></script>
  <script src="assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="assets/js/portfolio/setting.js"></script>
  <script src="assets/js/hover/jquery-hover-effect.js"></script>
  <script src="assets/js/jquery.flexslider.js"></script>
  <script src="assets/js/classie.js"></script>
  <script src="assets/js/cbpAnimatedHeader.min.js"></script>
  <script src="assets/js/jquery.refineslide.js"></script>
  <script src="assets/js/jquery.ui.totop.js"></script>
  <!-- Template Custom Javascript File -->
  <script src="assets/js/custom.js"></script>
</html>
