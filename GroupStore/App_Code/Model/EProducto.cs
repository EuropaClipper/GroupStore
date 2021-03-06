using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "public")]
public class EProducto
{
    [Key,Column("codigo")]
    public string Codigo{ get; set; }
    [Column("nombre")]
    public string Nombre { get; set; }
    [Column("descripcion")]
    public string Descripcion { get; set; }
    [Column("cantidad_maxima")]
    public int CantidadMaxima { get; set; }
    [Column("cantidad_minima")]
    public int CantidadMinima { get; set; }
    [Column("unidad_medida")]
    public int IDUnidadMedida { get; set; }
    [NotMapped]
    public EUnidadMedida UnidadMedida { get { return new UnidadMedidaDAO().obtenerUnidadMedida(IDUnidadMedida); } set { } }
    [Column("estado")]
    public bool Estado { get; set; }
    [Column("id_categoria")]
    public int IDCategoria { get; set; }
    [NotMapped]
    public ECategoria Categoria { get { return new CategoriaDAO().obtenerCategoria(IDCategoria); } set { } }
    [Column("imagenes")]
    public string[] Imagenes { get; set; }
    [Column("capacidad")]
    public float Capacidad { get; set; }
}