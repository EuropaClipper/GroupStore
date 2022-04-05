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
        if (DDL_Roles.SelectedValue == "Comprador" || DDL_Roles.SelectedValue == "Proveedor")
        {
            MV_Registro.ActiveViewIndex = 1;
            if (DDL_Roles.SelectedValue == "Comprador") MV_Registro_Usuarios.ActiveViewIndex = 0;
            else MV_Registro_Usuarios.ActiveViewIndex = 1;
        }
        else
        {
            MV_Registro.ActiveViewIndex = 0;
        }
    }
    protected void Btn_Continuar_clic(object sender, EventArgs e)
    {
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Registro exitoso');</script>");
    }

}