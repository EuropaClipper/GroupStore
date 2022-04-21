using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VRecuperacionContrasena : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count == 0)
        {
            Response.Redirect("VInicioSesion.aspx");
        }
        else
        {
            string tokenEnUrl = Request.QueryString["t"];
            ETokenRecuperacion tokenRecuperacion = new TokenRecuperacionDAO().verificarToken(tokenEnUrl);
            if (tokenRecuperacion == null)
            {
                Response.Redirect("VInicioSesion.aspx");
            }
            else
            {
                if (tokenRecuperacion.Estado == true)
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El token ya fue usado.\nGenere uno nuevo.');window.location.href=\"VInicioSesion.aspx\";</script>");
                }
                else
                {
                    if (tokenRecuperacion.FechaCaducidad < DateTime.Now)
                    {
                        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El token está vencido.\nGenere uno nuevo.');window.location.href=\"VInicioSesion.aspx\";</script>");
                    }

                }
            }
        }
    }
}