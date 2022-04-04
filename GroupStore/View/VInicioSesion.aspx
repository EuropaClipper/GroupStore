<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VInicioSesion.aspx.cs" Inherits="View_VInicioSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="../Content/EstilosGroupStore.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        <form
      id="form_registro"
      class="d-flex flex-column my-3 mx-auto p-1 col-10 col-sm-8 col-md-6 col-lg-5 shadow rounded-3 bg-white"
    >
      <div class="container-fluid p-2">
        <figure class="mb-5">
          <div class="text-center">
            <img
              src="../Resources/Pagina/icono.png"
              class="w-25 img_icono"
              alt="Icono GroupStore"
            />
          </div>
        </figure>
        <div class="mb-3 row justify-content-center">
          <div class="form-floating mb-3 col-10">
            <input
              type="email"
              class="form-control"
              id="I_Correo"
              placeholder="name@example.com"
              required
            />
            <label for="I_Correo"> Correo electrónico</label>
          </div>
          <div class="form-floating col-10">
            <input
              type="password"
              class="form-control"
              id="I_Contrasena"
              placeholder="Contraseña"
              required
            />
            <label for="I_Contrasena"> Contraseña</label>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-10 d-grid">
            <input
              type="submit"
              class="btn btn-success btn-lg"
              value="Ingresar"
            />
          </div>
        </div>
        <div class="row justify-content-center mt-2">
          <div class="col-10">
            <!--trigger modal -->
            <a
              href=""
              class="text-decoration-none text-black"
              data-bs-toggle="modal"
              data-bs-target="#Modal_RecuperarContrasena"
            >
              Recuperar contraseña
            </a>
            <!-- Modal -->
            <div class="modal fade" id="Modal_RecuperarContrasena">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Recuperación de contraseña</h5>
                    <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"
                    ></button>
                  </div>
                  <!--Cuerpo del modal-->
                  <div class="modal-body">
                    <div class="row mb-1">
                      <span class="fst-italic"
                        >Ingrese su correo electrónico</span
                      >
                    </div>
                    <div class="row">
                      <div class="col-12 col-md-11">
                        <input
                          id="I_CorreoRecuperacion"
                          type="email"
                          class="form-control"
                          placeholder="name@example.com"
                          required
                        />
                      </div>
                    </div>
                  </div>
                  <!---->
                  <div class="modal-footer">
                    <button
                      type="button"
                      class="btn btn-danger"
                      data-bs-dismiss="modal"
                    >
                      Cancelar
                    </button>
                    <button
                      type="button"
                      id="Btn_Continuar"
                      class="btn btn-success"
                    >
                      Continuar
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-10">
            <div class="form-text">
              <span class="form-label text-secondary"
                >¿Nuevo en GroupStore?</span
              >
              <a href="VRegistro.aspx" class="text-decoration-none text-black"
                >Registrate</a
              >
            </div>
          </div>
        </div>
      </div>
    </form>
</asp:Content>

