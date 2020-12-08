<%@ Page Title="DatosDePago" Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteClientes.Master" CodeBehind="DatosDePago.aspx.cs" Inherits="Web.DatosDePago" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group" style="display: block; position: relative; width: auto; height: auto; margin: 20px auto; background-color: rgba(0,0,0, 0.1); border-radius: 5px; box-shadow: inset 1px 1px 0 0 #d5d7de, inset -1px -1px 0 0 rgba(0,0,0,0.2); background-image: -webkit-radial-gradient(top, circle cover, #4e7a89, #2e3441 80%);">
        <div style="margin-left: 50px;">
            <p style="color: white; font-size: 50px; font-style: oblique; text-align: center">Confirmar Datos de Pago</p>
        </div>

        <div class="row">
            <div class="col-md-4" style="margin-left: 150px;">
                <p class="text-left">Señor/a:<asp:Label ID="lblNombre" runat="server"></asp:Label><asp:Label ID="lblApellido" runat="server"></asp:Label></p>
            </div>
            <div class="col-md-4" style="margin-left: 150px;">
                <p>Documento:<asp:Label ID="lblDni" runat="server"></asp:Label></p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4" style="margin-left: 150px;">
                <p> Dirrecion: <asp:Label ID="lblDireccion" runat="server"></asp:Label> </p>
            </div>
            <div class="col-md-4" style="margin-left: 150px;">
                <p>Telefono:<asp:Label ID="lblTelefono" runat="server"></asp:Label></p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-3" style="margin-left: 150px;">
                <p> Mail: <asp:Label ID="lblMail" runat="server"></asp:Label></p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2 mb-3" style="margin-left: 150px;">
                <p>Fomas de pago:</p>
            </div>
            <div class="col-md-1 mb-3" style="margin-left: 0px;">
                    <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlFormaPago" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFormaPago_OnSelectedIndexChanged" Style="width: 150px; height: 30px; margin-left: 25px; text-align: right">

                            <asp:ListItem Value="1">Efectivo</asp:ListItem>
                            <asp:ListItem Value="2">Tarjeta de Debito</asp:ListItem>
                            <asp:ListItem Value="3">Tarjeta de credito</asp:ListItem>
                            <asp:ListItem Value="4">Mercadopago</asp:ListItem>
                            

                        </asp:DropDownList>
                        <div class="row">
                            <div class="form-row" style="flex-wrap:unset; margin-left:-400px; margin-top:15px; padding-right:100px;">
                                <div class="col-md-4 mb-3" style="margin-left:250px;">
                                    <asp:TextBox ID="txtNumeroTarjeta" runat="server" placeholder="Numero de Tarjeta"></asp:TextBox>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <asp:TextBox ID="txtClave" runat="server" placeholder="CoDigo Tarjeta"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row" style="flex-wrap:unset; margin-left:-400px; margin-top:15px">
                                <div class="col-md-4 mb-3" style="margin-left:250px;">
                                    <asp:TextBox ID="txtMes" runat="server" placeholder="Mes de Vencimiento"></asp:TextBox>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <asp:TextBox ID="txtAnio" runat="server" placeholder="Año de Vencimiento"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </div>
        </div>

        <div class="row">
            <div class="col-md-4" style="margin-left: 150px;">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
            </div>
            <div class="col-md-4" style="margin-left: 150px;">
                <asp:Button ID="btnConfirmarCompra" runat="server" Text="Comprar" OnClick="btnConfirmarCompra_Click"/>
            </div>
        </div>
        
    </div>

</asp:Content>

