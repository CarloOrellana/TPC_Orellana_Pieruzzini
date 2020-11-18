<%@ Page Title="Registro" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registrarse.aspx.cs" Inherits="Web.Registrarse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>

         function validar() {
             var usuario = document.getElementById("txtUsuario").value;
             var contraseña = document.getElementById("txtContraseña").value;
             var valido = true;

             if (usuario == "") {

                 $("#txtUsuario").addClass("is-invalid");
                 
                 valido = false;
             }
             else {
                 $("#txtUsuario").removeClass("is-invalid");
                 $("#txtUsuario").addClass("is-valid");
             }
             if (contraseña == "") {
                 
                 $("#txtContraseña").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtContraseña").removeClass("is-invalid");
                 $("#txtContraseña").addClass("is-valid");
             }
             return valido;
         }
    </script>

    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <div style="margin-left: 50px;">
            <p style="color: white; font-size: 50px; font-style: oblique;">Completar Datos</p>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtUsuario" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Usuario"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese un usuario!!
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtContraseña" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium; border-bottom-color: black;" placeholder="Contraseña"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtApellido" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium; border-bottom-color: black;" placeholder="Apellido"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtDni" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium;" placeholder="DNI"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtDireccion" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Direccion"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtTelefono" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Telefono"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtMail" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="E-mail"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtCuil" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Cuil"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnAceptar" runat="server" OnClientClick="return validar()" Text="Crear Cuenta" />
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </div>
        </div>

    </div>
</asp:Content>



