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
    <div class="col-10">
        <h2 class="mb-0">Expediente</h2>

        <form runat="server">
    <div>
         <p class="buscador">
            <asp:Label runat="server">Buscar:</asp:Label>
            <input id="buscador" value="" type="text" />
            <%--<asp:TextBox ID="buscador" type="input" value="" runat="server" ></asp:TextBox>--%>
        </p>
    </div>
       
        <table style="width:100%" id="ListaClientes">
          <tr>
            <th>Cedula</th>
            <th>Nombre</th> 
            <th>Deshabilitar</th>
            <th>Eliminar</th>
          </tr>
          <tr class="item">
            <td><asp:LinkButton runat="server" ID="CedCliente" OnClick="CedCliente_Click">203330222</asp:LinkButton></td>
            <td><asp:Label runat="server" ID="NombCl">Smith Rojas</asp:Label></td> 
            <td><asp:LinkButton runat="server" ID="Deshabil" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td><asp:LinkButton runat="server" ID="Elim" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
          </tr>
          <tr class="item">
            <td><asp:LinkButton runat="server" ID="ced2" OnClick="CedCliente_Click">203330221</asp:LinkButton></td>
            <td><asp:Label runat="server" ID="NombCl2">Jackson Sanchez</asp:Label></td> 
             <td><asp:LinkButton runat="server" ID="des2" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td><asp:LinkButton runat="server" ID="elim2" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
          </tr>
        </table>

        </form>
    </div>
     
    
    

</asp:Content>
