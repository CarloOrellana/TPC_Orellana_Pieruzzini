<%@ Page Title="Perfil" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="Perfil.aspx.cs" Inherits="Web.Perfil" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">
        <div style="margin-left: 50px;">
            <h1 style="color: white; font-size: 50px; font-style: oblique; text-align:center">Perfil</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col" style="margin-left:100px">
                    <asp:GridView ID="dgvListas" AutoGenerateColumns="False" runat="server" OnRowCommand="dgvListas_RowCommand" Style="color: white; border-color: white; text-align: center; width: 900px; height: 100px">
                        <Columns>
                            <asp:ButtonField HeaderText="Editar" ButtonType="Link" Text="Editar" CommandName="bEditar" />
                            <asp:BoundField HeaderText="Id" DataField="Id" />
                            <asp:BoundField HeaderText="NombreUsuario" DataField="NombreUsuario" />
                            <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:100px">
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtId" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="ID"></asp:TextBox>
                    </div>
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtContrasena" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Contrasena"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="col-md-10 mb-3" style="text-align: center; margin: 1em 0; overflow: hidden;">
                        <asp:Button ID="btnAceptar" runat="server" Text="Editar" OnClick="btnAceptar_Click" CssClass="btn btn-outline-secondary" Style="color: white; border-color: white; width: 200px; height: 50px;" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row" style="margin-top: 80px">
                <div class="col" style="margin-left:100px">
                    <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" OnRowCommand="GridView1_RowCommand" Style="color: white; border-color: white; text-align: center; width: 900px; height: 100px">
                        <Columns>
                            <asp:ButtonField HeaderText="Cambiar" ButtonType="Link" Text="Cambiar" CommandName="bCambiar" />
                            <asp:BoundField HeaderText="DNI" DataField="DNI" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                            <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                            <asp:BoundField HeaderText="Telefono" DataField="Telefono" />
                            <asp:BoundField HeaderText="Cuil" DataField="Cuil" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:100px">
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtDNI" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="DNI"></asp:TextBox>
                    </div>
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtDireccion" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Direccion"></asp:TextBox>
                    </div>
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtTel" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Telefono"></asp:TextBox>
                    </div>
                    <div class="col-md-10 mb-3">
                        <asp:TextBox ID="txtCuil" runat="server" ClientIDMode="Static" CssClass="form-control" Style="font-size: medium; border: medium" placeholder="Cuil"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="col-md-10 mb-3" style="text-align: center; margin: 1em 0; overflow: hidden;">
                        <asp:Button ID="btnCambiar" runat="server" Text="Cambiar" OnClick="btnCambiar_Click" CssClass="btn btn-outline-secondary" Style="color: white; border-color: white; width: 200px; height: 50px;" />
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>



