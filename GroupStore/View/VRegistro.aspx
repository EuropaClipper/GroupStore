<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VRegistro.aspx.cs" Inherits="View_VRegistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server">
        <div class="container-fluid my-3 justify-content-center">
            <div class="row">
                <!--Imagen que se oculta-->
                <div class="col my-auto d-none d-lg-block d-md-block">
                    <img
                        src="../Resources/Pagina/Img_Registro.png"
                        class="rounded-3 w-100"
                        alt="Imagen de registro" />
                </div>
                <!---->
                <!--Columna ingreso de datos para el registro-->
                <div class="col px-2">
                    <!--mensaje de bienvenida-->
                    <div class="text-center mt-3">
                        <h2 class="fw-bold text-center m-3">Bienvenido a GroupStore</h2>
                    </div>
                    <!---->
                    <!--Fila selección de rol-->
                    <div class="row justify-content-center">
                        <div class="col-9 col-md-4">
                            <div class="text-center">
                                <span class="text-black">Seleccione una opción</span>
                            </div>
                        </div>
                        <div class="col-5 col-md-4 p-0">
                            <asp:DropDownList ID="DDL_Roles" runat="server" class="form-select" AutoPostBack="True">
                                <asp:ListItem Selected="True">Comprador</asp:ListItem>
                                <asp:ListItem>Proveedor</asp:ListItem>
                                <asp:ListItem>Negocio</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!---->
                    <!--obtener los datos del registro usuarios-->
                    <div class="mt-4 ps-2 ps-md-4 ps-lg-5 py-4 shadow-lg">
                        <asp:MultiView ID="MV_Registro" runat="server">
                            <asp:View ID="V_RNegocio" runat="server">
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="col-11 mx-1 form-text">
                                        <span class="form-label text-black">Información del negocio</span>
                                    </div>
                                </div>
                                <!-- Fila de nombre-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="form-floating mx-1 col-11">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="I_NombreNegocio"
                                            placeholder="Digite el nombre del negocio" />
                                        <label for="I_Nombres">Nombre del negocio</label>
                                    </div>
                                </div>
                                <!---->
                                <!--Fila NIT-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="form-floating mx-1 col-11">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="I_Nit"
                                            placeholder="NIT de su negocio" />
                                        <label class="px-3" for="I_Cedula">NIT del negocio</label>
                                    </div>
                                </div>
                                <!---->
                                <!--Fila telefono-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="form-floating mx-1 col-11">
                                        <input
                                            type="tel"
                                            class="form-control"
                                            id="I_TelefonoNegocio"
                                            placeholder="Teléfono" />
                                        <label class="px-3" for="I_Telefono">Teléfono</label>
                                    </div>
                                </div>
                                <!---->
                                <!--Fila dirección-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="form-floating mx-1 col-11">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="I_DireccionNegocio"
                                            placeholder="Dirección" />
                                        <label class="px-3" for="I_Direccion">Dirección</label>
                                    </div>
                                </div>
                                <!---->
                                <!--Registro del admin-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="col-11 mx-1 form-text">
                                        <span class="form-label text-black">Información de administrador</span>
                                    </div>
                                </div>
                                <!-- Fila de nombre-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="container d-inline-flex">
                                        <div class="form-floating px-1 col-5">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_NombresAdmin"
                                                placeholder="Digite sus nombres" />
                                            <label for="I_Nombres">Nombres</label>
                                        </div>
                                        <div class="form-floating col-6">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_ApellidosAdmin"
                                                placeholder="Digite sus apellidos" />
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
                                            id="I_CedulaAdmin"
                                            placeholder="Cédula de ciudadanía" />
                                        <label class="px-3" for="I_Cedula">Cédula de ciudadanía</label>
                                    </div>
                                </div>
                                <!---->
                                <!--Fila correo electrónico-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="form-floating mx-1 col-11">
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="I_CorreoAdmin"
                                            placeholder="Correo electrónico" />
                                        <label class="px-3" for="I_Correo">Ingrese su correo electrónico</label>
                                    </div>
                                </div>
                                <!---->
                                <!-- Fila de Contraseña-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="container d-inline-flex">
                                        <div class="form-floating px-1 col-5">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_ContrasenaAdmin"
                                                placeholder="Digite sus nombres" />
                                            <label for="I_Nombres">Contraseña</label>
                                        </div>
                                        <div class="form-floating col-6">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_CContrasenaAdmin"
                                                placeholder="Digite sus apellidos" />
                                            <label for="I_Apellidos">Confirmación</label>
                                        </div>
                                    </div>
                                </div>
                                <!---->
                                <!---->
                            </asp:View>
                            <asp:View ID="V_RUsuarios" runat="server">
                                <!-- Fila de nombre-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="container d-inline-flex">
                                        <div class="form-floating px-1 col-5">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_Nombres"
                                                placeholder="Digite sus nombres" />
                                            <label for="I_Nombres">Nombres</label>
                                        </div>
                                        <div class="form-floating col-6">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_Apellidos"
                                                placeholder="Digite sus apellidos" />
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
                                            placeholder="Cédula de ciudadanía" />
                                        <label class="px-3" for="I_Cedula">Cédula de ciudadanía</label>
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
                                            placeholder="Correo electrónico" />
                                        <label class="px-3" for="I_Correo">Ingrese su correo electrónico</label>
                                    </div>
                                </div>
                                <!---->
                                <!-- Fila de Contraseña-->
                                <div class="row mb-2 mb-md-3 mb-lg-3">
                                    <div class="container d-inline-flex">
                                        <div class="form-floating px-1 col-5">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_Contrasena"
                                                placeholder="Digite sus nombres" />
                                            <label for="I_Nombres">Contraseña</label>
                                        </div>
                                        <div class="form-floating col-6">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="I_CContrasena"
                                                placeholder="Digite sus apellidos" />
                                            <label for="I_Apellidos">Confirmación</label>
                                        </div>
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
                                            placeholder="Teléfono" />
                                        <label class="px-3" for="I_Telefono">Teléfono</label>
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
                                            placeholder="Dirección" />
                                        <label class="px-3" for="I_Direccion">Dirección</label>
                                    </div>
                                </div>
                                <!---->
                                <asp:MultiView ID="MV_Registro_Usuarios" runat="server">
                                    <asp:View ID="V_RUComprador" runat="server"></asp:View>
                                    <asp:View ID="V_RUProveedor" runat="server">
                                        <!--Fila empresa-->
                                        <div class="row mb-2 mb-md-3 mb-lg-3">
                                            <div class="form-floating mx-1 col-11">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="I_Empresa"
                                                    placeholder="Empresa" />
                                                <label class="px-3" for="I_Empresa">Empresa</label>
                                            </div>
                                        </div>
                                        <!---->
                                        <!--Fila certificados-->
                                        <div class="row mb-2">
                                            <div class="col-11">
                                                <span class="form-label h6">Agregue sus certificados de calidad</span>
                                                <div class="input-group mb-2">
                                                    <label class="input-group-text" for="inputGroupFile01">
                                                        Certificados</label>
                                                    <input
                                                        type="file"
                                                        class="form-control"
                                                        id="inputGroupFile01" />
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                    </asp:View>
                                </asp:MultiView>
                            </asp:View>
                        </asp:MultiView>
                        <!--Fila boton registrar-->
                        <div class="row mb-3">
                            <div class="col-11 mx-1 d-grid">
                                <input
                                    runat="server"
                                    onserverclick="Btn_Continuar_clic"
                                    type="submit"
                                    class="btn btn-lg btn-success"
                                    value="Continuar" />
                            </div>
                        </div>
                        <!---->
                        <!--Redirección a iniciar sesion-->
                        <div class="row">
                            <div class="col-11">
                                <div class="form-text">
                                    <span class="form-label text-secondary">¿Ya tienes cuenta en GroupStore?</span>
                                    <a href="VInicioSesion.aspx" class="text-decoration-none text-black">Inicia sesión</a>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                    <!---->
                </div>
                <!---->
            </div>
        </div>
    </form>
</asp:Content>

