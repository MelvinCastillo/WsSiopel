using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Collections;
using System.IO;
using WsSiopel;

namespace WsSiopel2
{


    public partial class wsSiopel2 : System.Web.UI.Page
    {
        WsSiopel.WsSIOPEL.IwsSistemaInternoSiopelClient wsClient = new WsSiopel.WsSIOPEL.IwsSistemaInternoSiopelClient();
        WsSiopel.WsSIOPEL.TWSResponse Respuesta = new WsSiopel.WsSIOPEL.TWSResponse();
        private ArrayList xQueryParameters = new ArrayList();
        private ArrayList xQueryValues = new ArrayList(); 
        private string xQuery;


        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                txtFechaConcertacion.Value = DateTime.Now.ToString("yyyyMMdd", System.Globalization.CultureInfo.GetCultureInfo("en-US")).ToString();
                txtHoraConcertacion.Value = DateTime.Now.ToString("HH:mm:ss", System.Globalization.CultureInfo.GetCultureInfo("en-US")).ToString();

            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            /* AUTENTICACION CON EL WEBSERVICE*/
            string clave = txtclave.Value.Trim();
            Respuesta = wsClient.Login(clave.ToString());

            if (Respuesta.Code == 0)
            {
                txtsessionWS.Value = Respuesta.RespMessage.ToString();
                txtRespuesta.Value = "EN SESSION NRO: " + txtsessionWS.Value.ToString();
            }
            else
            {
                // txtsessionWS.Value = "";
                txtRespuesta.Value = "ERROR EN INICIO DE SESSION, VERIFIQUE";
            }

        }

