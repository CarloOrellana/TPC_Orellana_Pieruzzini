<%@ Page Title="Detalle" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="Detalle.aspx.cs" Inherits="Web.Detalle" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Detalle</h1>

    <div class="container">
        


        <div class="row">
            <div class="col" style="padding-top: 2em;">
                <img src="<%= articulo.UrlImagen %>" alt="SIN IMAGEN" style="border: medium; width: 290px; background-color: lavenderblush" />
            </div>
            <div class="col" style="padding-top: 5em;">
                <p style="font-size: 2rem; text-align: center; color: white"><b>Codigo: </b><% = articulo.Codigo %></p>
                <p style="font-size: 2rem; text-align: center; color: white"><b>Descripcion: </b><%= articulo.Descripcion %></p>
                <p style="font-size: 2rem; text-align: center; color: white"><b>Stock: </b><% = articulo.Stock %> unidades</p>
                <p style="font-size: 2rem; text-align: center; color: white"><b>Precio: $</b><% = articulo.Precio %></p>
                
                <div class="col-md-4" style="max-width:none">
                   
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            
                            <asp:Label ID="lblCantidad" runat="server" Style="font-size: 2rem; text-align: center; color: white; padding-left: 50px"><b>Cantidad:</b></asp:Label>
                            
                            <asp:DropDownList ID="ddlCantidad" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="ddlCantidad_OnSelectedIndexChanged" Style="width: 150px; height: 30px; margin-left: 25px; text-align: right">


                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="10">Seleccionar otra cantidad</asp:ListItem>

                            </asp:DropDownList>
                            <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                  
                
                </div>
                
                <div class="col-md-4" style="margin-top:20px; margin-left:100px">
                <asp:Button ID="btnCarrito" runat="server" Text="Agregar Al Carrito" OnClick="btnCarrito_Click" class="btn btn-outline-danger" Style="font-size: x-large; height: 50px; width: 225px; text-align: center; display: inline-block; " />
               </div>

            </div>

        </div>
    </div>

</asp:Content>

