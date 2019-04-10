﻿<%@ Page Title="Seguimiento Semanal" Language="C#" MasterPageFile="~/NutreVidaMaster.Master" AutoEventWireup="true" CodeBehind="SeguimientoSemanal.aspx.cs" Inherits="IU.SeguimientoSemanal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/tabla.css" />
    <style>
        #div1 {
            overflow: scroll;
            height: 350px;
            width: 100%;
        }

        table {
            font-family: arial, sans-serif;
            border-collapse: initial;
            width: 50%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 6px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="tab-content">
            <form runat="server">
                <div id="SeguimientoSemanal" class="tab-pane fade in active">
                    <div class="container">

                        <div class="form-container">
                            <h3>Seguimiento de pesaje semanal:</h3>
                            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
                            <asp:ScriptManager ID="sp" runat="server"></asp:ScriptManager>
                            <asp:Timer ID="timerTest" runat="server" Interval="1000" OnTick="timerTest_Tick"></asp:Timer>
                            <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Label ID="Fecha" Text="Fecha:" runat="server"></asp:Label>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="timerTest" EventName="tick" />
                                </Triggers>
                            </asp:UpdatePanel>
                            <br />
                            <div class="row">
                                <div class="col-15">
                                    <label class="form-label" for="sCedula">Buscador Historial del Cliente: </label>
                                    <br />
                                    <asp:TextBox ID="sCedula" runat="server" TextMode="Number" placeholder="Cédula del Cliente" Font-Size="Medium"></asp:TextBox>
                                </div>
                                <div class="col-10">
                                    <p></p>
                                    <asp:Button ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" Font-Size="X-Small" />
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-15">
                                    <label class="form-label" for="sPeso">Peso</label>
                                    <asp:TextBox ID="sPeso" runat="server" placeholder="Peso" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <label class="form-label" for="sOreja">Oreja</label>
                                    <asp:TextBox ID="sOreja" runat="server" placeholder="Oreja" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <label class="form-label" for="sEjercicio">Ejercicio</label>
                                    <asp:TextBox ID="sEjercicio" runat="server" placeholder="Ejercicio" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <p></p>
                                    <asp:Button ID="btnAgreg" Text="Agregar" runat="server" OnClick="btnAgreg_Click" Font-Size="X-Small" />

                                </div>
                            </div>
                            <br />
                            <br />
                            <div id="div1">

                                <table>
                                    <asp:Literal ID="LitSeguimiento" runat="server"></asp:Literal>
                                </table>

                            </div>

                        </div>
                    </div>
                </div>
            </form>
            <br />
            <br />
            <br />
        </div>
    </div>


</asp:Content>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="tab-content">
            <form runat="server">
                <div id="SeguimientoSemanal" class="tab-pane fade in active">
                    <div class="container">

                        <div class="form-container">
                            <h3>Seguimiento de pesaje semanal:</h3>
                            <br />
                            <div class="row">
                                <div class="col-15">
                                    <label class="form-label" for="sCedula">Cliente: </label>
                                    <br />
                                    <asp:TextBox ID="sNombre" runat="server" placeholder="Nombre" Font-Size="Small"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-15">
                                    <label class="form-label" for="sSesion">Sesion</label>
                                    <asp:TextBox ID="sSesion" runat="server" placeholder="Sesion" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <label class="form-label" for="sPeso">Peso</label>
                                    <asp:TextBox ID="sPeso" runat="server" placeholder="Peso" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <label class="form-label" for="sOreja">Oreja</label>
                                    <asp:TextBox ID="sOreja" runat="server" placeholder="Oreja" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <label class="form-label" for="sEjercicio">Ejercicio</label>
                                    <asp:TextBox ID="sEjercicio" runat="server" placeholder="Ejercicio" Font-Size="Small"></asp:TextBox>
                                </div>
                                <div class="col-15">
                                    <p></p>
                                    <asp:Button ID="btnAgreg" Text="Agregar" runat="server"  Font-Size="X-Small" OnClick="btnAgreg_Click"/>

                                </div>
                            </div>
                            <br />
                            <br />

                        </div>
                    </div>
                </div>
            </form>
            <br />
            <br />
            <br />
        </div>
    </div>

</asp:Content>--%>

