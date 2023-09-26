<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActualizarUnidad.aspx.cs" Inherits="ActualizarUnidad" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<link href="StyleSheet.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblBuscarUnidad" runat="server" Text="Buscar Registro Inventario" ValidationGroup="ValGroup1"></asp:Label>
        &nbsp;

        <asp:TextBox ID="TxtBuscarUnidad" runat="server" Font-Size="8pt" Width="70px" ValidationGroup="ValGroup1"></asp:TextBox>

        <asp:ImageButton ID="ImgBtnBuscarUnidad" runat="server" 
            ImageUrl="~/Imagenes/tbBuscar.gif" onclick="ImgBtnBuscarUnidad_Click" ValidationGroup="ValGroup1"/>
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblMessage3" runat="server" ForeColor="Red"></asp:Label>
        <br />

            <asp:Label id="LbCodDependencia" runat="server" Width="145px" Text="Dependencia:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLDependencia" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="DependenciaNombre" 
            DataValueField="DependenciaCodigo" EnableTheming="True" 
            AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT [DependenciaCodigo], [DependenciaNombre] FROM [Dependencia] where DependenciaHabilitar = '1' "></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDLDependencia" ErrorMessage="*Favor Ingrese Dependencia" InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label id="LbNomUnidad" runat="server" Width="145px" Text="Nombre Unidad:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:TextBox ID="TBNomUnidad" runat="server" Width="400px" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBNomUnidad" ErrorMessage="*Favor Ingrese el nombre de la unidad."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label id="LbDetUnidad" runat="server" Width="145px" Text="Detalle Unidad:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
              <asp:TextBox ID="TBDetUnidad" runat="server" Width="400px" 
            TextMode="MultiLine" Enabled="False"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBDetUnidad" ErrorMessage="*Favor Ingrese el detalle de la unidad."></asp:RequiredFieldValidator>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            <br />
            <br />
            <asp:Label id="LbFechaExtremaInicial" runat="server" Width="145px" Text="Fecha Extrema Inicial:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:TextBox ID="TBFechaExtremaInicial" runat="server" Enabled="False"></asp:TextBox>&nbsp; <asp:Image id="Imagen1" runat="server" ImageUrl="Imagenes/calendario.gif" ></asp:Image>
            <cc1:CalendarExtender ID="CEFechaExtremaInicial" runat="server" Enabled="True" TargetControlID="TBFechaExtremaInicial" PopupButtonID="Imagen1" Format="dd/MM/yyyy"></cc1:CalendarExtender>            
            <asp:Label id="LbFechaExtremaFinal" runat="server" Width="145px" Text="Fecha Extrema Final:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:TextBox ID="TBFechaExtremaFinal" runat="server" Enabled="False"></asp:TextBox>&nbsp; <asp:Image id="Imagen2" runat="server" ImageUrl="Imagenes/calendario.gif" ></asp:Image>
            <cc1:CalendarExtender ID="CEFechaExtremaFinal" runat="server" Enabled="True" TargetControlID="TBFechaExtremaFinal" PopupButtonID="Imagen2" Format="dd/MM/yyyy"></cc1:CalendarExtender>
            &nbsp;&nbsp;&nbsp;            
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBFechaExtremaInicial" ErrorMessage="*Favor Ingrese la fecha Extrema Inicial"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TBFechaExtremaFinal" ErrorMessage="*Favor Ingrese la fecha Extrema Final"></asp:RequiredFieldValidator>
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TBFechaExtremaInicial" ErrorMessage="*Fecha Extrema Final debe ser mayor o igual a la Fecha Extrema Inicial" Operator="GreaterThanEqual" Type="Date" ControlToValidate="TBFechaExtremaFinal"></asp:CompareValidator>
            <br />
            <asp:Label id="LbUbicacion" runat="server" Width="145px" Text="Ubicacion:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>        
            <asp:DropDownList ID="DDLUbicacion" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="UbicacionNombre" 
            DataValueField="UbicacionCodigo" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT * FROM [UbicacionGeografica] where UbicacionHabilitar = '1'"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DDLUbicacion" ErrorMessage="*Favor Ingrese la Ubicación Geografica" InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label id="LbForma" runat="server" Width="145px" Text="Almacenamiento:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLForma" runat="server" 
            DataSourceID="SqlDataSource3" DataTextField="FormaNombre" 
            DataValueField="FormaCodigo" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label id="LbNumFolios" runat="server" Width="145px" Text="Numero de Folios:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:TextBox ID="TBNumFolios" runat="server" Enabled="False"></asp:TextBox>
            &nbsp;
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT * FROM [Forma_de_conservacion] where FormaHabilitar = '1'"></asp:SqlDataSource>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDLForma" ErrorMessage="*Favor Ingrese el tipo de almacenamiento." InitialValue="0"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBNumFolios" ErrorMessage="*Favor Ingrese la cantidad de Folios"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TBNumFolios" ErrorMessage="*Favor Ingrese la cantidad de Folios" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label id="LbSerie" runat="server" Width="145px" Text="Serie:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLSerie" runat="server" 
            DataSourceID="SqlDataSource4" DataTextField="SerieNombre" 
            DataValueField="SerieCodigo" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT * FROM [Serie] where SerieHabilitar = '1'"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DDLSerie" ErrorMessage="*Favor Ingrese la serie" InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label id="LbAccion" runat="server" Width="145px" Text="Accion:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLAccion" runat="server" 
            DataSourceID="SqlDataSource5" DataTextField="WFAccionNombre" 
            DataValueField="WFAccionCodigo" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT * FROM [WFAccion] where WFAccionHabilitar = '1' and WFAccionNombre in ('ARCHIVAR', 'PRESTAMO')"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DDLAccion" ErrorMessage="*Favor Ingrese la acción." InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label id="LbTipologia" runat="server" Width="145px" Text="Tipologia:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLTipologia" runat="server" 
            DataSourceID="SqlDataSource6" DataTextField="TipologiaNombre" 
            DataValueField="TipologiaCodigo" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT * FROM [Tipologia] where TipologiaHabilitar = '1'"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DDLTipologia" ErrorMessage="*Favor Ingrese la Tipologia." InitialValue="0"></asp:RequiredFieldValidator>        
            <br />
            <br />
            <asp:Label id="LBRegInventario" runat="server" Width="145px" Text="Registro Inventario:" Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:TextBox ID="TBRegInventario" runat="server" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TBRegInventario" ErrorMessage="*Favor Ingrese el Registro del Inventario Fisico"></asp:RequiredFieldValidator>
            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TBRegInventario" ErrorMessage="*Favor Ingrese el Registro del Inventario Fisico" ValidationExpression="\d+"></asp:RegularExpressionValidator>--%>
            <br />
        <br />
            <asp:Label id="LbUsuarioPrestamo" runat="server" Width="145px" Text="Usuario Prestamo:" 
            Font-Bold="False" Font-Italic="False" CssClass="PropLabels"></asp:Label>
            <asp:DropDownList ID="DDLUsuarioPrestamo" runat="server" 
            DataSourceID="SqlDataSource7" DataTextField="UsuarioPrestamo" 
            DataValueField="UserId" AppendDataBoundItems="true" Enabled="False">
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:InventariosConnectionString %>" SelectCommand="SELECT     Usuariosxdependencia.UserId, Usuariosxdependencia.NombresUsuario + ' ' + Usuariosxdependencia.ApellidosUsuario as UsuarioPrestamo, aspnet_Membership.IsApproved
FROM         aspnet_Membership INNER JOIN
                      Usuariosxdependencia ON aspnet_Membership.UserId = Usuariosxdependencia.UserId
WHERE     (aspnet_Membership.IsApproved = '1' ) order by UsuarioPrestamo"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DDLUsuarioPrestamo" ErrorMessage="*Favor Ingrese el usuario del prestamo." InitialValue="0"></asp:RequiredFieldValidator>        
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="BtnActualizarUnidad" runat="server" ImageUrl="~/Imagenes/actualizar.png" 
            onclick="BtnActualizarUnidad_Click" Visible="false" Enabled="false" ToolTip="Actualizar Unidad Documental"/>
            <br />
            <br />
            <asp:Label ID="lblMessage2" runat="server" ForeColor="Red"></asp:Label>      
            <br />
        </form>
    </body>
</html>