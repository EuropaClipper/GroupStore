using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario", Schema = "public")]
public class EUsuario
{
    [Column("nombre")]
    public string Nombre { get; set; }
    [Column("nit")]
    public string NIT { get; set; }
    [NotMapped]
    public ENegocio negocio { get { return new NegocioDAO().ObtenerNegocio(NIT); } set { } }
    [Key, Column("cedula")]
    public string Cedula { get; set; }
    [Column("correo")]
    public string Correo { get; set; }
    [Column("contrasena")]
    public string Contrasena { get; set; }
    [Column("direccion")]
    public string Direccion { get; set; }
    [Column("empresa")]
    public string Empresa { get; set; }
    [Column("telefono")]
    public string Telefono { get; set; }
    [Column("certificados")]
    public string Certificados { get; set; }
    [Column("id_rol")]
    public int ID_Rol { get; set; }
    [NotMapped]
    public ERol rol{ get { return new RolDAO().ObtenerRol(ID_Rol); } set { } }
}
