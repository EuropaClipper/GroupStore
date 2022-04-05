using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VInicioSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_IniciarSesion_Click(object sender, EventArgs e)
    {
        if(new UsuarioDAO().VerificarUsuario(I_Correo.Value,I_Contrasena.Value)) this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Bienvenido');window.location.href=\"Index.aspx\";</script>");
        else this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos incorrectos');</script>");
    }


    protected void Btn_Continuar_clic(object sender, EventArgs e)
    {
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+I_CorreoRecuperacion.Value+"');</script>");
    }
}