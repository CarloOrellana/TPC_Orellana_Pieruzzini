<%@ Page Title="Catalogo" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="DefaultClientes.aspx.cs" Inherits="Web.DefaultClientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
 
    <div class="container" style="margin-top:100px;">
        <div class="row">
            <div class="card-columns">   
                 <%foreach (Dominio.Articulo item in Listar)
                     {%>

                    <div class="card-body">
                       <div class="card text-center"" style="border-color:black; height:530px; width:300px">
                         <img src="<%=item.UrlImagen %>" class="card-img-top" alt="..."  style="width:290px"/>
                           <div class="card-footer" >
                               
                              <p class="card-title" style="font-size:1.5rem"><asp:Label ID="Label1" runat="server" Text="Codigo: "></asp:Label><%=item.Codigo %></p>
                               <p class="card-title" style="font-size:1.5rem"><asp:Label ID="Label2" runat="server" Text="Descripcion: "></asp:Label><%=item.Descripcion %></p>
                                <p class="card-title" style="font-size:2rem"><b><asp:Label ID="Label3" runat="server" Text="Stock: "></asp:Label><%=item.Stock %></b></p>
                              <p class="card-title" style="font-size:2rem"><b><asp:Label ID="Label4" runat="server" Text="Precio: "></asp:Label><%=item.Precio %></b></p>
                            </div>
                        </div>
                    </div>
                                                            
                 <% }%>
            </div>
        </div>
    </div>   
    
     
</asp:Content>
