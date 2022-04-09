using System.Data.Entity;
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    public Mapeo() : base("name=GroupStoreDB") { }
    private readonly string schema;
    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema(this.schema);
        base.OnModelCreating(modelBuilder);
     }
    public virtual DbSet<EUsuario> Usuario { get; set; }
    public virtual DbSet<ENegocio> negocio { get; set; }
    public virtual DbSet<ERol> rol{ get; set; }

}