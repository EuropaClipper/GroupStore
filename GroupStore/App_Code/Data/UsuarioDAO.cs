using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class UsuarioDAO
{
    public List<EUsuario> ObtenerUsuarios()
    {
        using (var db = new Mapeo())
        {
            return db.Usuario.ToList();
        }
    }
    public bool VerificarUsuario(string correo, string contrasena)
    {
        if (ObtenerUsuarios().Where(x => x.Correo.Equals(correo) && x.Contrasena.Equals(contrasena)).FirstOrDefault() != null) return true;
        return false;

    }
    public void InsertarUsuario(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            db.Usuario.Add(usuario);
            db.SaveChanges();
        }
    }
}