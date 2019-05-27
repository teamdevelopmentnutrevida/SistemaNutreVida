<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="IU.Notificaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">

        .colorBoton,
        .colorBoton:active {
            background-color: #3e8879;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            border-bottom-color: antiquewhite;
        }
           .colorBoton:hover {
                background-color: #336359;
            }
   
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<form runat="server">
	<div class="container">
			<div class="row">
				<div class="col-sm-7"></div>
				<div class="col-sm-5">
					
					<asp:button ID="btnCita" runat="server" text="Notificaciones de Cita" CssClass="btn btn-primary colorBoton" />	
					<asp:button ID="btnPago" runat="server" text="Notificaciones de Pago" CssClass="btn btn-primary colorBoton" />
				
				</div>
			</div>
		</div>

			<div class="container">
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-11">
						<h1 class="mb-0" style="font-size: 40px">ENVIAR 
                    <span class="text-primary">NOTIFICACIONES</span>
						</h1>
						<br />
						<br />
						<table style="width: 100%" id="ListaClientes">
							<tr>
								<th>Cliente</th>
								<th>Mensaje</th>
								<th>Enviar</th>
							</tr>
							<tr class="item">
								<td>
									<asp:label runat="server" id="NombCl">Smith Rojas</asp:label>
								</td>
								<td>
									<asp:label runat="server" id="Label1">Nutre Vida le recuerda su cita para este lunes a las 10:00 am</asp:label>
								</td>
								<td>
									<asp:linkbutton runat="server" id="Elim">Enviar</asp:linkbutton>
								</td>
							</tr>
							<tr class="item">
								<td>
									<asp:label runat="server" id="Label2">Jackson Sanchez</asp:label>
								</td>
								<td>
									<asp:label runat="server" id="Label3">Nutre Vida le recuerda que tiene pendiente el pago del mes de Junio</asp:label>
								</td>
								<td>
									<asp:linkbutton runat="server" id="LinkButton2">Enviar</asp:linkbutton>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

	</form>
</asp:Content>
