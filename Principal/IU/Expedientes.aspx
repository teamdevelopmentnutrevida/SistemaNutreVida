<%@ Page Title="Expedientes" Language="C#" MasterPageFile="~/NutreVidaMaster.Master" AutoEventWireup="true" CodeBehind="Expedientes.aspx.cs" Inherits="IU.Expedientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <h1 class="mb-0">Expediente</h1>
       
        <p class="lead mb-5">Pruena Expediente</p>

      </div>
    </section>
    <form runat="server">
    <div>
         <p class="buscador">
            <asp:Label runat="server">Buscar:</asp:Label>
            <asp:TextBox ID="buscador" type="input" value="" runat="server"></asp:TextBox>
        </p>
    </div>
        <table style="width:60%">
          <tr>
            <th>Cedula</th>
            <th>Nombre</th> 
            <th>Deshabilitar</th>
            <th>Eliminar</th>
          </tr>
          <tr>
            <td><asp:LinkButton runat="server" ID="CedCliente" OnClick="CedCliente_Click">203330222</asp:LinkButton></td>
            <td>Smith</td> 
            <td><asp:LinkButton runat="server" ID="Deshabil" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td><asp:LinkButton runat="server" ID="Elim" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
          </tr>
          <tr>
            <td><asp:LinkButton runat="server" ID="ced2" OnClick="CedCliente_Click">203330222</asp:LinkButton></td>
            <td>Jackson</td> 
             <td><asp:LinkButton runat="server" ID="des2" OnClientClick="Confirmacion()">Deshabilitar</asp:LinkButton></td>
            <td><asp:LinkButton runat="server" ID="elim2" OnClientClick="Eliminar()">Eliminar</asp:LinkButton></td>
          </tr>
        </table>

        </form>
</asp:Content>