        protected void btnTrading_Click(object sender, EventArgs e)
        {
            btnlogin_Click(sender, e);
            try
            {
                if (txtsessionWS.Value.Trim() != "")
                {
                    /* INTRODUCCION DE LOS VALORES DE TRADING NUEVO */
                    WsSiopel.WsSIOPEL.TDatosAltaTrading DatosAlta = new WsSiopel.WsSIOPEL.TDatosAltaTrading();
                    WsSiopel.WsSIOPEL.TDatosEstadoTrading DatosEstado = new WsSiopel.WsSIOPEL.TDatosEstadoTrading();

                    DatosAlta.Especie = txtEspecie.Value;
                    DatosAlta.PlazoVuelta = Convert.ToInt32(txtPlazoVuelta.Value);
                    DatosAlta.Destinatario = txtDestinatario.Value;
                    DatosAlta.Cantidad = Convert.ToDouble(txtCantidad.Value);
                    DatosAlta.Precio = Convert.ToDouble(txtPrecio.Value);
                    DatosAlta.TipoOpOr = txtTipoOpOr.Value;
                    DatosAlta.TipoOpDe = txtTipoOpDe.Value;
                    DatosAlta.EnteLiq = txtEnteLiq.Value;
                    DatosAlta.TipoLiq = txtTipoLiq.Value;
                    DatosAlta.Rueda = txtRueda.Value;
                    DatosAlta.ComitenteOrigen = txtComitenteOrigen.Value;
                    DatosAlta.ComitenteContra = txtComitenteContra.Value;
                    DatosAlta.IdAdicionalContra = Convert.ToInt32(txtIdAdicionalContra.Value);
                    DatosAlta.IdAdicional2Contra = Convert.ToInt32(txtIdAdicional2Contra.Value);
                    DatosAlta.VigenciaTasa = Convert.ToInt32(txtVigenciaTasa.Value);
                    DatosAlta.IndCorreccion = Convert.ToInt32(txtIndCorreccion.Value);
                    DatosAlta.PrecioIdaSelic = Convert.ToDouble(txtPrecioIdaSelic.Value);
                    DatosAlta.Interes = Convert.ToDouble(txtInteres.Value);
                    DatosAlta.Total = Convert.ToDouble(txtTotal.Value);
                    DatosAlta.TotalDolar = Convert.ToDouble(txtTotalDolar.Value);
                    DatosAlta.PlazoCobertura = Convert.ToInt32(txtPlazoCobertura.Value);
                    DatosAlta.PorcAfecSettle = Convert.ToDouble(txtPorcAfecSettle.Value);
                    DatosAlta.PorcAfecPrice = Convert.ToDouble(txtPorcAfecPrice.Value);
                    DatosAlta.OrdenTipo = txtOrdenTipo.Value;
                    DatosAlta.OrdenNro = Convert.ToDouble(txtOrdenNro.Value);
                    DatosAlta.Texto = txtTexto.Value;
                    DatosAlta.TipoTrading = txtTipoTrading.Value;
                    DatosAlta.CuentaCliente = txtCuentaCliente.Value;
                    DatosAlta.NomContraInt = txtNomContraInt.Value;
                    DatosAlta.NomCustodioInt = txtNomCustodioInt.Value;
                    DatosAlta.FechaConcertacion = txtFechaConcertacion.Value;
                    DatosAlta.HoraConcertacion = txtHoraConcertacion.Value;
                    DatosAlta.ValorIndice = Convert.ToDouble(txtValorIndice.Value);
                    DatosAlta.EspecieGarantia = txtEspecieGarantia.Value;
                    DatosAlta.CantidadGarantia = Convert.ToDouble(txtCantidadGarantia.Value);
                    DatosAlta.PrecioGarantia = Convert.ToDouble(txtPrecioGarantia.Value);
                    DatosAlta.TasaEquiGarantia = Convert.ToDouble(txtTasaEquiGarantia.Value);
                    DatosAlta.PorcentajeGarantia = Convert.ToDouble(txtPorcentajeGarantia.Value);
                    DatosAlta.ValorizacionGarantia = Convert.ToDouble(txtValorizacionGarantia.Value);
                    DatosAlta.ValorizacionFutura = Convert.ToDouble(txtValorizacionFutura.Value);
                    DatosAlta.ValorizacionDolarFutura = Convert.ToDouble(txtValorizacionDolarFutura.Value);
                    DatosAlta.CodDemora = txtCodDemora.Value;
                    DatosAlta.MotDemora = txtMotDemora.Value;
                    DatosAlta.CompraVenta = txtCompraVenta.Value;

                    /* INTRODUCCION DE LOS VALORES DE DatosTNE */
                    WsSiopel.WsSIOPEL.TDatosTNE DatosTNE = new WsSiopel.WsSIOPEL.TDatosTNE(); 
                    DatosTNE.FechaEmision = txtFechaEmision.Value;
                    DatosTNE.FechaVencimiento = txtFechaVencimiento.Value;
                    DatosTNE.PeriodicidadPago = txtPeriodicidadPago.Value;
                    DatosTNE.ModalidadPago = txtModalidadPago.Value;
                    DatosTNE.PeriodicidadReinversion = txtPeriodicidadReinversion.Value;
                    DatosTNE.ModalidadReinversion = txtModalidadReinversion.Value;
                    DatosTNE.TasaFacial = Convert.ToDouble(txtTasaFacial.Value);
                    DatosTNE.Premio = Convert.ToDouble(txtPremio.Value);
                    DatosTNE.CodigoDeEmisor = txtCodigoDeEmisor.Value; 

                    DatosAlta.DatosTNE = DatosTNE;
                    /* ENVIO LA TRANSACCION A SIOPEL */
                    string referencia = Guid.NewGuid().ToString();
                    Respuesta = wsClient.TradingNuevo(txtsessionWS.Value.Trim(), DatosAlta, ref referencia);
                    txtreferencia.Value = referencia;
                    txtRespuesta.Value = Respuesta.RespMessage.ToString();

                    /* CONSULTO ESTADO DE LA TRANSACCION DE TRADING*/
                    DatosEstado.Id = "";
                    DatosEstado.Estado = "";
                    DatosEstado.SecHost = "";
                    DatosEstado.CodRtaHost = "";
                    DatosEstado.MsgRtaHost = "";

                    //string DatosEstado = Respuesta.Code.ToString();
                    Respuesta = wsClient.TradingConsultarEstado(txtsessionWS.Value.Trim(), referencia, ref DatosEstado);
                    txtRespuesta.Value = DatosEstado.MsgRtaHost.ToString();
                }
            }
            catch
            {
                bnlogout_Click(sender, e); 
            }
            bnlogout_Click(sender, e);
            return;
        }

