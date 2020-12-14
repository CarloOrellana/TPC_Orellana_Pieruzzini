<%@ Page Title="Seguimiento" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteAdministrador.Master" CodeBehind="Seguimiento.aspx.cs" Inherits="Web.Seguimiento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">

        <h1 style="color: white; text-align: center; padding-top: 10px;">Seguimiento</h1>

        <div class="row">
            <div class="col" style="margin-left: 100px">
                <asp:GridView ID="dgvListas1" AutoGenerateColumns="False" runat="server" OnRowCommand="dgvListas1_RowCommand" Style="color: white; border-color: white; text-align: center; width: 900px; height: 100px">
                    <Columns>

                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="N°Factura" DataField="NumeroFactura" />
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                        <asp:BoundField HeaderText="Articulo" DataField="DescripcionArt" />
                        <asp:BoundField HeaderText="Total" DataField="Total" />
                        <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                        <asp:BoundField HeaderText="Estado Entrega" DataField="EstadoEntrega" />
                        <asp:TemplateField HeaderText="Estado Entrega">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack=" false " OnSelectedIndexChanged=" DropDownList1_SelectedIndexChanged ">
                                    <asp:ListItem Value="0">Estado Entrega</asp:ListItem>
                                    <asp:ListItem Value="1">En Proceso</asp:ListItem>
                                    <asp:ListItem Value="2">En Camino</asp:ListItem>
                                    <asp:ListItem Value="3">Entregado</asp:ListItem>
                                    <asp:ListItem Value="4">Demorado</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField HeaderText="Estado Cobro" DataField="EstadoCobro" />
                        <asp:TemplateField HeaderText="Estado Cobro">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="0">Estado Cobro</asp:ListItem>
                                    <asp:ListItem Value="1">Cobrado</asp:ListItem>
                                    <asp:ListItem Value="2">Adeudado</asp:ListItem>
                                    <asp:ListItem Value="3">Banco</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>

                </asp:GridView>
                <div class="col-md-4" style="margin-top: 20px; margin-left: 100px">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnaceptar_Click" CssClass="btn btn-outline-secondary" Style="font-size: x-large; color: white; height: 50px; width: 225px; text-align: center; display: inline-block; margin-bottom:25px;" />
                    </div>

            </div>
        </div>





    </div>

</asp:Content>
