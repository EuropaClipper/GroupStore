using System;

public partial class View_VInicioSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_IniciarSesion_Click(object sender, EventArgs e)
    {
        if (new UsuarioDAO().VerificarUsuario(I_Correo.Value, I_Contrasena.Value)) this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Bienvenido');window.location.href=\"Index.aspx\";</script>");
        else this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos incorrectos');</script>");
    }


    protected void Btn_Continuar_clic(object sender, EventArgs e)
    {
        string correo = I_CorreoRecuperacion.Value.Trim();
        ETokenRecuperacion tokenRecuperacion = new RecuperacionContrasena().enviarTokenRecuperacion(correo);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + tokenRecuperacion.Msj_error + "');window.location.href=\"VInicioSesion.aspx\";</script>");
    }
}