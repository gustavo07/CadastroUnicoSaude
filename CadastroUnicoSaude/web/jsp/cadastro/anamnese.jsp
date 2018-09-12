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
        <!--<form name="anamneseform" method="post">-->
            <fieldset>
                <div class="panel panel-primary">
                    <div class="panel-heading">&nbsp &nbsp &nbsp &nbsp &nbsp Anamnese</div>
                </div>
            </fieldset>
            <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#tab1" data-toggle="tab">Dados paciente</a></li>
                <li><a href="#tab2" data-toggle="tab">Dados consulta</a></li>
                <li><a href="#tab3" data-toggle="tab">Motivo</a></li>
                <li><a href="#tab4" data-toggle="tab">Duração</a></li>
                <li><a href="#tab5" data-toggle="tab">Tratamento</a></li>
            </ul>
            <!-------------------------------------------------TAB DADOS PACIENTE-->
            <div class="tab-content">
                <div class="tab-pane conteudo-pagina-anamnese active" id="tab1">
                    <br><br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="cpf">CPF <h11>*</h11></label>  
                        <div class="col-md-2">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                                <input id="cpf" name="cpf" class="form-control" placeholder="000.000.000-00" type="text" maxlength="14">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">
                                <span class="glyphicon glyphicon-search"></span> 
                                Consultar
                            </button>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="nome">Nome <h11>*</h11></label> 
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="nome" name="nome" class="form-control" readonly="readonly" placeholder="Nome Completo" type="text" maxlength="50">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="datanasc">Data de nascimento <h11>*</h11></label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <input id="datanasc" name="datanasc" readonly="readonly" placeholder="DD / MM / AAAA" class="form-control input-md" required="" value="" type="search" maxlength="8">
                                </div>
                            </div>

                        </div>
                        <br><br><br>
                        <label class="col-md-2 control-label" for="altura">Altura <h11>*</h11></label>  
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-sort-by-order"></i></span>
                                <input id="altura" name="altura" placeholder="Ex.:1,94" class="form-control input-md" required="" value="" type="text" maxlength="4">
                            </div>
                        </div>


                        <label class="col-md-2 control-label" for="peso">Peso <h11>*</h11></label>  
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-sort-by-order"></i></span>
                                <input id="peso" name="peso" placeholder="Ex.:80,6" class="form-control input-md" required="" value="" type="text" maxlength="5">
                            </div>
                        </div>

                        <a class="btn btn-primary btnNext btn-proximo" >
                            &nbsp;<span class="glyphicon glyphicon-arrow-right"></span> &nbsp;</a>
                    </div><br><br>
                </div>


                <!-------------------------------------------------TAB DADOS DE CONSULTA-->


                <div class="tab-pane conteudo-pagina-anamnese" id="tab2">

                    <div class="form-group">
                        <label class="col-md-2 control-label" for="RestriAlimentar">Restrição alimentar <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="RestriAlimentar" name="RestriAlimentar" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>
                        <label class="col-md-2 control-label" for="restricaoTipo">Qual restrição? <h11>*</h11></label>  
                        <div class="col-md-3">
                            <input id="restricaoTipo" name="restricaoTipo" class="form-control" placeholder="Qual restrição?" type="text" maxlength="30">
                        </div>
                    </div>
                    <br><br><br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="AlimSaudavel">Alimentação saudável <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="AlimSaudavel" name="AlimSaudavel" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>

                        <label class="col-md-2 control-label" for="AtividadeFisica">Atividade física <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="AtividadeFisica" name="AtividadeFisica" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="Fumante">Fumante <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="Fumante" name="Fumante" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>

                        <label class="col-md-2 control-label" for="ingerirBebida">Ingeriu de bebida <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="IngerirBebida" name="IngerirBebida" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="outro">Outros </label>  
                        <div class="col-md-3">
                            <input id="outro" name="outro" placeholder="Outro" class="form-control input-md" required="" type="text" maxlength="50">
                        </div>
                        <a class="btn btn-primary btnNext btn-proximo" >
                            &nbsp;<span class="glyphicon glyphicon-arrow-right"></span> &nbsp;</a>
                        <a class="btn btn-primary btnPrevious btn-voltar" >
                            &nbsp;<span class="glyphicon glyphicon-arrow-left"></span> &nbsp;</a>
                    </div>
                </div>




                <!--------------------------- TAB MOTIVO ----------------------->




                <div class="tab-pane conteudo-pagina-anamnese" id="tab3">
                    <br><br><br>
                    <label class="col-md-2 control-label" for="Nome">Descrição <h11>*</h11></label>  
                    <div class="col-md-2">
                        <textarea class="form-control input-md"  name="Text1" cols="40" rows="5" style="margin: 0px -603.547px 0px 0px; width: 575px; height: 155px;"></textarea>
                    </div>
                    <a class="btn btn-primary btnNext btn-proximo" >
                        &nbsp;<span class="glyphicon glyphicon-arrow-right"></span> &nbsp;</a>
                    <a class="btn btn-primary btnPrevious btn-voltar" >
                        &nbsp;<span class="glyphicon glyphicon-arrow-left"></span> &nbsp;</a>
                </div>


                <!--------------------------- TAB DURACAO ----------------------->

                <div class="tab-pane conteudo-pagina-anamnese" id="tab4">
                    <br><br><br>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="datatimepicker3">Data inicio <h11>*</h11></label>  
                        <div class="container">
                            <div class='col-md-3'>
                                <div class="form-group">
                                    <div class='input-group date' id='datetimepicker3'>
                                        <input type='text' class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="PrimeiraVez">Já sentiu isso? <h11>*</h11></label>
                        <div class="col-md-3">
                            <select required id="primeiraVez" name="primeiraVez" class="form-control">
                                <option value="Selecione">Selecione...</option>
                                <option value="Sim">Sim</option>
                                <option value="Nao">Não</option>
                            </select>
                        </div>
                    </div>

                    <a class="btn btn-primary btnNext btn-proximo" >
                        &nbsp;<span class="glyphicon glyphicon-arrow-right"></span> &nbsp;</a>
                    <a class="btn btn-primary btnPrevious btn-voltar" >
                        &nbsp;<span class="glyphicon glyphicon-arrow-left"></span> &nbsp;</a>
                </div>

                <!----------------------------------ABA TRATAMENTO--------------->
                <div class="tab-pane conteudo-pagina-anamnese" id="tab5">
                    <br><br><br>
                    <label class="col-md-2 control-label" for="Nome">Medicamentos</label> 
                    <div class="col-md-2">
                        <textarea class="form-control input-md"  name="Text1" cols="40" rows="5" style="margin: 0px -603.547px 0px 0px; width: 575px; height: 155px;"></textarea>
                    </div>
                    <button id="Cadastrar" name="Cadastrar" class="btn btn-success btn-proximo" type="Submit">Concluir</button>&nbsp &nbsp &nbsp
                    <button id="Cadastrar" name="Cadastrar" class="btn btn-danger btn-voltar" type="Reset">Cancelar</button>&nbsp &nbsp &nbsp

                </div>
            </div>
        <!--</form>-->
        <script src="../../js/cadastroAnamnese_js.js"></script>
        <script>
                                $('.btnNext').click(function () {
                                    $('.nav-tabs > .active').next('li').find('a').trigger('click');
                                });
                                $('.btnPrevious').click(function () {
                                    $('.nav-tabs > .active').prev('li').find('a').trigger('click');
                                });
                                $('.item div').hide();
                                var all_spans = $('.item button').parent().find('div');
                                $('.item button').click(function (e) {
                                    e.preventDefault();
                                    all_spans.hide();
                                    $this = $(this).parent().find('div');
                                    // here is what I want to do
                                    if ($this.is(':hidden')) {
                                        $(this).parent().find('div').show();
                                    } else {
                                        $(this).parent().find('div').hide();
                                    }
                                });

                                $(function () {
                                    $('#datetimepicker3').datetimepicker({
                                        format: 'DD/MM/YYYY'
                                    });
                                });
        </script>
    </body>
</html> 

