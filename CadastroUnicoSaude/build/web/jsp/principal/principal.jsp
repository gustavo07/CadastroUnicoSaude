<%-- 
    Document   : principal
    Created on : 16/05/2018, 23:32:04
    Author     : gusta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt">
  <head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">    
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../css/cadastroPaciente.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../../favicon.ico">
    <title>CadUnico - A plataforma da saúde</title>
  </head>

  <body>
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="../principal/principal.jsp">Cadastro Único de Saúde</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="../principal/principal.jsp">Principal</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">Paciente <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="../cadastro/paciente.jsp">Cadastrar</a></li>
                <li><a href="../cadastro/paciente.jsp">Alterar</a></li>
                <li><a href="../cadastro/paciente.jsp">Excluir</a></li>
                <li><a href="../cadastro/paciente.jsp">Consultar</a></li>
              </ul> 
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">Anamnese <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="../cadastro/anamnese.jsp">Cadastrar</a></li>
                <li><a href="../cadastro/anamnese.jsp">Alterar</a></li>
                <li><a href="../cadastro/anamnese.jsp">Excluir</a></li>
                <li><a href="../consulta/ConsultaAnamnese.jsp">Consultar</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>


    <div class="container">
      <div class="jumbotron">
        <h1>Cadastre um paciente</h1>
        <p>O sistema permite realizar diversas operações com apenas um simples cadastro é possível realizar um atendimento em qualquer unidades de saúde. Visando a saúde do paciente podemos melhorar o seu atendimento. Selecione uma das opções abaixo:</p>
        <p>
          <a class="btn btn-lg btn-primary" href="../cadastro/paciente.jsp" role="button">Cadastrar</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/paciente.jsp" role="button">Alterar</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/paciente.jsp" role="button">Consultar</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/paciente.jsp" role="button">Excluir</a>
        </p>
      </div>
      <div class="jumbotron">
        <h1>Anamnese</h1>
        <p>Os dados de uma consulta médica são imprescindíveis para que possa ser feito de forma acertiva o diagnóstico do paciente, para que possa ser medicado corretamente.</p>
        <p>
          <a class="btn btn-lg btn-primary" href="../cadastro/anamnese.jsp" role="button">Crie uma anamnese</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/anamnese.jsp" role="button">Alterar</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/anamnese.jsp" role="button">Consultar</a>
          <a class="btn btn-lg btn-primary" href="../cadastro/anamnese.jsp" role="button">Excluir</a>
        </p>
      </div>
    </div> 
    <script src="../../../js/principal.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

