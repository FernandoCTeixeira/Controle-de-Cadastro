<%-- 
    Document   : cadastro de Fornecedor
    Created on : 18/04/2018, 02:43:28
    Author     : Nilson/Fernando
--%>

<!-- Ajustes  -->

<%@page import="br.com.fatecpg.controlcadastro.BdFornecedor"%>
<%@page import="br.com.fatecpg.controlcadastro.Fornecedor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
     int index = 0;
    Fornecedor f = new Fornecedor();
    f.setNome("");
    f.setRazaoSocial("");
    f.setCnpj("");
    f.setEmail("");
    f.setTelefone("");
    f.setEndereco ("");
            
    if(request.getParameter("add") != null)
    {
        
        f.setNome(request.getParameter("nome"));
        f.setRazaoSocial(request.getParameter("razaoSocial"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        BdFornecedor.getFornecedorList().add(f);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("del") != null)
    {
        BdFornecedor.getFornecedorList().remove(Integer.parseInt(request.getParameter("i")));
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("alt") !=null)
    {
 
        f.setNome(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getNome());
        f.setRazaoSocial(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getRazaoSocial());
        f.setCnpj(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getCnpj());
        f.setEmail(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getEmail());
        f.setTelefone(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getTelefone());
        f.setEndereco(BdFornecedor.getFornecedorList().get(Integer.parseInt(request.getParameter("i"))).getEndereco());
        index = Integer.parseInt(request.getParameter("i"));
    }
    if(request.getParameter("sal") != null)
    {
        
        f.setNome(request.getParameter("nome"));
        f.setRazaoSocial(request.getParameter("razaoSocial"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        BdFornecedor.getFornecedorList().set(Integer.parseInt(request.getParameter("index")), f);
        response.sendRedirect(request.getRequestURI());
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro fornecedor</title>
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
        <h1>CADASTRO DE FORNECEDOR</h1>
        <fieldset>
            <%
                      if(request.getParameter("alt") != null)
                      {
                    %>
                        <lengend>Alterar Dados do Fornecedor</lengend>
                    <%
                      }
                      else
                      {
                    %>
                        <lengend>Incluir Fornecedor</lengend>
                    <%
                      }
                    %>
           
            <form>
                <br>
                <table align="center">
                    <tr><th>Nome:</th><td><input type="text" style = "border: 1px solid #00ff00;" name="nome" value="<%= f.getNome() %>"/></td></tr>
                    <tr><th>Razão Social:</th><td><input type="text" style = "border: 1px solid #00ff00;" name="razaoSocial" value="<%= f.getRazaoSocial() %>"/></td></tr>
                    <tr><th>Cnpj:</th><td><input type="text" style = "border: 1px solid #00ff00;" name="cnpj" value="<%= f.getCnpj() %>"/></td></tr>
                    <tr><th>Email:</th><td><input type="email" style = "border: 1px solid #00ff00;" name="email" value="<%= f.getEmail()%>"/></td></tr>
                    <tr><th>Telefone:</th><td><input type="text" style = "border: 1px solid #00ff00;" name="telefone" value="<%= f.getTelefone()%>"/></td></tr>
                    <tr><th>Endereço:</th><td><input type="text" style = "border: 1px solid #00ff00;" name="endereco" value="<%= f.getEndereco()%>"/></td></tr>
              <%
                      if(request.getParameter("alt") != null)
                      {
              %>
                        <tr align="center"><td colspan="2">
                                <input type="submit" name="sal" value="Salvar"/>
                                <input type="hidden" name="index" value="<%=index%>">
                            </td></tr>
                    <%
                      }
                      else
                      {
                    %>
                     <tr align="center"><td colspan="2"><input type="submit" name="add" value="Adicionar"/></td></tr>
                    <%
                      }
                    %>  
                 
                </table>
            </form>
        </fieldset>
                    
        <hr>
       
         
          
            <form>
               Pesquisar
                <br>
                <td><input type="text" style = "border: 1px solid #00ff00;" name="parametro"/></td>
                <td><input type="submit" name="bus" value="Buscar"/></td>
            </form>
          
       
       
        <table border="1" >
            <tr><th>Indice</th><th>Nome</th><th>Razão Social</th><th>Cnpj</th><th>Email</th><th>Telefone</th><th>Endereço</th><th>-</th></tr>
<%
                if(request.getParameter("bus") != null && request.getParameter("parametro") != null){
                for(int i = 0; i < BdFornecedor.getFornecedorList().size(); i++){
                    if(request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getNome())||
                       request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getRazaoSocial())||
                       request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getCnpj())||
                       request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getEmail())||
                       request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getTelefone())||
                       request.getParameter("parametro").equals(BdFornecedor.getFornecedorList().get(i).getEndereco())
                      ){
            %>
            <tr>
                <td  align="center"><%=i+1%></td>
                
                <td><%=BdFornecedor.getFornecedorList().get(i).getNome()%></td>
                <td><%=BdFornecedor.getFornecedorList().get(i).getRazaoSocial()%></td>
                <td><%=BdFornecedor.getFornecedorList().get(i).getCnpj()%></td>
                <td><%=BdFornecedor.getFornecedorList().get(i).getEmail()%></td>
                <td><%=BdFornecedor.getFornecedorList().get(i).getTelefone()%></td>
                <td><%=BdFornecedor.getFornecedorList().get(i).getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="alt" value="Alterar">
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
            </tr>
            <%      } }
                }
                else
                {
                    for(int i = 0; i < BdFornecedor.getFornecedorList().size(); i++){%>
                <tr>
                    <td align="center"><%=i+1%></td>
                
                    <td><%=BdFornecedor.getFornecedorList().get(i).getNome()%></td>
                    <td><%=BdFornecedor.getFornecedorList().get(i).getRazaoSocial()%></td>
                    <td><%=BdFornecedor.getFornecedorList().get(i).getCnpj()%></td>
                    <td><%=BdFornecedor.getFornecedorList().get(i).getEmail()%></td>
                    <td><%=BdFornecedor.getFornecedorList().get(i).getTelefone()%></td>
                    <td><%=BdFornecedor.getFornecedorList().get(i).getEndereco()%></td>
                    <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="alt" value="Alterar">
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
                </tr>
                 <%   }
            }%>
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
