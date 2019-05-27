<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" CodeBehind="Expedientes.aspx.cs" Inherits="IU.Expedientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/js/buscador.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function Confirmacion() {
            var seleccion = confirm("Desea deshabilitar al cliente?");
            if (seleccion)
                alert("Cliente Deshabilitado");
            else
                return seleccion;
        }
    </script>

    <script type="text/javascript">

        function Eliminar() {
            var seleccion = confirm("Desea eliminar al cliente?");
            if (seleccion)
                alert("Cliente Eliminado");
            else
                return seleccion;
        }
    </script>
    <div class="col-11">
        <h2 class="mb-0">Expedientes</h2>
    </div>
        <form runat="server">
          <br />
            <div class="col-11" style="width:50%;">
                <label class="form-label" for="tBusc">Buscar:</label>
                 <input id="buscador" value="" type="text" />
            </div>
           
           

    <table class="table" id="ListaClientes">
        <tr>
            <th scope="col">Cedula</th>
            <th scope="col">Nombre</th>
            <th scope="col">Deshabilitar</th>
            <th scope="col">Eliminar</th>
        </tr>
        <tr>
            <td>
                <asp:LinkButton runat="server" ID="CedCliente" OnClick="CedCliente_Click">203330222</asp:LinkButton></td>
            <td>
                <asp:Label runat="server" ID="NombCl">Smith Rojas</asp:Label></td>
            <td>
                <asp:LinkButton runat="server" ID="Deshabil" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td>
                <asp:LinkButton runat="server" ID="Elim" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton runat="server" ID="ced2" OnClick="CedCliente_Click">203330221</asp:LinkButton></td>
            <td>
                <asp:Label runat="server" ID="NombCl2">Jackson Sanchez</asp:Label></td>
            <td>
                <asp:LinkButton runat="server" ID="des2" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td>
                <asp:LinkButton runat="server" ID="elim2" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
        </tr>
    </table>
    </form>
     
    
    

</asp:Content>
