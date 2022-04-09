using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VRegistro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        switch (DDL_Roles.SelectedValue)
        {
            case "Comprador":
                MV_Registro.ActiveViewIndex = 1;
                MV_Registro_Usuarios.ActiveViewIndex = 0;
            break;
            case "Proveedor":
                MV_Registro.ActiveViewIndex = 1;
                MV_Registro_Usuarios.ActiveViewIndex = 1;
           break;
            case "Negocio":
                MV_Registro.ActiveViewIndex = 0;
                break;
        }
    }
    //Método para realizar el registro de los usuarios y negocios
    protected void Btn_Continuar_clic(object sender, EventArgs e)
    {
        if (DDL_Roles.SelectedValue == "Negocio")
        {
            ENegocio nuevo_negocio = new ENegocio { Nit = I_Nit.Value ,Nombre = I_NombreNegocio.Value, Direccion = I_DireccionNegocio.Value, telefono = I_TelefonoNegocio.Value};
            EUsuario usuario_admin_negocio = new EUsuario { Cedula = I_CedulaAdmin.Value, NIT = I_Nit.Value, Nombre = (I_NombresAdmin.Value+I_ApellidosAdmin.Value), 
                Correo = I_CorreoAdmin.Value, Contrasena = I_CContrasenaAdmin.Value, ID_Rol=1
            };
            new NegocioDAO().InsertarNegocio(nuevo_negocio);
            new UsuarioDAO().InsertarUsuario(usuario_admin_negocio);
        }
        else
        {
            EUsuario usuario_nuevo = new EUsuario { Nombre = (I_Nombres.Value + I_Apellidos.Value), Cedula = I_Cedula.Value, Correo = I_Correo.Value, Contrasena = I_CContrasena.Value,
            Telefono = I_Telefono.Value, Direccion = I_Direccion.Value};
            if(DDL_Roles.SelectedValue == "Proveedor")
            {
                usuario_nuevo.Empresa = I_Empresa.Value;
                usuario_nuevo.Certificados = inputGroupFile01.Value;
                usuario_nuevo.ID_Rol = 3;
            }
            else
            {
                usuario_nuevo.ID_Rol = 2;
            }
            new UsuarioDAO().InsertarUsuario(usuario_nuevo);
        }
        
    }

}