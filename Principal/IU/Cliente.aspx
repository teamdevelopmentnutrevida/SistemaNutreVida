<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="IU.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/*body {font-family: Arial;}*/

/* Style the tab */
.tab {
  overflow:auto;
  border: 1px #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 7px 8px;
  transition: 0.3s;
  font-size: 15px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #BFDCC0;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #FF7F40;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 10px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="w-100">
            <asp:label runat="server" ID="Ced">Cedula:</asp:label><asp:Label runat="server" ID="CedCl"></asp:Label><br />
            <asp:label runat="server" ID="Nombre">Nombre:</asp:label><asp:Label runat="server" ID="NombCl"></asp:Label><br />
            <asp:label runat="server" ID="FechNacimiento">Fecha de nacimiento:</asp:label><asp:Label runat="server" ID="FechNaCL"></asp:Label><br />
            <asp:label runat="server" ID="Tel">Telefono:</asp:label><asp:Label runat="server" ID="TelCl"></asp:Label> 
            <asp:DropDownList runat="server" ID="whats">
                <asp:ListItem Selected="True" Value="Sí"> Sí </asp:ListItem>
                  <asp:ListItem Value="No"> No </asp:ListItem>
            </asp:DropDownList>
           
        </div>
        <div class="w-100">
            <asp:label runat="server" ID="Sexo">Sexo:</asp:label><asp:Label runat="server" ID="SexCl"></asp:Label><br />
            <asp:label runat="server" ID="Edad">Edad:</asp:label><asp:Label runat="server" ID="EdadCl"></asp:Label><br />
            <asp:label runat="server" ID="Residencia">Residencia:</asp:label><asp:Label runat="server" ID="ResidCl"></asp:Label><br />
            <asp:label runat="server" ID="Email">Email:</asp:label><asp:Label runat="server" ID="EmailCl"></asp:Label><br />
            
        </div>
    </form>
        <div class="tab">
          <button class="tablinks" onclick="openInfo(event, 'HM')">Historial Médico</button>
          <button class="tablinks" onclick="openInfo(event, 'HA')">Habitos Alimentarios</button>
          <button class="tablinks" onclick="openInfo(event, 'Ant')">Antropometría</button>
          <button class="tablinks" onclick="openInfo(event, 'SS')">Seguimiento Semanal</button>
          <button class="tablinks" onclick="openInfo(event, 'SM')">Seguimiento Mensual</button>
        </div>

        <div id="HM" class="tabcontent">
          <h3>Historial Medico</h3>
          <p>falta info.</p>
        </div>

        <div id="HA" class="tabcontent">
          <h3>Habitos Alimentarios</h3>
          <p>Falta info.</p> 
        </div>

        <div id="Ant" class="tabcontent">
          <h3>Antropometría</h3>
          <p>Falta muuucha info</p>
        </div>
        
        <div id="SS" class="tabcontent">
          <h3>Seguimiento Semanal</h3>
          <p>Falta info</p>
        </div>

        <div id="SM" class="tabcontent">
          <h3>Seguimiento Mensual</h3>
          <p>Falta muuucha info</p>
        </div>

        <script>


        function openInfo(evt, sec) {
          var i, tabcontent, tablinks;
          tabcontent = document.getElementsByClassName("tabcontent");
          for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
          }
          tablinks = document.getElementsByClassName("tablinks");
          for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
          }
          document.getElementById(sec).style.display = "block";
          evt.currentTarget.className += " active";
        }
        </script>
    <br />
    <br />
    <br />
</asp:Content>
