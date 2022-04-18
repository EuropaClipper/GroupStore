using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class TokenRecuperacionDAO
{
    public void InsetarToken(ETokenRecuperacion token)
    {
        using (var db = new Mapeo())
        {
            db.TokenRecuperacion.Add(token);
            db.SaveChanges();
        }
    }

}