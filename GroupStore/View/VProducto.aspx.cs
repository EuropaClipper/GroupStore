using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_VProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarDatos();
        }
    }
    private void cargarDatos()
    {
        //llenar la dropdown list con las bodegas que tiene el negocio
        ViewState["relacionUsuarioNegocio"] = new UsuarioNegocioDAO().obtenerRelacionUsuarioNegocio(((EUsuario)Session["usuario"]).Cedula);
        List<EBodega> bodegas = new BodegaDAO().obtenerBodegas(((EUsuarioNegocio)ViewState["relacionUsuarioNegocio"]).NITNegocio).OrderBy(x=> x.Nombre).ToList();
        bodegas.Insert(0, (new EBodega { ID = 0, Nombre = "Seleccionar" }));
        DDL_Bodegas.DataSource = bodegas;
        DDL_Bodegas.DataTextField = "Nombre";
        DDL_Bodegas.DataValueField = "ID";
        DDL_Bodegas.DataBind();
        //
        //llenar la dropdown list con las categorias de productos
        List < ECategoria > categorias = new CategoriaDAO().obtenerCategorias().OrderBy(x=> x.Categoria).ToList();
        categorias.Insert(0, new ECategoria { ID = 0, Categoria = "Seleccionar" });
        DDL_Categorias.DataSource = categorias;
        DDL_Categorias.DataTextField = "Categoria";
        DDL_Categorias.DataValueField = "ID";
        DDL_Categorias.DataBind();
        //
        //llenar el dropdown list de las unidades de medida
        List<EUnidadMedida> unidades = new UnidadMedidaDAO().obtenerUnidadesMedida().OrderBy(x=>x.Unidad).ToList();
        unidades.Insert(0, new EUnidadMedida { ID = 0, Unidad = "Seleccionar" });
        DDL_UMedida.DataSource = unidades;
        DDL_UMedida.DataTextField = "Unidad";
        DDL_UMedida.DataValueField = "ID";
        DDL_UMedida.DataBind();
        //
    }

    protected void btn_aggProducto_ServerClick(object sender, EventArgs e)
    {
        var categoriaSeleccionada = DDL_Categorias.SelectedItem.Value;
        var bodegaSeleccionada = DDL_Bodegas.SelectedItem.Value;
        int existenciasEnBodega = new ExistenciasDAO().obtenerExistencias(int.Parse(bodegaSeleccionada)).Count();
        //obtener las imagenes del file upload
        foreach (HttpPostedFile file in FU_Imagenes.PostedFiles)
        {
            string extension = System.IO.Path.GetExtension(file.FileName);

        }
        string codigo = ((EUsuarioNegocio)ViewState["relacionUsuarioNegocio"]).NITNegocio.Substring(0, 4);
        string categoria = (categoriaSeleccionada.Length < 2) ? "0" + categoriaSeleccionada : categoriaSeleccionada.Substring(0, 2);
        string bodega = (bodegaSeleccionada.Length < 2) ? "0" + bodegaSeleccionada : bodegaSeleccionada.Substring(0, 2);
        codigo += categoria + bodega + I_nombreProducto.Value.Substring(0, 2).ToUpper() + (existenciasEnBodega + 1).ToString("00000");
        EProducto nuevoProducto = new EProducto {Codigo = codigo,Nombre = I_nombreProducto.Value.Trim(),CantidadMaxima = int.Parse(I_cantidadMax.Value.Trim()),
                                                 CantidadMinima = int.Parse(I_cantidadMin.Value.Trim()),Capacidad = int.Parse(I_Capacidad.Value),
                                                 IDCategoria = int.Parse(categoriaSeleccionada), IDUnidadMedida = int.Parse(DDL_UMedida.SelectedItem.Value),
                                                 Descripcion = I_Descripcion.Value, Estado = true
        };
        //I_nombreProducto.Value.Trim();
        //I_Descripcion.Value.Trim();
        //I_cantidadMin.Value.Trim();
        //I_cantidadMax.Value.Trim();
        //I_Stock.Value.Trim();

    }
    protected void cerrarSesion_ServerClick(object sender, EventArgs e)
    {
        Session["Usuario"] = null;
        Response.Redirect("VInicioSesion.aspx");
    }
}