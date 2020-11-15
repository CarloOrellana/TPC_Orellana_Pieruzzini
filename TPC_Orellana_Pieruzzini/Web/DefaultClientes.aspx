<%@ Page Title="Catalogo" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="DefaultClientes.aspx.cs" Inherits="Web.DefaultClientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
 
    <div class="container" style="margin-top:100px;">
        <div class="row">
            <div class="card-columns">   
                 <%foreach (Dominio.Articulo item in Listar)
                     {%>

                    <div class="card-body">
                       <asp:Image ID="Image1" runat="server" />
                       <div class="card text-center"" style="border-color:black; height:530px; width:300px">
                         <img src="<%=item.UrlImagen %>" class="card-img-top" alt="No funciona"  style="width:290px"/>
                           <div class="card-footer" >
                               <p class="card-title" style="font-size:1.5rem"><%=item.Descripcion %></p>
                              <p class="card-title" style="font-size:2rem"><b>$<%=item.Precio %></b></p>
                              <a href="Detalle.aspx?Id=<% =item.Id.ToString() %>" class="btn btn-outline-primary" style="font-size:x-large; height:50px; width:225px; text-align:center;">Detalles</a>
                            </div>
                        </div>
                    </div>
                                                            
                 <% }%>
            </div>
        </div>
    </div>   
    
     
</asp:Content>
