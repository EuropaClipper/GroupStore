using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VInfoNegocio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EUsuarioNegocio negocio = new UsuarioNegocioDAO().obtenerRelacionUsuarioNegocio(((EUsuario)Session["usuario"]).Cedula);
    }
}