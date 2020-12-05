<%@ Page Title="Modificar Articulo" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="ModificarArticulo.aspx.cs" Inherits="Web.ModificarArticulo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <h1 style="color: white; text-align: center; padding-top: 10px;">Modificar Articulo</h1>
        <div class="container">
            <div class="row">
                <div class="col">
                    <asp:GridView ID="dgvListas" AutoGenerateColumns="False" runat="server" OnRowCommand="dgvListas_RowCommand">
                        <Columns>
                            <asp:ButtonField HeaderText="Editar" ButtonType="Link" Text="Editar" CommandName="bEditar" />
                            <asp:BoundField HeaderText="Id" DataField="Id" />
                            <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                            <asp:BoundField HeaderText="Stock" DataField="Stock" />
                            <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        </Columns>
                    </asp:GridView>

                </div>
                <div class="col">
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtId" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="ID"></asp:TextBox>
                    </div>
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtCodigo" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Codigo"></asp:TextBox>
                    </div>

                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtDescripcion" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Descripcion"></asp:TextBox>
                    </div>

                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtStock" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Stock"></asp:TextBox>
                    </div>

                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtPrecio" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Precio"></asp:TextBox>
                    </div>
                    <div class="col-md-8" style="text-align: center; margin: 1em 0; overflow: hidden; padding-top: 30px;">
                        <asp:Button ID="btnModificar1" runat="server" Text="Modificar" OnClick="btnModificar_Click" CssClass="btn btn-outline-secondary" Style="color: white; border-color: white; width: 200px; height: 50px;" />
                    </div>

                </div>
            </div>
        </div>



    </div>

</asp:Content>
