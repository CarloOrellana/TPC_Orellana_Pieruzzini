<%@ Page Title="Login" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="Web.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group" style=" display: block; position: relative; width: 400px; height:250px; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius:5px; 
     box-shadow:inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); 
     background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%); " >
      
            <h1 style="text-align: center; color:white">Login</h1>

            <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden">
                <span class="icon"><i class="fa fa-at"></i></span>
                <input type="text" placeholder="Usuario" />
            </div>

            <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden">
                <span class="icon"><i class="fa fa-lock"></i></span>
                <input type="password" placeholder="Contraseña" />
            </div>
            <div style="text-align: center">
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-outline-secondary" Style="font-size: large; color: white;  width: 200px; text-align: center; display: inline-block" />
            </div>
        <div style="text-align:center">
            <a href="RecuperarContraseña.aspx" style="color:white">¿Recuperar contraseña?</a>
        </div>
        <div style="text-align:center">
            <a href="Registrarse.aspx" style="color:white">Registrarse</a>
        </div>
        
       
    </div>

</asp:Content>
