<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="IU.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<style type="text/css">
        #ImagenInicio {
            /* Asignamos una altura mínima */
            /*min-height: 100vh;*/
            background-color: transparent;
            background-image: url("img/InicioSesion.jpg");
            background-size: cover;
            background-position: center;
            height: 920px;
        }

        .lbInicio {
            font-size: x-large;
            font-weight: bolder;
        }

        .padding-0 {
            padding-right: 0;
            padding-left: 0;
        }

        .colorBoton,
        .colorBoton:active {
            background-color: #3e8879;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            border-bottom-color: antiquewhite;
        }

            .colorBoton:hover {
                background-color: #336359;
            }

        ::-webkit-input-placeholder {
            font-size: 20px;
        }

        ::-moz-placeholder {
            font-size: 20px;
        }

        :-ms-input-placeholder {
            font-size: 20px;
        }

        textarea {
            font-size: 20pt;
        }

		.letrabtn {
            font-size: 20px;
        }

		.textareaLabel {
            font-size: 26px;
        }


        .abs-center {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .form {
            width: 450px;
        }
    </style>


		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-5">

					<h1 class="mb-0" style="font-size: 40px">ADMINISTRAR 
                    <span class="text-primary">CREDENCIALES</span>
					</h1>

					<br /><br /><br />

					 <form class="form-horizontal subheading mb-5 form" runat="server">
                        <div class="form-group">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label CssClass="textareaLabel" ID="lbCorreo" runat="server" Text="Nuevo Correo Electrónico:" ></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtCorreo" runat="server" placeholder="DIGITE EL CORREO" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label CssClass="textareaLabel"  ID="lbContrasena" runat="server" Text="Nueva Contraseña:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" placeholder="DIGITE LA NUEVA CONTRASEÑA" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
						<div class="form-group">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label CssClass="textareaLabel" ID="lbRepetir" runat="server" Text="Repetir Nueva Contraseña:"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtRepetir" runat="server" TextMode="Password" placeholder="REPITA LA NUEVA CONTRASEÑA" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
						 <br />
                        <div class="form-group">
                            <div class="col-sm-10">
                               <asp:Button ID="btnGuardar" runat="server" Text="GUARDAR CAMBIOS" CssClass="btn btn-primary colorBoton letrabtn" />
                            </div>
                        </div>

                    </form>

				</div>
			</div>
		</div>
				

</asp:Content>
