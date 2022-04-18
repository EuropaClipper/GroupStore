using System;
using System.Collections.Generic;
using System.Linq;

public class UsuarioNegocioDAO
{
    public void insertarRelacionUsuarioNegocio(EUsuarioNegocio relacion)
    {
        using(var db = new Mapeo())
        {
            db.UsuarioNegocio.Add(relacion);
            db.SaveChanges();
        }
    }
}