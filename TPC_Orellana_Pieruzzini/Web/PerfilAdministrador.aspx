<%@ Page Title="PerfilAdm" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="PerfilAdministrador.aspx.cs" Inherits="Web.PerfilAdministrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Perfil Administrador</h1>
<div class="container">
        <div class="row">
            <div class="col">
                <asp:GridView ID="dgvListas" AutoGenerateColumns="False" runat="server" OnRowCommand="dgvListas_RowCommand">
                    <Columns>
                        <asp:ButtonField HeaderText="Editar" ButtonType="Link" Text="Editar" CommandName="bEditar" />
                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="NombreUsuario" DataField="NombreUsuario" />
                        <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col">
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
            <div class="col">
                <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" OnRowCommand="GridView1_RowCommand">
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
            <div class="col">
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
                <div class="col-md-10 mb-3" style="text-align: center; margin: 1em 0; overflow: hidden; ">
                    <asp:Button ID="btnCambiar" runat="server" Text="Cambiar" OnClick="btnCambiar_Click" CssClass="btn btn-outline-secondary" Style="color: white; border-color: white; width: 200px; height: 50px;" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>




