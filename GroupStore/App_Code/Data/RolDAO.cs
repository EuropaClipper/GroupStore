using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class RolDAO
{
    public ERol ObtenerRol(int id_rol)
    {
        using (var db = new Mapeo())
        {
            return db.rol.Where(x => x.Id_rol.Equals(id_rol)).FirstOrDefault();
        }
    }
}