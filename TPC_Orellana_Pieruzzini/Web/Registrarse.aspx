<%@ Page Title="Registro" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registrarse.aspx.cs" Inherits="Web.Registrarse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">
         <div class="row">
            <div style="margin-left:50px;">
                <p style=" color:white; font-size:50px; font-style:oblique; ">Completar Datos</p>
            </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblUsuario" runat="server" Style="color: white; margin: 20px auto; margin-right: 35px; font-size: large">Usuario: </asp:Label>
                <asp:TextBox ID="tbxUsuario" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblContraseña" runat="server" Style="color: white; margin: 20px auto; margin-right: 7px; font-size: large">Contraseña: </asp:Label>
                <asp:TextBox ID="tbxContraseña" runat="server" Style="font-size: medium; border: medium; border-bottom-color: black;"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblNombre" runat="server" Style="color: white; margin: 20px auto; margin-right: 22px; font-size: large">Nombres: </asp:Label>
                <asp:TextBox ID="tbxNombre" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblApellido" runat="server" Style="color: white; margin: 20px auto; margin-right: 30px; font-size: large">Apellido: </asp:Label>
                <asp:TextBox ID="tbxApellido" runat="server" Style="font-size: medium; border: medium; border-bottom-color: black;"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Label ID="lblDni" runat="server" Style="color: white; margin: 20px auto; margin-right: 63px; font-size: large">DNI: </asp:Label>
                <asp:TextBox ID="tbxDni" runat="server" Style="font-size: medium; border: medium;"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Label ID="lblDireccion" runat="server" Style="color: white; margin: 20px auto; margin-right: 20px; font-size: large">Direccion: </asp:Label>
                <asp:TextBox ID="tbxDireccion" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Label ID="lblTelefono" runat="server" Style="color: white; margin: 20px auto; margin-right: 26px; font-size: large">Telefono: </asp:Label>
                <asp:TextBox ID="tbxTelefono" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Label ID="lblMail" runat="server" Style="color: white; margin: 20px auto; margin-right: 45px; font-size: large">E-Mail: </asp:Label>
                <asp:TextBox ID="tbxMail" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Label ID="lblCuil" runat="server" Style="color: white; margin: 20px auto; margin-right: 65px; font-size: large">Cuil: </asp:Label>
                <asp:TextBox ID="tbxCuil" runat="server" Style="font-size: medium; border: medium"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnAceptar" runat="server" Text="Crear Cuenta" />
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </div>
        </div>

    </div>
</div>
</asp:Content>



