<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNutreVida.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="IU.prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<form id="form1" runat="server">

		  <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <h1 class="mb-0">Nutre 
          <span class="text-primary">Vida</span>
        </h1>
        <div class="subheading mb-5">San Ramón· Elky Fernandez, cod nutri · (506) 585-8468 ·
          <a href="mailto:name@email.com">elky@email.com</a>
        </div>
        <p class="lead mb-5">PRUEBA.</p>
        
      </div>
    </section>


  </div>

        <asp:Calendar ID="Calendar1" runat="server" Width="649px"></asp:Calendar>
    </form>
</asp:Content>
