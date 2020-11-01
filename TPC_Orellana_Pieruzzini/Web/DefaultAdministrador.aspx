<%@ Page Title="OpcionesAdm" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="DefaultAdministrador.aspx.cs" Inherits="Web.DefaultAdministrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     

    <div class="form-group" style="display: block; position: relative; width: 600px; height: 400px; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <h1 style="color: white; text-align: center; padding-top: 10px;">Opciones De Administrador</h1>

        <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
            <asp:Button ID="Button1" runat="server" Text="Agregar Articulo" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:600px; height:50px;"/>
        </div>

        <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
            <asp:Button ID="Button2" runat="server" Text="Agregar Materia Prima" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:600px; height:50px;"/>
        </div>

        <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
            <asp:Button ID="Button3" runat="server" Text="Listados" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:600px; height:50px;"/>
        </div>
    </div>

</asp:Content>
