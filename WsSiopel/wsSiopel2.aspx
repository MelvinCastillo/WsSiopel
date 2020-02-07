<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wsSiopel2.aspx.cs" Inherits="WsSiopel2.wsSiopel2" %>

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
                                    <h3><i class="fa fa-list"></i>1. Autenticación</h3>
                                    <%--<div class="actions">
                                        <button type="button" id="tbnAdd" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="btnlogin_Click">
                                            <i class="icon-plus-sign"></i><strong>&nbsp Login</strong>
                                        </button>

                                        <button type="button" id="tbnlogout" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="bnlogout_Click"> 
                                            <i class="icon-power-off"></i><strong>&nbsp Logout</strong>
                                        </button>
                                    </div>--%>
                                </div>
                                <div class="box-content nopadding">
                                    <div class='form-horizontal form-column form-bordered'>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Clave Sistema Interno</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtclave" id="txtclave" placeholder="Digite Aqui" value="SIWS6666" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Referencia</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtreferencia" id="txtreferencia" placeholder="Digite Aqui" value="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblclave" class="control-label col-sm-2">Pata 2 </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPata2" id="txtPata2" placeholder="" value="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2">
                                                        Session ID</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtsessionWS" id="txtsessionWS" placeholder="Digite Aqui" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="lblRespuesta" class="control-label col-sm-2">
                                                        Respuesta</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtRespuesta" id="txtRespuesta" placeholder="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblRespuesta" class="control-label col-sm-2">
                                                        Relacion Operaciones</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtRelacionOperaciones" id="txtRelacionOperaciones" placeholder="" class="input-block-level" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--VALORES DEL TRADING NUEVO--%>
                            <div class="box box-color text-white box-bordered">
                                <div class="box-title box-color">
                                    <h3><i class="fa fa-list"></i>2. Datos de Trading</h3>
                                    <div class="actions">
                                        <button type="button" id="btnTrading" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="btnTrading_Click">
                                            <i class="icon-save"></i><strong>&nbsp Trading</strong>
                                        </button>
                                        <button type="button" id="btnConsultaEstado" runat="server"
                                            class="btn btn-default" data-dismiss="modal" onserverclick="btnConsultaEstado_Click">
                                            <i class="icon-search"></i><strong>&nbsp Consulta Estado</strong>
                                        </button>
                                    </div>
                                </div>
                                <div class="box-content nopadding">
                                    <div class='form-horizontal form-column form-bordered'>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2" style="color: red">Especie</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtEspecie" id="txtEspecie" placeholder="TEXTO" class="input-block-level" runat="server" value="S00110 014000$1" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Plazo Vuelta</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPlazoVuelta" id="txtPlazoVuelta" placeholder="VALOR ENTERO" class="input-block-level" runat="server" value="120" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Destinatario</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtDestinatario" id="txtDestinatario" placeholder="TEXTO" class="input-block-level" runat="server" value="D34112" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Cantidad</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCantidad" id="txtCantidad" placeholder="Decimal" class="input-block-level" runat="server" value="10882602.74" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Precio</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPrecio" id="txtPrecio" placeholder="Decimal" class="input-block-level" runat="server" value="7" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Tipo Operacion Origen</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTipoOpOr" id="txtTipoOpOr" placeholder="TEXTO" class="input-block-level" runat="server" value="5" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Tipo Operacion Destino</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTipoOpDe" id="txtTipoOpDe" placeholder="TEXTO" class="input-block-level" runat="server" value="5" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Ente Liquidador</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtEnteLiq" id="txtEnteLiq" placeholder="TEXTO" class="input-block-level" runat="server" value="1" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">ComitenteOrigen</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtComitenteOrigen" id="txtComitenteOrigen" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">ComitenteContra</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtComitenteContra" id="txtComitenteContra" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">IdAdicionalContra</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtIdAdicionalContra" id="txtIdAdicionalContra" placeholder="Valor Entero" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">IdAdicional2Contra</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtIdAdicional2Contra" id="txtIdAdicional2Contra" placeholder="Valor Entero" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">Vigencia Tasa</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtVigenciaTasa" id="txtVigenciaTasa" placeholder="Valor Entero" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">IndCorreccion</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtIndCorreccion" id="txtIndCorreccion" placeholder="Valor Entero" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">PrecioIdaSelic</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPrecioIdaSelic" id="txtPrecioIdaSelic" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">Interes</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtInteres" id="txtInteres" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">Total</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTotal" id="txtTotal" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">Total Dolar</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTotalDolar" id="txtTotalDolar" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">Plazo Cobertura</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPlazoCobertura" id="txtPlazoCobertura" placeholder="Valor Entero" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lbl" class="control-label col-sm-2">PorcAfecSettle</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPorcAfecSettle" id="txtPorcAfecSettle" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>

                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">PorcAfecPrice</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPorcAfecPrice" id="txtPorcAfecPrice" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Orden Tipo</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtOrdenTipo" id="txtOrdenTipo" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Orden Nro</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtOrdenNro" id="txtOrdenNro" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Texto</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTexto" id="txtTexto" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Tipo Liquidacion</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTipoLiq" id="txtTipoLiq" placeholder="TEXTO" class="input-block-level" runat="server" value="1" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lbl" class="control-label col-sm-2" style="color: red">Rueda</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtRueda" id="txtRueda" placeholder="TEXTO" class="input-block-level" runat="server" value="TRD" />
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Tipo Trading</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTipoTrading" id="txtTipoTrading" placeholder="TEXTO" class="input-block-level" runat="server" value="M" />
                                                    </div>
                                                </div>
                                                <%-- <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2">DatosTNE</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtDatosTNE" id="txtDatosTNE" placeholder="Digite Aqui" class="input-block-level" disabled="disabled" runat="server" />
                                                    </div>
                                                </div>--%>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Cuenta Cliente</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCuentaCliente" id="txtCuentaCliente" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">NomContraInt</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtNomContraInt" id="txtNomContraInt" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">NomCustodioInt</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtNomCustodioInt" id="txtNomCustodioInt" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Fecha Concertacion</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtFechaConcertacion" id="txtFechaConcertacion" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Hora Concertacion </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtHoraConcertacion" id="txtHoraConcertacion" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Valor Indice</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtValorIndice" id="txtValorIndice" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Especie Garantia</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtEspecieGarantia" id="txtEspecieGarantia" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Cantidad Garantia </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCantidadGarantia" id="txtCantidadGarantia" placeholder="Decimal" class="input-block-level" runat="server" value="10000000" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Precio Garantia</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPrecioGarantia" id="txtPrecioGarantia" placeholder="Decimal" class="input-block-level" runat="server" value="107" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Tasa Equi Garantia </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTasaEquiGarantia" id="txtTasaEquiGarantia" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Porcentaje Garantia </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPorcentajeGarantia" id="txtPorcentajeGarantia" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Valorizacion Garantia </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtValorizacionGarantia" id="txtValorizacionGarantia" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Valorizacion Futura </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtValorizacionFutura" id="txtValorizacionFutura" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Valorizacion Dolar Futura </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtValorizacionDolarFutura" id="txtValorizacionDolarFutura" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Cod Demora </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCodDemora" id="txtCodDemora" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group" style="display: none;">
                                                    <label for="lblsession" class="control-label col-sm-2">Mot Demora </label>
                                                    <div class="controls">
                                                        <input type="text" name="txtMotDemora" id="txtMotDemora" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblsession" class="control-label col-sm-2" style="color: red">Compra Venta</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCompraVenta" id="txtCompraVenta" placeholder="TEXTO" class="input-block-level" runat="server" value="V" />
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--VALORES DEL TNE--%>
                            <div class="box box-color text-white box-bordered" style="display: none;">
                                <div class="box-title box-color">
                                    <h3><i class="fa fa-list"></i>2.1. Datos del TNE</h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class='form-horizontal form-column form-bordered'>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Fecha Emision</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtFechaEmision" id="txtFechaEmision" placeholder="YYYYMMDD" class="input-block-level" runat="server" value="20110601" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Fecha Vencimiento</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtFechaVencimiento" id="txtFechaVencimiento" placeholder="YYYYMMDD" class="input-block-level" runat="server" value="20180601" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Periodicidad Pago</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPeriodicidadPago" id="txtPeriodicidadPago" placeholder="TEXTO" class="input-block-level" runat="server" value="S" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Modalidad Pago</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtModalidadPago" id="txtModalidadPago" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Periodicidad Reinversion</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPeriodicidadReinversion" id="txtPeriodicidadReinversion" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="col-sm-6">
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Modalidad Reinversion</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtModalidadReinversion" id="txtModalidadReinversion" placeholder="TEXTO" class="input-block-level" runat="server" value="" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Tasa Facial</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtTasaFacial" id="txtTasaFacial" placeholder="Decimal" class="input-block-level" runat="server" value="15.5" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Premio</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtPremio" id="txtPremio" placeholder="Decimal" class="input-block-level" runat="server" value="0" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Codigo De Emisor</label>
                                                    <div class="controls">
                                                        <input type="text" name="txtCodigoDeEmisor" id="txtCodigoDeEmisor" placeholder="TEXTO" class="input-block-level" runat="server" value="002" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--SUBIR ARCHIVO DE NOTIFICACION DE CEVALDOM--%>
                            <div class="box box-color text-white box-bordered">
                                <div class="box-title box-color">
                                    <h3><i class="fa fa-list"></i>3. Archivo Notificacion CEVALDOM</h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class='form-horizontal form-column form-bordered'>
                                        <div class="row-fluid">
                                            <div class="col-sm-12">
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2">Selecione</label>
                                                    <div class="controls">
                                                        <input type="file" class="fileupload-preview col-md-4" id="fileCevaldom" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="lblEspecie" class="control-label col-sm-2"></label>
                                                    <div class="controls">
                                                        <button type="button" id="BtnProcesarArchivo" runat="server"
                                                            class="btn btn-primary" data-dismiss="modal" onserverclick="BtnProcesarArchivo_Click">
                                                            <i class="icon-search"></i><strong>&nbsp Procesar</strong>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                            <%--<div class="col-sm-12">--%>
                                                <div class="box-content nopadding">
                                                    <table class="table table-bordered dataTable dataTable-scroll-x dataTable-tools dataTables_filter dataTables_wrapper dataTables_sizing dataTable-reorder">
                                                        <thead>
                                                            <tr>
                                                                <th>ESTADO</th>
                                                                <th>PROCESO</th>
                                                                <th>PARTICIPANTE</th>
                                                                <th>CARGA</th>
                                                                <th>REGISTROS</th>
                                                                <th>ACEPTADOS</th>
                                                                <th>RECHAZADOS</th>
                                                                <th>FECHA CREACION</th>
                                                                <th>REFERENCIA</th>
                                                                <th>FECHA</th>
                                                                <th>OPERACION</th>
                                                                <th>ISIN</th>
                                                                <th>LINEA</th>
                                                                <th>CAMPO</th>
                                                                <th>DESCRIPCION</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater ID="rpNotifacionCelvadom" runat="server">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td><%# Eval("ESTADO")%></td>
                                                                        <td><%# Eval("PROCESO")%></td>
                                                                        <td><%# Eval("PARTICIPANTE")%></td>
                                                                        <td><%# Eval("CARGA")%></td>
                                                                        <td><%# Eval("REGISTROS")%></td>
                                                                        <td><%# Eval("ACEPTADOS")%></td>
                                                                        <td><%# Eval("RECHAZADOS")%></td>
                                                                        <td><%# Eval("FECHACREACION")%></td>
                                                                        <td><%# Eval("REFERENCIA")%></td>
                                                                        <td><%# Eval("FECHA")%></td>
                                                                        <td><%# Eval("OPERACION")%></td>
                                                                        <td><%# Eval("ISIN")%></td>
                                                                        <td><%# Eval("LINEA")%></td>
                                                                        <td><%# Eval("CAMPO")%></td>
                                                                        <td><%# Eval("DESCRIPCION")%></td>

                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
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
