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
        if(DDL_Roles.SelectedValue == "Comprador")
        {
            MV_Registro.ActiveViewIndex = 1;
        }
        else
        {
            MV_Registro.ActiveViewIndex = 0;
        }
    }

}