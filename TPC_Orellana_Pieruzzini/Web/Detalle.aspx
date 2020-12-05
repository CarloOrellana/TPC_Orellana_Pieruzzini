<%@ Page Title="Detalle" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="Detalle.aspx.cs" Inherits="Web.Detalle" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Detalle</h1>

    <div class="container">
        <div class="row">
            <div class="col" style="padding-top: 2em;">
               <img src="<%= articulo.UrlImagen %>" alt="SIN IMAGEN" style="border: medium; width: 290px; background-color: lavenderblush"/>
            </div>
            <div class="col" style="padding-top: 5em;">
                <p style="font-size: 2rem; text-align: center; color:white"><b>Codigo: </b><% = articulo.Codigo %></p>
                <p style="font-size: 2rem; text-align: center; color:white"><b>Descripcion: </b><%= articulo.Descripcion %></p>
                <p style="font-size: 2rem; text-align: center; color:white"><b>Stock: </b><% = articulo.Stock %> unidades</p>
                <p style="font-size: 2rem; text-align: center; color:white"><b>Precio: $</b><% = articulo.Precio %></p>
                <asp:TextBox ID="txtCantidad" runat="server" ></asp:TextBox>
            </div>

        </div>

        <div class="col-4">
                <asp:Button ID="btnCarrito" runat="server" Text="Agregar Al Carrito" OnClick="btnCarrito_Click" class="btn btn-outline-danger" style="font-size: x-large; height: 50px; width: 225px; text-align: center; display: inline-block" />
           </div>

    </div>

</asp:Content>

