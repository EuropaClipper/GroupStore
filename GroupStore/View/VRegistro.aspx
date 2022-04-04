<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VRegistro.aspx.cs" Inherits="View_VRegistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="container-fluid my-3 justify-content-center">
      <div class="row">
        <!--Imagen que se oculta-->
        <div class="col my-auto d-none d-lg-block d-md-block">
          <img
            src="../Resources/Pagina/Img_Registro.png"
            class="rounded-3 w-100"
            alt="Imagen de registro"
          />
        </div>
        <!---->
        <!--Columna ingreso de datos para el registro-->
        <div class="col px-2">
          <!--mensaje de bienvenida-->
          <div class="text-center mt-3">
            <h2 class="fw-bold text-center m-3">Bienvenido a GroupStore</h2>
          </div>
          <div class="row justify-content-center">
            <div class="col-9 col-md-4">
              <div class="text-center">
                <span class="text-black">Seleccione rol a registrar</span>
              </div>
            </div>
            <div class="col-7 col-md-4 p-0">
              <form runat="server">
                <asp:DropDownList ID="DDL_Roles" runat="server" class="form-select" AutoPostBack="True">
                    <asp:ListItem Selected="True">Comprador</asp:ListItem>
                    <asp:ListItem>Proveedor</asp:ListItem>
                    <asp:ListItem>Negocio</asp:ListItem>
                </asp:DropDownList>
              </form>
            </div>
          </div>
          <!---->

            <asp:MultiView ID="MV_Registro" runat="server">
                <asp:View ID="V_RNegocio" runat="server"></asp:View>
                <asp:View ID="V_RUsuarios" runat="server">
                  <!--Form para obtener los datos del registro usuarios-->
                  <form class="mt-4 ps-2 ps-md-4 ps-lg-5 py-4 shadow-lg">
                    <!-- Fila de nombre-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="container d-inline-flex">
                        <div class="form-floating px-1 col-5">
                          <input
                            type="text"
                            class="form-control"
                            id="I_Nombres"
                            placeholder="Digite sus nombres"
                          />
                          <label for="I_Nombres">Nombres</label>
                        </div>
                        <div class="form-floating col-6">
                          <input
                            type="text"
                            class="form-control"
                            id="I_Apellidos"
                            placeholder="Digite sus apellidos"
                          />
                          <label for="I_Apellidos">Apellidos</label>
                        </div>
                      </div>
                    </div>
                    <!---->
                    <!--Fila cedula-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="form-floating mx-1 col-11">
                        <input
                          type="text"
                          class="form-control"
                          id="I_Cedula"
                          placeholder="Cédula de ciudadanía"
                        />
                        <label for="I_Cedula"> Cédula de ciudadanía</label>
                      </div>
                    </div>
                    <!---->
                    <!--Fila correo electrónico-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="form-floating mx-1 col-11">
                        <input
                          type="email"
                          class="form-control"
                          id="I_Correo"
                          placeholder="Correo electrónico"
                        />
                        <label for="I_Correo"> Ingrese su correo electrónico</label>
                      </div>
                    </div>
                    <!---->
                    <!--Fila telefono-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="form-floating mx-1 col-11">
                        <input
                          type="tel"
                          class="form-control"
                          id="I_Telefono"
                          placeholder="Telefono"
                        />
                        <label for="I_Telefono"> Telefono</label>
                      </div>
                    </div>
                    <!---->
                    <!--Fila dirección-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="form-floating mx-1 col-11">
                        <input
                          type="text"
                          class="form-control"
                          id="I_Direccion"
                          placeholder="Dirección"
                        />
                        <label for="I_Direccion"> Dirección</label>
                      </div>
                    </div>
                    <!---->
                    <!--Fila empresa-->
                    <div class="row mb-2 mb-md-3 mb-lg-3">
                      <div class="form-floating mx-1 col-11">
                        <input
                          type="text"
                          class="form-control"
                          id="I_Empresa"
                          placeholder="Empresa"
                        />
                        <label for="I_Empresa"> Empresa</label>
                      </div>
                    </div>
                    <!---->
                    <!--Fila certificados-->
                    <div class="row mb-2">
                      <div class="col-11">
                        <span class="form-label h6"
                          >Agregue sus certificados de calidad</span
                        >
                        <div class="input-group mb-2">
                          <label class="input-group-text" for="inputGroupFile01"
                            >Certificados</label
                          >
                          <input
                            type="file"
                            class="form-control"
                            id="inputGroupFile01"
                          />
                        </div>
                      </div>
                    </div>
                    <!---->
                    <!--Fila boton registrar-->
                    <div class="row mb-3">
                      <div class="col-11 mx-1 d-grid">
                        <input
                          type="submit"
                          class="btn btn-lg btn-success"
                          value="Continuar"
                        />
                      </div>
                    </div>
                    <!---->
                    <!--Redirección a iniciar sesion-->
                    <div class="row">
                      <div class="col-11">
                        <div class="form-text">
                          <span class="form-label text-secondary"
                            >¿Ya tienes cuenta en GroupStore?</span
                          >
                          <a href="VInicioSesion.aspx" class="text-decoration-none text-black"
                            >Inicia sesion</a
                          >
                        </div>
                      </div>
                    </div>
                    <!---->
                  </form>
                  <!---->
                </asp:View>
            </asp:MultiView>
        </div>
        <!---->
      </div>
    </div>
</asp:Content>

