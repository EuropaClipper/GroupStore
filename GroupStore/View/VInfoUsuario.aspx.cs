using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VInfoUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            switch (((EUsuario)Session["usuario"]).ID_Rol)
            {
                case 1:
                    MV_Datos.ActiveViewIndex = 2;
                break;
                case 2:
                    MV_Datos.ActiveViewIndex = 1;
                break;
                case 3:
                    MV_Datos.ActiveViewIndex = 0;
                    MV_Editar.ActiveViewIndex = 0;
                break;

            }
            EUsuario usuario = new UsuarioDAO().ObtenerUsuarios().Where(x => x.Cedula.Equals(((EUsuario)Session["usuario"]).Cedula)).FirstOrDefault();
            cdl.Value = usuario.Cedula;
            cdl2.Value = usuario.Cedula;
            nom.Value = usuario.Nombres;
            nom2.Value = usuario.Nombres;
            ape.Value = usuario.Apellidos;
            ape2.Value = usuario.Apellidos;
            correo.Value = usuario.Correo;
            correo2.Value = usuario.Correo;
            cont.Value = usuario.Contrasena;
            cont2.Value = usuario.Contrasena;
            dir.Value = usuario.Direccion;
            dir2.Value = usuario.Direccion;
            tel.Value = usuario.Telefono;
            tel2.Value = usuario.Telefono;
            empresa.Value = usuario.Empresa;
            empresa2.Value = usuario.Empresa;
            cert.Value = usuario.Certificados;
            cert2.Value = usuario.Certificados;
        }

    }
    protected void Btn_Editar(object sender, EventArgs e)
    {
        EUsuario usuario = new UsuarioDAO().ObtenerUsuario(cdl2.Value);
        usuario.Cedula = cdl2.Value;
        usuario.Nombres = nom2.Value;
        usuario.Apellidos = ape2.Value;
        usuario.Correo = correo2.Value;
        usuario.Contrasena = cont2.Value;
        usuario.Direccion = dir2.Value;
        usuario.Telefono = tel2.Value;
        usuario.Empresa = empresa2.Value;
        usuario.Certificados = cert2.Value;
        new UsuarioDAO().actualizarUsuario(usuario);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos actualizados');window.location.href=\"VInfoUsuario.aspx\";</script>");
    }
}