using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        newNotificacion.Visible = false;
        badge.InnerText = 0.ToString();
        badge.Visible = false;
        Session["usuario"] = null;
        if (Session["usuario"] == null)
        {
            imgPerfil.ImageUrl = "~/Resources/Pagina/sin_foto.png";
            mvDropDown.ActiveViewIndex = 0;
            mvNav.ActiveViewIndex = 0;
        }
    }
    protected void logOut_Click(object sender, EventArgs e)
    {
        Session["Usuario"] = null;
        //Response.Redirect("Index.aspx");
    }

    protected void aVerPerfil_ServerClick(object sender, EventArgs e)
    {
        //Response.Redirect("VistaUsuario.aspx?user=" + ((Modelo.Miembro)Session["Usuario"]).Usuario);
    }
}
