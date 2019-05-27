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
                    <asp:Label runat="server" ID="Whatsapp" Font-Size="Medium"></asp:Label>
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
                
            <h4>Consumo de:</h4> 
           
             <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tLic">Licor:     </label><asp:Label runat="server" ID="ConsLic" Font-Size="Medium"></asp:Label>
                    <label class="form-label" for="tFrecLic">Frecuencia: </label><asp:Label runat="server" ID="FrecLic" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tLic">Fuma:     </label><asp:Label runat="server" ID="fumad" Font-Size="Medium"></asp:Label>
                    <label class="form-label" for="tFrecFum">Frecuencia: </label><asp:Label runat="server" ID="FrecFuma" Font-Size="Medium"></asp:Label>
                </div>
             <h4>Medicamentos o suplementos que consume:</h4>   
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
           <h4>Le gusta la mayoría de:</h4>
            <table class="table">
               <tr>
                   <th scope="row">Frutas:</th>
                   <th scope="row">Vegetales:</th>
                   <th scope="row">Leche:</th>
               </tr>
                <tr>
                   <th scope="row">Huevo:</th>
                   <th scope="row">Yogurt:</th>
                   <th scope="row">Carne:</th>
               </tr>
                <tr>
                   <th scope="row">Queso:</th>
                   <th scope="row">Aguacate:</th>
                   <th scope="row">Semillas:</th>
               </tr>
            </table>
            <h4>Recordatorio de 24 Horas</h4>
             <table class="table">
               <tr>
                <th scope="col">Tiempo de Comida</th>
                <th scope="col">Hora</th> 
                <th scope="col">Descripción</th>
               </tr>
              <tr>
                <td>Ayunas</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td>Desayuno</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                <td>Media Mañana</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                <td>Almuerzo</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                <td>Media Tarde</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                <td>Cena</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                <td>Colación Nocturna</td>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
            </table>
        </div>

        <div id="Ant" class="tabcontent">
          <h4>Antropometría</h4>
           <div>
            <div class="col-11" style="width:50%; float:left;">
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tEdad">Edad:</label><asp:Label runat="server" ID="AntrEdad" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPesoActual">Peso Actual:</label><asp:Label runat="server" ID="PesoActual" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPesoMaxTeoria">Peso máximo en teoría:</label><asp:Label runat="server" ID="PesoMaxTeoria" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPesoIdeal">Peso meta o ideal: </label><asp:Label runat="server" ID="PesoIdeal" Font-Size="Medium"></asp:Label>
                </div>
                 <div class ="col-11" style="width:50%;">
                    <label class="form-label" for="tEdadMetab">Edad metabólica: </label><asp:Label runat="server" ID="EdadMetab" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tCintura">Cintura:</label><asp:Label runat="server" ID="Cintura" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tAbdm">Abdomen:</label><asp:Label runat="server" ID="Abdomen" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tCadera">Cadera:</label><asp:Label runat="server" ID="Cadera" Font-Size="Medium"></asp:Label>
                </div> 
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tMuslo">Muslo:</label><asp:Label runat="server" ID="Muslo" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPMB">PMB: </label><asp:Label runat="server" ID="PMB" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tCMB">CMB: </label><asp:Label runat="server" ID="CMB" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tAgua">Agua: </label><asp:Label runat="server" ID="Agua" Font-Size="Medium"></asp:Label>
                </div>
                 <div class ="col-11" style="width:50%;">
                    <label class="form-label" for="tComplexión">Complexión: </label><asp:Label runat="server" ID="Complexión" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tMasaOsea">Masa ósea: </label><asp:Label runat="server" ID="MasaOsea" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tTalla">Talla: </label><asp:Label runat="server" ID="Talla" Font-Size="Medium"></asp:Label>
                </div>                 
            </div>

               <%--Columna #2--%>
            <div style="width:50%; float:left;">
                <div class ="col-11" style="width:50%;">
                    <label class="form-label" for="tCircunfMun">Circunferencia muñeca: </label><asp:Label runat="server" ID="CircunfMun" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tIMC">IMC:</label><asp:Label runat="server" ID="IMC" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGrasaAnalizador">%Grasa analizador:</label><asp:Label runat="server" ID="GrasaAnalizador" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGrasVisceral"> % Grasa Visceral:</label><asp:Label runat="server" ID="GrasVisceral" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGrasBascu">% Grasa báscula: </label><asp:Label runat="server" ID="tGrasBascula" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGB_BI">BI:</label><asp:Label runat="server" ID="GB_BI" Font-Size="Medium"></asp:Label>
                </div> 
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGB_BD">BD:</label><asp:Label runat="server" ID="GB_BD" Font-Size="Medium"></asp:Label>
                </div>  
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGB_PI">PI:</label><asp:Label runat="server" ID="GB_PI" Font-Size="Medium"></asp:Label>
                </div>  
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGB_PD">PD:</label><asp:Label runat="server" ID="GB_PD" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tGB_Tronco">Tronco:</label><asp:Label runat="server" ID="GB_Tronco" Font-Size="Medium"></asp:Label>
                </div>
                 <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPorcentMusculo">% Músculo:</label><asp:Label runat="server" ID="PorcentMusculo" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPM_BI">BI: </label><asp:Label runat="server" ID="PM_BI" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPM_BD">BD:</label><asp:Label runat="server" ID="PM_BD" Font-Size="Medium"></asp:Label>
                </div>                 
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPM_PI">PI:</label><asp:Label runat="server" ID="PM_PI" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPM_PD">PD:</label><asp:Label runat="server" ID="PM_PD" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:50%;">
                    <label class="form-label" for="tPM_Tronco">Tronco</label><asp:Label runat="server" ID="PM_Tronco" Font-Size="Medium"></asp:Label>
                </div> 
               
                </div> <%--Fin columna 2   --%>
            </div>
            <div class="col-11" style="width:100%; float:left;">
                <label class="form-label" for="tObserv">Observación:</label><asp:Label runat="server" ID="Observacion" Font-Size="Medium"></asp:Label>
            </div>
            <br />
            <div class="col-11" style="width:100%; float:left;">
             <div class="col-11" style="width:100%;">
                <label class="form-label" for="tGEB">GEB:</label>
                <asp:Label runat="server" ID="GEB" Font-Size="Medium"></asp:Label>
           </div>
            <div class="col-11" style="width:100%;">
                <label class="form-label" for="tGET">GET:</label>
                <asp:Label runat="server" ID="GET" Font-Size="Medium"></asp:Label>
           </div>
                </div>
             <table class="table">
               <tr>
                <th scope="col">Macronutrientes</th>
                <th scope="col">%</th> 
                <th scope="col">Gramos</th>
                <th scope="col">kcal</th>
               </tr>
              <tr>
                <th scope="row">CHO</th>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <th scope="row">Proteínas</th>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
                 <tr>
                 <th scope="row">Grasas</th>
                <td> </td> 
                <td> </td>
                <td> </td>
              </tr>
            </table>
            <h4>Porciones: </h4>
            <div style="width:25%; float:left;">
                <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tLeche">Leche:</label><asp:Label runat="server" ID="Leche" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tCarnes">Carnes:</label><asp:Label runat="server" ID="Carnes" Font-Size="Medium"></asp:Label>
                </div>
            </div>
             <div style="width:25%; float:left;">
                 <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tVegetales">Vegetales:</label><asp:Label runat="server" ID="PVegetales" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tGrasas">Grasas:</label><asp:Label runat="server" ID="PGrasas" Font-Size="Medium"></asp:Label>
                </div>
            </div>
             <div style="width:25%; float:left;">
                 <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tFruts">Frutas:</label><asp:Label runat="server" ID="PFrutas" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tAzucares">Azúcares:</label><asp:Label runat="server" ID="PAzucares" Font-Size="Medium"></asp:Label>
                </div>
            </div>
             <div style="width:25%; float:left;">
                 <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tHarinas">Harinas:</label><asp:Label runat="server" ID="PHarinas" Font-Size="Medium"></asp:Label>
                </div>
                <div class="col-11" style="width:25%;">
                    <label class="form-label" for="tSuplem">Suplementos:</label><asp:Label runat="server" ID="PSuplemnt" Font-Size="Medium"></asp:Label>
                </div>
            </div>

            <h4>Distribución de porciones entregadas:</h4>
            <table class="table">
               <tr>
                    <th scope="col">Tiempo de Comida</th>
                    <th scope="col">Hora</th> 
                    <th scope="col">Descripción</th>
               </tr>
                <tr>
                    <th scope="row">Ayunas</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Desayuno</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Media Mañana</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Almuerzo</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Media Tarde</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Cena</th>
                    <td> </td> 
                    <td> </td>
              </tr>
                <tr>
                    <th scope="row">Colación Nocturna</th>
                    <td> </td> 
                    <td> </td>
              </tr>
            </table>
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
