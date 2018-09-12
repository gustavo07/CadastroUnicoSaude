<%-- 
    Document   : anamnese
    Created on : 17/05/2018, 09:26:01
    Author     : gusta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Anamnese</title>
        <link href="../../css/cadastroPaciente.css" rel="stylesheet">
        <script src="../../js/jquery-1.11.1.min.js"></script>
        <script src="../../js/moment.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/jquery.mask.min.js"></script>
        <script src="../../js/bootstrap-datetimepicker.min.js"></script>
        <link href="../../css/cadastroAnamnese.css" rel="stylesheet">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" >
        <link href="../../css/bootstrap-datetimepicker.min.css" rel="stylesheet" >
        <link href="../../css/bootstrap-datetimepicker-standalone.css" rel="stylesheet" >
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript">
            $(document).ready(function () {
                $('#cpf').mask('000.000.000-00');
                $('#altura').mask('0,00');
            })
        </script>
        <style>
            .conteudo-pagina-anamnese{
                margin-left: 65px;
                margin-top: 10px;
            }
            .btn-proximo{
                position: absolute;
                top: 480px;
                left: 1125px;
            }

            .btn-voltar{
                position: absolute;
                top: 480px;
                left: 1025px;
            }
        </style>

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
                                <li><a href="paciente.jsp">Cadastrar</a></li>
                                <li><a href="#">Alterar</a></li>
                                <li><a href="#">Excluir</a></li>
                                <li><a href="#">Consultar</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">Anamnese <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="anamnese.jsp">Cadastrar</a></li>
                                <li><a href="#">Alterar</a></li>
                                <li><a href="#">Excluir</a></li>
                                <li><a href="#">Consultar</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="text-right" style="margin-top: 10px;">
                        <form action="/app" method="get">
                            ${usuarioLogado.name} <input type="hidden" name="tarefa"
                                   value="Logout" />
                            <button type="submit" class="btn btn-danger">

                                Sair &nbsp <span class="glyphicon glyphicon-log-out"></span>
                            </button>
                        </form>
                    </div>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <form name="anamneseform" method="post">
            <fieldset>
                <div class="panel panel-primary">
                    <div class="panel-heading">&nbsp &nbsp &nbsp &nbsp &nbsp Consulta Anamnese</div>
                </div>
            </fieldset>
             <div class="panel-body">
                <div class="form-group">
                    <label class="col-md-2 control-label" for="codconsulta">Código de consulta <h11>*</h11></label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="codconsulta" name="codconsulta" class="form-control" placeholder="0000" type="text" maxlength="12">
                        </div>
                    </div>
                    <label class="col-md-2 control-label" for="cpf">CPF <h11>*</h11></label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="cpf" name="cpf" class="form-control" placeholder="00.000.000-0" type="text" maxlength="12">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button type="button" id="btnPesquisaPaciente" class="btn btn-primary btn-lg" onclick="pesquisacep(cep.value)">
                            <span class="glyphicon glyphicon-search"></span>
                            Consultar
                        </button>
                    </div>
                </div>
                 <br><br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="dataconsulta">Data consulta</label>  
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            <input id="dataconsulta" name="dataconsulta"    class="form-control" placeholder="DD/MM/AAAA" type="text" maxlength="10">
                        </div>
                    </div>
                    <label class="col-md-2 control-label" for="datainicio">Data inicio</label>  
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            <input id="datainicio" name="datainicio"   class="form-control" placeholder="DD/MM/AAAA" type="text" maxlength="10">
                        </div>
                    </div>
                    <label class="col-md-1 control-label" for="sentiuIsso">Já sentiu isso?</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="sentiuIsso" name="sentiuIsso" class="form-control"   placeholder="" required="" type="text" maxlength="13">
                        </div>
                    </div>
                </div>
                 <br><br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="nome">Nome</label>  
                    <div class="col-md-9">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="nome" name="nome" class="form-control" placeholder="Nome Completo"   type="text" maxlength="50">
                        </div>
                    </div>
                </div>
                 <br><br>   
                <div class="form-group">
                    <label class="col-md-2 control-label" for="alimSaudavel">Alimentação saudável</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="alimSaudavel" name="alimSaudavel" class="form-control" placeholder="Ex.: 1,92"   type="text" maxlength="12">
                        </div>
                    </div>
                    <label class="col-md-2 control-label" for="peso">Peso</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="peso" name="peso" class="form-control" placeholder="Ex.: 80,67" required=""    type="text" maxlength="13">
                        </div>
                    </div>

                    <label class="col-md-1 control-label" for="altura">Altura</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="altura" name="altura" class="form-control" placeholder="Ex.: 1,92" type="text"   maxlength="12">
                        </div>
                    </div>
                    <br><br>
                    

                    
                </div> 

                <div class="form-group">
                    <label class="col-md-2 control-label" for="atividadeFisica">Atividade fisica</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="atividadeFisica" name="atividadeFisica" class="form-control" placeholder=""   type="text" maxlength="12">
                        </div>
                    </div>
                    
                    <label class="col-md-2 control-label" for="ingeriuBebida">Ingeriu bebida alcoolica</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="ingeriuBebida" name="ingeriuBebida" class="form-control" placeholder="" type="text"   maxlength="12">
                        </div>
                    </div>
                    
                    <label class="col-md-1 control-label" for="fumante">Fumante</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="fumante" name="fumante" class="form-control" placeholder="" required="" type="text"   maxlength="13">
                        </div>
                    </div>
                </div>
                 <br><br><br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="restAlimentar">Restrição alimentar</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="restAlimentar" name="restAlimentar" class="form-control" placeholder=""   type="text" maxlength="9">
                        </div>
                    </div>

                    <label class="col-md-2 control-label" for="restAlimentarTipo">Qual restrição</label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="restAlimentarTipo" name="restAlimentarTipo" class="form-control" placeholder=""   type="text" maxlength="9">
                        </div>
                    </div>
                    
                </div>
                 <br><br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="outros">Outros</label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="outros" name="outros" class="form-control" placeholder="" type="text"   maxlength="9">
                        </div>
                    </div>
                    <label class="col-md-2 control-label" for="tiposangue">Tipo de sangue</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="tiposangue" name="tiposangue" class="form-control" placeholder="" type="text"   maxlength="9">
                        </div>
                    </div>
                </div>
                 <br><br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="medicamento">Medicamentos</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="medicamento" name="medicamento" class="form-control" placeholder="" type="text"   maxlength="25">
                        </div>
                    </div>
                </div>
                 <br><br>
                 <div class="form-group">
                    <label class="col-md-2 control-label" for="descricao">Descrição</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="descricao" name="descricao" class="form-control" placeholder="" type="text"   maxlength="50">
                        </div>
                    </div>
                </div>
                 <br><br>
                
                <div class="form-group">
                    <label class="col-md-2 control-label"></label>
                    <div class="col-md-8">
 
                        <center>
                            <button id="cancelar" name="cancelar" class="btn btn-default" type="Reset">
                                <span class="glyphicon glyphicon-remove"></span>
                                Cancelar
                            </button>&nbsp &nbsp &nbsp 
                            <button id="excluir" name="excluir" class="btn btn-danger" type="Reset">
                                <span class="glyphicon glyphicon-trash"></span>
                                Excluir
                            </button>&nbsp &nbsp &nbsp 
                            <button id="alterar" name="alterar" class="btn btn-warning"  type="Submit">
                                <span class="glyphicon glyphicon-pencil"></span>
                                Alterar
                            </button>
                        </center>
                    </div>
                </div>


            </div>
        </form>
    </body>
</html> 

