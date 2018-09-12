<%-- 
    Document   : login
    Created on : 16/05/2018, 22:49:34
    Author     : gusta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
    <div class="container">
    <br>  <p class="text-center">Cadastro Único de Saúde</p>
    <hr>
        <center><aside class="col-sm-4">
        <br>
        <div class="card">
        <article class="card-body">
                <h4 class="card-title text-center mb-4 mt-1">Acesso ao portal</h4>
                <hr>
                <p class="text-success text-center">Insira os dados de usuário</p>
                <form name="FORMLOGIN" action="principal.jsp" method="post">
                <div class="form-group">
                <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                         </div>
                        <input name="email" class="form-control" placeholder="E-mail" type="email">
                </div> 
                </div> 
                <div class="form-group">
                <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                         </div>
                    <input class="form-control" name="senha" placeholder="Senha" type="password">
                </div>
                </div>
                <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block"> Entrar  </button>
                </div>
                </form>
        </article>
        </div>
        </aside> <!-- col.// --></center>
    </div>
</body>
</html>