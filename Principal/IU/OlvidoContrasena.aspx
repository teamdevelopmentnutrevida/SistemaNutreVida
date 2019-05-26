<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicioSesion.Master" AutoEventWireup="true" CodeBehind="OlvidoContrasena.aspx.cs" Inherits="IU.OlvidoContrasena" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script type="text/javascript">

        $(document).ready(function () {

            var height = $(window).height();

            $('#ImagenInicio').height(height);
        });

    </script>

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

    <div class="" id="container" style="padding: 0">

        <div class="row ">
            <div id="ImagenInicio" class="col-md-8 padding-0"></div>

            <div class="col-md-4 justify-content-center align-items-center minh-100">
                              
                <div class="abs-center">
                    <form class="form-horizontal subheading mb-5 form" runat="server">
                        <div class="col-md-10">
                            <h1 class="mb-0" style="font-size: 36px">Olvido 
                    <span class="text-primary">Contraseña</span>
                            </h1>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbCorreo" runat="server" Text="Correo Electrónico:" CssClass="control-label col-sm-2"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtCorreo" runat="server" placeholder="DIGITE EL CORREO" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            
                            <div class="col-sm-10">
                                <asp:Button ID="btnEnviar" runat="server" Text="ENVIAR" CssClass="btn btn-primary colorBoton" />
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

