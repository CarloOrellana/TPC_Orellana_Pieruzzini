<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_Orellana_Pieruzzini._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-wrapper" style="background-color:cadetblue; margin: 80px auto; width: 400px; height: 200px;  border-style:dotted">
        <h1 style="text-align: center;">Login</h1>
        
        <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden">
            <span class="icon"><i class="fa fa-at"></i></span>
            <input type="text" placeholder="Usuario" />
        </div>

        <div class="input-row" style="text-align: center; margin: 1em 0; overflow: hidden">
            <span class="icon"><i class="fa fa-lock"></i></span>
            <input type="password" placeholder="Contraseña" />
        </div>
        <div style="text-align: center">
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-link" Style="font-size: large; color: white; height: 30px; width: 100px; text-align: center; display: inline-block" />
        </div>
    </div>
</asp:Content>
