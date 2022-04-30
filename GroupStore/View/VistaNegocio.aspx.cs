using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EUsuarioNegocio negocio = new UsuarioNegocioDAO().obtenerRelacionUsuarioNegocio(((EUsuario)Session["usuario"]).Cedula);
        nit.Value = negocio.Negocio.Nit;
        nombre.Value = negocio.Negocio.Nombre;
        dir.Value = negocio.Negocio.Direccion;
        tel.Value = negocio.Negocio.telefono;
    }
}