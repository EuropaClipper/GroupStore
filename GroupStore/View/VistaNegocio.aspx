<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="VistaNegocio.aspx.cs" Inherits="View_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <br />
    <br />
    <div class="container">
        <div class="row border-bottom">
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <b>NIT:</b>
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <input type="text" runat="server" id="nit" />
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <b>Negocio:</b>
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <input type="text" runat="server" id="nombre" />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <b>Dirección:</b>
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <input type="text" runat="server" id="dir" />
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <b>Teléfono: </b>
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <input type="text" runat="server" id="tel" />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-12 col-sm-6 col-md-6 col-lg-3 text-center">
                <button type="button" class="btn btn-outline-primary me-2"> <a class="nav-link" href="VInfoUsuario.aspx">Volver</a></button>
            </div>
        </div>
    </div>

</asp:Content>

