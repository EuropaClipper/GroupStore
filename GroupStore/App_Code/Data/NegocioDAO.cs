using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class NegocioDAO
{
    public List<ENegocio> ObtenerNegocios()
    {
        using (var db = new Mapeo())
        {
            return db.negocio.ToList();
        }
    }
    public ENegocio ObtenerNegocio(string nit)
    {
        using(var db = new Mapeo())
        {
            return db.negocio.Where(x => x.Nit.Equals(nit)).FirstOrDefault();
        }
    }
    public void InsertarNegocio(ENegocio negocio)
    {
        using(var db = new Mapeo())
        {
            db.negocio.Add(negocio);
            db.SaveChanges();
        }
    }
}