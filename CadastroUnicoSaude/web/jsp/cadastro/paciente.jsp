<%-- 
    Document   : paciente
    Created on : 16/05/2018, 23:36:33
    Author     : gusta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Paciente</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" >
        <link href="../../css/cadastroPaciente.css" rel="stylesheet">
        <script src="../../js/jquery-1.11.1.min.js"></script>
        <script src="../../js/jquery.mask.min.js"></script>
        <script src="../../js/bootstrap-notify.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/cadastroPaciente_js.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#datanascimento').mask('00/00/0000');
                $('#rg').mask('00.000.000-0');
                $('#cpf').mask('000.000.000-00');
                $('#celular').mask('(00) 00000-0000');
                $('#telefone').mask('(00) 0000-0000');
                $('#cep').mask('00000-000');
            })
            function enviarFormulario() {
                if ($('#nome').value.length > 19) {
                    $.notify({
                        message: 'Maior'
                    }, {
                        type: 'info'
                    });
                } else {
                    $.notify({
                        message: 'FGAVHABHABHBA'
                    }, {
                        type: 'danger'
                    });
                }
                return false;
            }

        </script>
    </head>
    <body>
        <nav id="nav" class="navbar navbar-default navbar-static-top">
            <div id="container" class="container">
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
                </div>
            </div>
        </nav>
       <!-- <form class="form-horizontal" name="pacienteform" action="../principal/principal.jsp" method="post" onsubmit="return enviarFormulario()">-->
            <fieldset>
                <div class="panel panel-primary">
                    <div class="panel-heading">&nbsp &nbsp &nbsp &nbsp &nbsp Paciente</div>
                </div>
            </fieldset>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-md-2 control-label" for="cpf">CPF <h11>*</h11></label>  
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="cpf" name="cpf" class="form-control" placeholder="000.000.000-00" type="text" maxlength="14">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button type="button" id="btnPesquisaPaciente" class="btn btn-primary" onclick="pesquisacep(cep.value)">
                            <span class="glyphicon glyphicon-search"></span>
                            Consultar
                        </button>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="rg">RG <h11>*</h11></label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input id="rg" name="rg" class="form-control" placeholder="00.000.000-0" type="text" maxlength="12">
                        </div>
                    </div>

                    <label class="col-md-1 control-label" for="datanascimento">Nascimento<h11>*</h11></label>  
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            <input id="calendar" name="calendar" class="form-control" placeholder="DD/MM/AAAA" type="text" maxlength="10">
                        </div>
                    </div>

                    <label class="col-md-1 control-label" for="CorPele">Cor pele<h11>*</h11></label>
                    <div class="col-md-2">
                        <select required="" id="CorPele" name="CorPele" class="form-control">
                            <option value="Selecione">Selecione...</option>
                            <option value="Solteiro(a)">Branco</option>
                            <option value="Casado(a)">Pardo</option>
                            <option value="Divorciado(a)">Negro</option>
                            <option value="Viuvo(a)">Viuvo(a)</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="nome">Nome <h11>*</h11></label>  
                    <div class="col-md-8">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="nome" name="nome" class="form-control" placeholder="Nome Completo" type="text" maxlength="50">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="celular">Celular <h11>*</h11></label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                            <input id="celular" name="celular" class="form-control" placeholder="(00) 00000-0000" required="" type="text" maxlength="13">
                        </div>
                    </div>

                    <label class="col-md-1 control-label" for="telefone">Telefone</label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <input id="telefone" name="telefone" class="form-control" placeholder="(00) 0000-0000" type="text" maxlength="12">
                        </div>
                    </div>
                    <!-- Multiple Radios (inline) -->

                    <label class="col-md-1 control-label" for="radios">Sexo <h11>*</h11></label>
                    <form>
                        <label for="male" class="radio-inline">
                            <input type="radio" name="gender" id="male" value="male">Masculino </label>
                        <label for="female" class="radio-inline">
                            <input type="radio" name="gender" id="female" value="female"> Feminino</label>
                    </form>
                </div> 

                <div class="form-group">
                    <label class="col-md-2 control-label" for="email">E-mail <h11>*</h11></label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input id="email" name="email" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
                        </div>
                    </div>
                    <label class="col-md-1 control-label" for="naturalidade">Naturalidade<h11>*</h11></label>  
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input id="naturalidade" name="naturalidade" class="form-control" placeholder="Ex.: Brasileiro" type="text" maxlength="25">
                        </div>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="cep">CEP <h11>*</h11></label>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input id="cep" name="cep" class="form-control" placeholder="00000-000" type="text" maxlength="9">
                        </div>
                    </div>

                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">
                            <span class="glyphicon glyphicon-search"></span>
                            Pesquisar
                        </button>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="endereco">Endereço</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">Rua</span>
                            <input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                        </div>

                    </div>
                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon">Nº <h11>*</h11></span>
                            <input id="numero" name="numero" class="form-control" placeholder="" required=""  type="text">
                        </div>

                    </div>

                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon">Bairro</span>
                            <input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="cidade"></label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">Cidade</span>
                            <input id="cidade" name="cidade" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
                        </div>

                    </div>

                    <div class="col-md-2">
                        <div class="input-group">
                            <span class="input-group-addon">Estado</span>
                            <input id="estado" name="estado" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label" for="EstadoCivil">Estado Civil <h11>*</h11></label>
                    <div class="col-md-2">
                        <select required id="EstadoCivil" name="EstadoCivil" class="form-control">
                            <option value="Selecione">Selecione...</option>
                            <option value="Solteiro(a)">Solteiro(a)</option>
                            <option value="Casado(a)">Casado(a)</option>
                            <option value="Divorciado(a)">Divorciado(a)</option>
                            <option value="Viuvo(a)">Viuvo(a)</option>
                        </select>
                    </div>
                    <label class="col-md-2 control-label" for="TipoSanguineo">Tipo sanguíneo <h11>*</h11></label>
                    <div class="col-md-2">
                        <select required id="TipoSanguineo" name="TipoSanguineo" class="form-control">
                            <option value="Selecione">Selecione...</option>
                            <option value="A">A </option>
                            <option value="B">B</option>
                            <option value="AB">AB</option>
                            <option value="O">O</option>
                        </select>
                    </div>
                </div>

                <br>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="Cadastrar"></label>
                    <div class="col-md-8">
                        <center>
                            <button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">
                                <span class="glyphicon glyphicon-send"></span>
                                Cadastrar
                            </button>&nbsp &nbsp &nbsp
                            <button id="Cancelar" name="Cancelar" class="btn btn-default" type="Reset">
                                <span class="glyphicon glyphicon-remove"></span>
                                Cancelar
                            </button>&nbsp &nbsp &nbsp 
                            <button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">
                                <span class="glyphicon glyphicon-trash"></span>
                                Excluir
                            </button>&nbsp &nbsp &nbsp 
                            <button id="Alterar" name="Alterar" class="btn btn-warning"  type="Submit">
                                <span class="glyphicon glyphicon-pencil"></span>
                                Alterar
                            </button>
                        </center>
                    </div>
                </div>


            </div>
        <!--</form>-->
    </body>
</html>