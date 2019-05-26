<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Cliente.aspx.cs" Inherits="IU.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
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
        <div class="col-11">
            <h3>Información del Cliente:</h3>
        </div>
<%--        <div class="form-container">--%>
        <div>
            <div class="col-11" style="width:50%; float:left;">
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tCedula">Cédula:</label><asp:Label runat="server" ID="CedCl" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tnombre">Nombre</label><asp:Label runat="server" ID="NombCl" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tFechN">Fecha de Nacimiento:</label><asp:Label runat="server" ID="FechNaCL" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tTel">Teléfono:</label><asp:Label runat="server" ID="Telef" Font-Size="Medium"></asp:Label>
                </div>
                 <div class ="col-11" style="width:50%;">
                    <label class="form-label" for="tWhats">Utiliza whatsapp:</label>
                    <asp:DropDownList runat="server" ID="whats">
                    <asp:ListItem Selected="True" Value="Sí"> Sí </asp:ListItem><asp:ListItem Value="No"> No </asp:ListItem>
                     </asp:DropDownList>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tOcup">Ocupación:</label><asp:Label runat="server" ID="Ocup" Font-Size="Medium"></asp:Label>
                </div>
            </div>
            <div style="width:50%; float:left;">
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tSex">Sexo:</label><asp:Label runat="server" ID="Sexo" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tEdad">Edad</label><asp:Label runat="server" ID="Edad" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tResid">Residencia</label><asp:Label runat="server" ID="Residencia" Font-Size="Medium"></asp:Label>
                </div> 
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tEmail">Email</label><asp:Label runat="server" ID="Email" Font-Size="Medium"></asp:Label>
                </div>  
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tFechIngr">Fecha de Ingreso</label><asp:Label runat="server" ID="FechIngr" Font-Size="Medium"></asp:Label>
                </div>
                 <br />
                <br />
                </div>    
        </div>
    </form>
    <br />

   <div class="col-11" style="width:100%; float:left;">
        <div class="tab">
          <button class="tablinks" onclick="openInfo(event, 'HM')">Historial Médico</button>
          <button class="tablinks" onclick="openInfo(event, 'HA')">Habitos Alimentarios</button>
          <button class="tablinks" onclick="openInfo(event, 'Ant')">Antropometría</button>
          <button class="tablinks" onclick="openInfo(event, 'SS')">Seguimiento Semanal</button>
          <button class="tablinks" onclick="openInfo(event, 'SM')">Seguimiento Mensual</button>
        </div>

        <div id="HM" class="tabcontent">
            <h4>Historial Medico</h4>
            <div class="col-11" style="width:100%;">
                <label class="form-label" for="tAntFam">Antecedentes Familiares:</label><asp:Label runat="server" ID="AntecedF" Font-Size="Medium"></asp:Label>
            </div>
            <div class="col-11" style="width:100%;">
                 <label class="form-label" for="tPat">Patologías que padece:</label><asp:Label runat="server" ID="Patolg" Font-Size="Medium"></asp:Label>
            </div>
                
            <h6>Consumo de:</h6> 
           
             <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tLic">Licor:     </label><asp:Label runat="server" ID="ConsLic" Font-Size="Medium"></asp:Label>
                    <label class="form-label" for="tFrecLic">Frecuencia: </label><asp:Label runat="server" ID="FrecLic" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tLic">Fuma:     </label><asp:Label runat="server" ID="fumad" Font-Size="Medium"></asp:Label>
                    <label class="form-label" for="tFrecFum">Frecuencia: </label><asp:Label runat="server" ID="FrecFuma" Font-Size="Medium"></asp:Label>
                </div>
             <h6>Medicamentos o suplementos que consume:</h6>   
           <table class="table">
               <tr>
                <th scope="col">Medicamento</th>
                <th scope="col">Motivo</th> 
                <th scope="col">Frecuencia</th>
                <th scope="col">Dosis</th>
               </tr>
              <tr>
                <td> </td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
               <tr>
                 <td></td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
               </table> 

             <div class="col-11" style="width:100%;">
                <label class="form-label" for="tFechExm"> Fecha de últimos examenes de sangre o revisión médica:</label><asp:Label runat="server" ID="FechRevMed" Font-Size="Medium"></asp:Label>
            </div>
        </div>
       

        <div id="HA" class="tabcontent">
          <h4>Habitos Alimentarios</h4>
          <div class="col-11" style="width:100%;">
                 <label class="form-label" for="tComD">¿Cuántas veces come al día? </label>
                 <asp:Label runat="server" ID="ComeDiario" Font-Size="Medium"></asp:Label>
           </div>
           <div class="col-11" style="width:100%;">
                 <label class="form-label" for="tComeHoraDia">¿Acostumbra a comer a las horas al día? </label>
                 <asp:Label runat="server" ID="ComeHoraDia" Font-Size="Medium"></asp:Label>
           </div>
            <div class="col-11" style="width:100%;">
                 <label class="form-label" for="tComeExprss">¿Cuántas veces a la semana come fuera o pide un express? </label>
                 <asp:Label runat="server" ID="ComeExprss" Font-Size="Medium"></asp:Label>
           </div>
           <div class="col-11" style="width:100%;">
                <label class="form-label" for="tGenerComeAfuera">¿Generalmente que come fuera de la casa?</label>
                <asp:Label runat="server" ID="GenerComeAfuera" Font-Size="Medium"></asp:Label>
           </div>
            <div class="col-11" style="width:100%;">
                <label class="form-label" for="tAzucarB">¿Cuánta azúcar le agrega a las bebidas?</label>
                <asp:Label runat="server" ID="AzucarB" Font-Size="Medium"></asp:Label>
           </div>
            <div class="col-11" style="width:100%;">
                <label class="form-label" for="tAzucarB">¿Los alimentos que cocina los elabora generalmente? </label>
                <asp:Label runat="server" ID="Label1" Font-Size="Medium"></asp:Label>
           </div>
            <div class="col-11" style="width:100%;">
                <label class="form-label" for="tAguaDia">¿Cuántos vasos de agua toma al día? </label>
                <asp:Label runat="server" ID="AguaDia" Font-Size="Medium"></asp:Label>
           </div>
             <div class="col-11" style="width:100%;">
                <label class="form-label" for="tAder">¿Agrega salsa tomate, mayonesa, mantequilla o natilla a la comida? </label>
                <asp:Label runat="server" ID="Aderezos" Font-Size="Medium"></asp:Label>
           </div>
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
          </div>
         
    <br />
    <br />
    <br />
</asp:Content>
