<%@ Page Title="Login" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="Web.Default" %>

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


    <div class="form-group" style="display: block; position: relative; width: 400px; height: 350px; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">
        <div>
            <h1 style="text-align: center; color: white">Login</h1>

            <div class="input-row" style="text-align: center; margin: 1em 0; margin-left: 60px; padding-bottom: 10px;">
                <asp:TextBox ID="txtUsuario" ClientIDMode="Static" CssClass="form-control" placeholder="N° Usuario" runat="server"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese el usuario / Usuario Incorrecto !!
                </div>
            </div>

            <div class="input-row" style="text-align: center; margin: 1em 0; margin-left:60px; padding-bottom:10px;">
               <asp:TextBox ID="txtContraseña" ClientIDMode="Static" type="password"  CssClass="form-control" placeholder="Contraseña" runat="server"></asp:TextBox>
                <div class="invalid-feedback">
                    Ingrese la contraseña / Contraseña Incorrecta !!
                </div>
            </div>
            <div style="text-align: center; padding-bottom:20px;">
                <asp:Button ID="btnIngresar" runat="server" OnClientClick="return validar()" OnClick="btnIngresar_Click" Text="Ingresar" CssClass="btn btn-outline-secondary" Style="font-size: large; color: white; width: 200px; text-align: center; display: inline-block" />
            </div>
            <div style="text-align: center; padding-bottom:10px;">
                <a href="RecuperarContraseña.aspx" style="color: white">¿Recuperar contraseña?</a>
            </div>
            <div style="text-align: center; padding-bottom:10px;">
                <a href="Registrarse.aspx" style="color: white">Registrarse</a>
            </div>

        </div>
    </div>

</asp:Content>
