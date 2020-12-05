<%@ Page Title="Registro" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registrarse.aspx.cs" Inherits="Web.Registrarse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>

         function validar() {
             var Contraseña = document.getElementById("txtContraseña").value;
             var Confirmarcontraseña = document.getElementById("txtConfirmarContraseña").value;
             var Nombre = document.getElementById("txtNombre").value;
             var Apellido = document.getElementById("txtApellido").value;
             var DNI = document.getElementById("txtDni").value;
             var Direccion = document.getElementById("txtDireccion").value;
             var Telefono = document.getElementById("txtTelefono").value;
             var Mail = document.getElementById("txtMail").value;
             var Cuil = document.getElementById("txtCuil").value;

             var valido = true;

             if (Contraseña === "") {

                 $("#txtContraseña").addClass("is-invalid");
                 
                 valido = false;
             }
             else {
                 $("#txtContraseña").removeClass("is-invalid");
                 $("#txtContraseña").addClass("is-valid");
             }

             if (Confirmarcontraseña === "") {
                 
                 $("#txtConfirmarContraseña").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtConfirmarContraseña").removeClass("is-invalid");
                 $("#txtConfirmarContraseña").addClass("is-valid");
             }

             if (Nombre === "") {

                 $("#txtNombre").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtNombre").removeClass("is-invalid");
                 $("#txtNombre").addClass("is-valid");
             }

             if (Apellido === "") {

                 $("#txtApellido").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtApellido").removeClass("is-invalid");
                 $("#txtApellido").addClass("is-valid");
             }

             if (DNI === "") {

                 $("#txtDni").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtDni").removeClass("is-invalid");
                 $("#txtDni").addClass("is-valid");
             }

             if (Direccion === "") {

                 $("#txtDireccion").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtDireccion").removeClass("is-invalid");
                 $("#txtDireccion").addClass("is-valid");
             }

             if (Telefono === "") {

                 $("#txtTelefono").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtTelefono").removeClass("is-invalid");
                 $("#txtTelefono").addClass("is-valid");
             }

             if (Mail === "") {

                 $("#txtMail").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtMail").removeClass("is-invalid");
                 $("#txtMail").addClass("is-valid");
             }

             if (Cuil === "") {

                 $("#txtCuil").addClass("is-invalid");
                 valido = false;
             }
             else {
                 $("#txtCuil").removeClass("is-invalid");
                 $("#txtCuil").addClass("is-valid");
             }


             return valido;
         }
    </script>

    <div class="form-group" style="display: block; position: relative; width:auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <div style="margin-left: 50px;">
            <p style="color: white; font-size: 50px; font-style: oblique; text-align:center">Completar Datos</p>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;">
                <asp:TextBox ID="txtContraseña" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Contraseña"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese una contraseña!!
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtConfirmarContraseña" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium; border-bottom-color: black;" placeholder="ConfirmarContraseña"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;">
                <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtApellido" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium; border-bottom-color: black;" placeholder="Apellido"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;" >
                <asp:TextBox ID="txtDni" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium;" placeholder="DNI"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtDireccion" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Direccion"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;">
                <asp:TextBox ID="txtTelefono" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Telefono"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtMail" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="E-mail"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;">
                <asp:TextBox ID="txtCuil" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Cuil"></asp:TextBox>
            </div>
        </div>

        <div class="row" style="margin-left:250px;">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnAceptar" runat="server" OnClientClick="return validar()" OnClick="btnAceptar_Click" Text="Crear Cuenta" />
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </div>
        </div>

    </div>
</asp:Content>



