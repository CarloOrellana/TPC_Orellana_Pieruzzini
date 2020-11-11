<%@ Page Title="Listados" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="Listados.aspx.cs" Inherits="Web.Listados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width:auto; height: 700px; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <h1 style="color: white; text-align: center; padding-top: 10px;">Opciones De Listados</h1>

        <div class="row">

         <div class="col-md-3" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
             <asp:Button  runat="server" Text="Clientes" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:200px; height:50px;" />
        </div>

        <div class="col-md-3" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
            <asp:Button ID="btnArticulos" runat="server" Text="Articulos" OnClick="btnArticulos_Click"  CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:200px; height:50px;"/>
        </div>

        <div class="col-md-3" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
           <asp:Button  runat="server" Text="Materiales" OnClick="btnMateriales_Click" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:200px; height:50px;"/>
        </div>
        
        <div class="col-md-3" style="text-align: center; margin: 1em 0; overflow: hidden; ; padding-top: 30px;">
            <asp:Button  runat="server" Text="Ventas" CssClass="btn btn-outline-secondary" style="color:white; border-color:white; width:200px; height:50px;"/>
        </div> 
        </div>
        
        <div class="row" style="text-align:center; display:initial;">
        <asp:GridView ID="dgvListas" OnRowDataBound="dgvListas_RowDataBound"  runat="server" style="width:700px; height:445px; margin: 20px auto; border-color:white; color:white;" ></asp:GridView>
        </div>
        
    </div>

</asp:Content>
