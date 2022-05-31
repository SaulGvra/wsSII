<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vista.aspx.cs" Inherits="vista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="principal container-fluid">

       
        <div class="paddingt row ">
         <div class="col-md-7 col-lg-10">
        <h3 class="mb-2">Reporte de Alumnos Inscritos</h3>
        <h6 class="mb-2" id="titulodatos" >Información de los alumnos</h6>
           </div>
        
            <h3 class="mb-2"></h3>
           
<div class="col-sm-12">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="3" >
            <AlternatingRowStyle BackColor="#ECEEEF" Font-Names="Arial" Font-Size="Small"/>
            <HeaderStyle BackColor="#0088FF" BorderColor="#0088FF" Font-Bold="False" Font-Names="Arial" Font-Size="Small" />
            <PagerStyle BackColor="#D7D7D7" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" />
            <RowStyle BackColor="#38E4E4" Font-Names="Arial" Font-Size="Small" />
        </asp:GridView>
        <br /><br />
    </div>
            </div>
         </div>

</asp:Content>

