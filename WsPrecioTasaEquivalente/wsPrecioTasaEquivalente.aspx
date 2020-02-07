<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wsPrecioTasaEquivalente.aspx.cs" Inherits="WsSiopel2.wsPrecioTasaEquivalente" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid" id="content">
                <link href="css/bootstrap-grid.css" rel="stylesheet" />
                <link href="css/bootstrap-grid.min.css" rel="stylesheet" />
                <link href="css/bootstrap-reboot.css" rel="stylesheet" />
                <link href="css/bootstrap-reboot.min.css" rel="stylesheet" />
                <link href="css/bootstrap-responsive.css" rel="stylesheet" />
                <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
                <link href="css/bootstrap.css" rel="stylesheet" />
                <link href="css/bootstrap.min.css" rel="stylesheet" />
                <link href="css/bootstrap.min2.css" rel="stylesheet" />
                <link href="css/font-awesome.min2.css" rel="stylesheet" />
                <link href="css/select2.css" rel="stylesheet" />
                <link href="css/style.css" rel="stylesheet" />
                <link href="css/style__not-minified.css" rel="stylesheet" />
                <link href="css/StyleSheet1.css" rel="stylesheet" />
                <link href="css/themes.css" rel="stylesheet" />
                <link href="css/themes__not-minified.css" rel="stylesheet" />
                <link href="./css/bootstrap.min2.css" rel="stylesheet" />
                <link rel="stylesheet" href="css/plugins/datatable/TableTools.css"/>

                <link href="../css/plugins/datatable/datatables11015.min.css" rel="stylesheet" />
                <%--<script src="js/application.js"></script>--%>
                <%--<script src="js/application.min.js"></script>--%>
                <script src="js/bootstrap.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <%-- <script src="js/demonstration.js"></script>
                <script src="js/demonstration.min.js"></script>
                <script src="js/eakroko.js"></script>--%>
                <script src="js/eakroko.min.js"></script>
                <script src="js/jquery-latest.js"></script>
                <script src="js/jquery.min.js"></script>
                <script src="js/jquery.min2.js"></script>
                <script src="js/jquery3.2.1.min.js"></script>

                
                 <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
                <script src="js/plugins/datatable/TableTools.min.js"></script>
                <script src="js/plugins/datatable/ColReorderWithResize.js"></script>
                <script src="js/plugins/datatable/ColVis.min.js"></script>
                <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
                <script src="js/plugins/datatable/jquery.dataTables.grouping.js"></script>

                <asp:HiddenField ID="hdsecuencia" runat="server" />
                <asp:Panel runat="server" ID="pnlEdit">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="box box-color text-white box-bordered">
                                <div class="box-title box-color">
                                    <h3><i class="fa fa-list"></i>1. Consulta Precio Tasa Equivalente</h3> 
                                     <div class="actions">
                                        <%--<button type="button" id="Button1" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="btnTrading_Click">
                                            <i class="icon-save"></i><strong>&nbsp Trading</strong>
                                        </button>--%>
                                        <button type="button" id="BtnCalcular" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="BtnCalcular_Click" >  
                                            <i class="icon-search"></i><strong>&nbsp Calcular</strong>
                                        </button>
                                    </div>
                                </div>
                                <div class="box-content nopadding">
                                    <div class='form-horizontal form-column form-bordered'>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Precio Tasa</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPrecioTasa" id="txtPrecioTasa" placeholder="Digite Aqui" value="prueba" class="input-block-level" runat="server"  />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Moneda</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtMoneda" id="txtMoneda" placeholder="Digite Aqui" value="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Equivalente</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtEquivalente" id="txtEquivalente" placeholder="" value="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>

                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>
            </div>
        </div>

        </asp:Panel>
            </div>
        </div>
    </form>
</body>

</html>
