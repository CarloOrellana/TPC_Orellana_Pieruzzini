﻿<%@ Page Title="Agregar Materia Prima" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="AgregarMateriales.aspx.cs" Inherits="Web.AgregarMateriales" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <h1 style="color: white; text-align: center; padding-top: 10px;">Agregar Materia Prima</h1>


        

        <div class="col-md-4 mb-3">
            <asp:TextBox ID="txtDescripcion" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Descripcion"></asp:TextBox>
        </div>

        <div class="col-md-4 mb-3">
            <asp:TextBox ID="txtStock" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Stock"></asp:TextBox>
        </div>



      
        <div class="col-md-3" style="text-align: center; margin: 1em 0; overflow: hidden; padding-top: 30px;">
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="btnAgregar_Click" CssClass="btn btn-outline-secondary" Style="color: white; border-color: white; width: 200px; height: 50px;" />
        </div>





    </div>

</asp:Content>
