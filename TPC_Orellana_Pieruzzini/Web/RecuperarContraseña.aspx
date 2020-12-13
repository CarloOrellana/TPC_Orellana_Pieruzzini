<%@ Page Title="Recuperar Contraseña" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="Web.RecuperarContraseña" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <script>

     function validar() {
         var Usuario = document.getElementById("txtUsu").value;
         var Mail = document.getElementById("txtCorreo").value;

         var valido = true;

         if (Usuario === "") {

             $("#txtUsu").addClass("is-invalid");

             valido = false;
         }
         else {
             $("#txtUsu").removeClass("is-invalid");
             $("#txtUsu").addClass("is-valid");
         }

         if (Mail === "") {

             $("#txtCorreo").addClass("is-invalid");
             valido = false;
         }
         else {
             $("#txtCorreo").removeClass("is-invalid");
             $("#txtCorreo").addClass("is-valid");
         }


         return valido;
     }
 </script>
	
    <div class="form-group" style="display: block; position: relative; width:auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <div style="margin-left: 50px;">
            <p style="color: white; font-size: 50px; font-style: oblique; text-align:center">Recuperar Contraseña</p>
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3" style="margin-left:250px;">
                <asp:TextBox ID="txtUsu" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Usuario"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese una contraseña!!
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <asp:TextBox ID="txtCorreo" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium; border-bottom-color: black;" placeholder="Mail"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese un Mail!!
                </div>
            </div>
        </div>

        <div class="form-row">
            <asp:Label ID="lblConfirmar" runat="server" Text="Se envio correctamente el mail con su contraseña"></asp:Label>
            <asp:Label ID="lblError" runat="server" Text="Contraseña/Usuario incorrecto no se pudo enviar el mail"></asp:Label>
        </div>

      
        <div class="row" style="margin-left:250px;">
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnRecuperar" runat="server" OnClientClick="return validar()" OnClick="btnRecuperar_Click" Text="Recuperar Contraseña" CssClass="btn btn-outline-secondary" Style="font-size: large; color: white; width: 200px; text-align: center; display: inline-block" />
            </div>
            <div class="col-md-6" style="padding-left: 40px; padding-top: 10px; padding-bottom: 20px;">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-outline-secondary" Style="font-size: large; color: white; width: 200px; text-align: center; display: inline-block" />
            </div>
        </div>

    </div>


</asp:Content>
