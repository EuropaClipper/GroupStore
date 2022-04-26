<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VInfoUsuario.aspx.cs" Inherits="View_VInfoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <form runat="server">
        <br />
        <br />
        <div class="container">
            <div class="row border-bottom">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Cédula: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input runat="server" type="text" id="cdl" readonly />
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Nombre: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="nom" readonly />
                </div>
            </div>
            <br />
            <div class="row border-bottom">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Apellido: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="ape" />
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Correo: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="correo" readonly />
                </div>
            </div>
            <br />
            <div class="row border-bottom">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Dirección: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="dir" />
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Teléfono: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="tel" readonly />
                </div>
            </div>
            <br />
            <div class="row border-bottom">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <b>Contraseña: </b>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                    <input type="text" runat="server" id="cont" readonly />
                </div>
                <asp:MultiView ID="MV_Datos" runat="server">
                    <asp:View ID="MV_DProveedor" runat="server">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                                <b>Empresa: </b>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                                <input type="text" runat="server" id="empresa" readonly />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                                <b>Certificados: </b>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                                <input type="text" runat="server" id="cert" readonly />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar</button>
                            </div>
                        </div>
                        <br />
                    </asp:View>
                    <asp:View runat="server" ID="MV_DUsuario">
                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar</button>
                        </div>
                    </asp:View>
                    <asp:View runat="server" ID="MV_DNegocio">
                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar</button>
                        </div>
                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                            <a href="VInicioAdministrador.aspx" class="btn btn-primary">Negocio</a>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
            <br />
            <div class="row border-bottom">
                <div class="col-12 col-sm-3 col-md-3 col-lg-3 text-center">
                    <div class="modal fade" id="ModalEditar">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Editar Datos</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Cédula</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="cdl2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Nombre</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="nom2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Apellido</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="ape2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Correo</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="correo2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Dirección</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="dir2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Teléfono</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="tel2" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row border-bottom">
                                            <div class="col-6">
                                                <b>Contraseña</b>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" runat="server" id="cont2" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:MultiView ID="MV_Editar" runat="server">
                                            <asp:View ID="MV_PEditar" runat="server">
                                                <div class="row border-bottom">
                                                    <div class="col-6">
                                                        <b>Empresa</b>
                                                    </div>
                                                    <div class="col-6">
                                                        <input type="text" runat="server" id="empresa2" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row border-bottom">
                                                    <div class="col-6">
                                                        <b>Certificados</b>
                                                    </div>
                                                    <div class="col-6">
                                                        <input type="text" runat="server" id="cert2" />
                                                    </div>
                                                </div>
                                                <br />
                                            </asp:View>
                                        </asp:MultiView>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button
                                        type="button"
                                        class="btn btn-danger"
                                        data-bs-dismiss="modal">
                                        Cancelar
                                    </button>
                                    <button
                                        runat="server"
                                        onserverclick="Btn_Editar"
                                        type="button"
                                        class="btn btn-success">
                                        Editar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </form>
</asp:Content>

