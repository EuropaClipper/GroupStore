<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VInicioSesion.aspx.cs" Inherits="View_VInicioSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server"
        id="form_registro"
        class="d-flex flex-column my-5 mx-auto p-1 col-10 col-sm-8 col-md-6 col-lg-5 shadow rounded-3 bg-white">
        <div class="container-fluid p-2">
            <div class="row justify-content-center">
                <figure class="my-5 col-10">
                    <div class="text-center">
                        <img
                            src="../Resources/Pagina/logoGroupStore.jpg"
                            class="w-100 rounded-3 shadow"
                            alt="Icono GroupStore" />
                    </div>
                </figure>
            </div>

            <div class="mb-3 row justify-content-center">
                <div class="form-floating mb-3 col-10">
                    <input
                        runat="server"
                        type="email"
                        class="form-control"
                        id="I_Correo"
                        placeholder="name@example.com"
                        required />
                    <label class="px-3" for="I_Correo">Correo electrónico</label>
                </div>
                <div class="form-floating col-10">
                    <input
                        runat="server"
                        type="password"
                        class="form-control"
                        id="I_Contrasena"
                        placeholder="Contraseña"
                        required />
                    <label class="px-3" for="I_Contrasena">Contraseña</label>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-10 d-grid">
                    <input
                        runat="server"
                        onserverclick="Btn_IniciarSesion_Click"
                        type="submit"
                        class="btn btn-success btn-lg"
                        value="Ingresar" />
                </div>
            </div>
            <div class="row justify-content-center mt-2">
                <div class="col-10">
                    <!--trigger modal -->
                    <a
                        href="#"
                        class="text-decoration-none text-black"
                        data-bs-toggle="modal"
                        data-bs-target="#Modal_RecuperarContrasena">Recuperar contraseña
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
                                        aria-label="Close">
                                    </button>
                                </div>
                                <!--Cuerpo del modal-->
                                <div class="modal-body">
                                    <div class="my-2">
                                        <p>Las instrucciones de recuperación de contraseña se enviaran<br />al correo especificado en el registro.</p>
                                    </div>
                                    <div class="row mb-1">
                                        <span class="fst-italic">Ingrese su correo electrónico</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-md-11">
                                            <input
                                                runat="server"
                                                id="I_CorreoRecuperacion"
                                                type="email"
                                                class="form-control"
                                                placeholder="name@example.com" />
                                        </div>
                                    </div>
                                    <div class="row my-1">
                                        <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ErrorMessage="Debe ingresar un correo" Display="Dynamic" ControlToValidate="I_CorreoRecuperacion" ValidationGroup="VG_InicioSesion" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="REV_Correo" runat="server" ErrorMessage="Ingrese un correo valido" Display="Dynamic" ControlToValidate="I_CorreoRecuperacion" ValidationGroup="VG_InicioSesion" CssClass="text-danger" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <!---->
                                <div class="modal-footer">
                                    <button
                                        type="button"
                                        class="btn btn-danger"
                                        data-bs-dismiss="modal">
                                        Cancelar
                                    </button>
                                    <button
                                        runat="server"
                                        id="BtnContinuar"
                                        validationgroup="VG_InicioSesion"
                                        onserverclick="Btn_Continuar_clic"
                                        type="button"
                                        class="btn btn-success">
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
                        <span class="form-label text-secondary">¿Nuevo en GroupStore?</span>
                        <a href="VRegistro.aspx" class="text-decoration-none text-black">Registrate</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

</asp:Content>