        protected void bnlogout_Click(object sender, EventArgs e)
        {
            /* logout del WEBSERVICE*/
            if (txtsessionWS.Value.Trim() != "")
            {
                Respuesta = wsClient.Logout(txtsessionWS.Value.Trim());

                if (Respuesta.Code == 0)
                {
                    //txtsessionWS.Value = Respuesta.RespMessage.ToString();
                  //  txtRespuesta.Value = "FUERA DE SESSION";
                }
                else
                {
                    txtRespuesta.Value = "NO SE CERRO LA SESSION ADECUADAMENTE";
                    //txtsessionWS.Value = "";
                }
            }

        }
        
         protected void btnConsultaEstado_Click(object sender, EventArgs e)
        {
            /* logout del WEBSERVICE*/
            if (txtsessionWS.Value.Trim() != "")
            {
                if (txtreferencia.Value.Trim() != "")
                {
                    btnlogin_Click(sender, e);
                    
                    WsSiopel.WsSIOPEL.TDatosEstadoTrading DatosEstado = new WsSiopel.WsSIOPEL.TDatosEstadoTrading();
                    /* CONSULTO ESTADO DE LA TRANSACCION DE TRADING*/
                    DatosEstado.Id = "";
                    DatosEstado.Estado = "";
                    DatosEstado.SecHost = "";
                    DatosEstado.CodRtaHost = "";
                    DatosEstado.MsgRtaHost = "";
                    DatosEstado.SecHostPata2 = "";
                    DatosEstado.RelacionOperaciones = 0;

                    //string DatosEstado = Respuesta.Code.ToString();
                    Respuesta = wsClient.TradingConsultarEstado(txtsessionWS.Value.Trim(), txtreferencia.Value, ref DatosEstado);
                    txtRespuesta.Value = "Estado:" + DatosEstado.Estado.ToString() + "- Secuencia: "+ DatosEstado.SecHost.ToString();
                    txtPata2.Value = DatosEstado.SecHostPata2.ToString();
                    txtRelacionOperaciones.Value = DatosEstado.RelacionOperaciones.ToString();
                    bnlogout_Click(sender, e);
                }
            }

        }

        protected void BtnProcesarArchivo_Click(object sender, EventArgs e)
        { 
            if (fileCevaldom.PostedFile.FileName != "")
            { 
                HttpPostedFile file = Request.Files["fileCevaldom"];
                string fname = Path.GetFileName(file.FileName);
                string strarchivo = "";


                try
                {
                    if (file != null && file.ContentLength > 0)
                {
                    file.SaveAs(System.Web.Hosting.HostingEnvironment.MapPath(Path.Combine("~/archivos/", fname)));
                }
                } 
                catch (Exception Ex)
                {
                    Console.Write(Ex.InnerException.ToString());
                }
                 
                
                this.xQueryParameters.Clear();
                this.xQueryValues.Clear();
                this.xQueryParameters.Add((object)"@archivo");
                strarchivo = @"\\sep\archivos\" + fname.ToString(); ;               
                this.xQueryValues.Add(strarchivo); 

                this.xQuery = "P_SUBE_ArchivoEstadoOperacionesOTC";
                rpNotifacionCelvadom.Visible = false;
                
                    this.rpNotifacionCelvadom.DataSource = (object)DB.ExecuteAdapter(this.xQuery, this.xQueryParameters, this.xQueryValues, CommandType.StoredProcedure);
                    this.rpNotifacionCelvadom.DataBind();
                    if (this.rpNotifacionCelvadom.Items.Count == 0)
                    {
                    rpNotifacionCelvadom.Visible = false;
                        return;
                    }
                    else
                    rpNotifacionCelvadom.Visible = true;
              
            }
        }
    }

}