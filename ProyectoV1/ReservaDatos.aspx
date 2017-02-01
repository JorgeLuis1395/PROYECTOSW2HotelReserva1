<%@ Page Title="Servicios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReservaDatos.aspx.cs" Inherits="ProyectoV1.ReservaDatos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>

    <script>
    $(function () {
  $("#card-form").submit(function(event) {
    var $form = $(this);

    // Previene hacer submit más de una vez
    $form.find("button").prop("disabled", true);
    Conekta.token.create($form, conektaSuccessResponseHandler, conektaErrorResponseHandler);
   //Conekta.Token.create($form, conektaSuccessResponseHandler, conektaErrorResponseHandler); //v5+
   
    // Previene que la información de la forma sea enviada al servidor
    return false;
  });
    });
        </script>
   <script src="jquery.ui.datepicker-es.js"></script>
   

    <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepicker").datepicker({ minDate: 0 });
        });
    </script>
    <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepicker1").datepicker({ minDate: 0 });
        });
    </script>
    <h3>&nbsp;</h3>
    <h3><asp:Label ID="Label14" runat="server" Font-Size="X-Large" aling="center" Text="RESERVA DEL HOTEL ATACAMES 2: "></asp:Label>
    <p>&nbsp;</p>
    <p></p>
    <p>
        <h23><font size="3">
        <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="Tipo de Identificacion:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <select name="cedula0" style="width: 145px">
            <option value="1">Seleccionar....</option>
            <option value="2">Pasaporte</option>
            <option value="3">Cédula Identidad</option>
       </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="N°Identificación"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" Width="165px"></asp:TextBox>
    </p>
   </font>
   </h23>
    <h7 style="width: 865px"><Font Size="3"> .</Font></h7>
    <h3 style="width: 995px"><Font Size="3">Nombres:</Font>
        <asp:TextBox ID="TextBox1" runat="server" Width="1000px" Font-Size="Large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>
   
    <h7 style="width: 865px"> .</h7>
     <h4 style="width: 865px">
         <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Teléfono: "></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server"  Width="237px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </h4> 
         <p></p>
    <p></p>
     <h6 style="width: 865px">.</h6>
    <h5 style="width: 995px"/>
    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Dirección:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"  Width="365px" Font-Size="Large"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Ciudad: "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"  Width="228px" Font-Size="Large"></asp:TextBox>
    &nbsp;
    <p></p>
    <p></p>
   <h8 style="width: 865px">.</h8>
    <p></p>
    <p></p>
       <h9 style="width: 865px">
         <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Fecha  Inicio: "></asp:Label>
           <input type="text" id="datepicker" style="width: 171px; height: 21px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Fecha Fin:"></asp:Label>
                     <input type="text" id="datepicker1" style="width: 171px; height: 21px"/>
    <br />
    <br />
    <br />
           </h9>
       <h10 style="width: 865px">
    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Direccion Correo: "></asp:Label>
         <asp:TextBox ID="TextBox7" runat="server"  style="margin-top: 0" Width="237px" Font-Size="Medium">correo@hotmail.com</asp:TextBox>
    <br />
    </h10>
    <p></p>
    <p></p>

    &nbsp;<h11><asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Piso: "></asp:Label>
        <select name="Piso" style="width: 61px">
            <option value="30">....</option> 
            <option value="1">1</option> 
   <option value="2">2</option> 
   <option value="3">3</option>
   <option value="4">4</option> 
   <option value="5">5</option> 
   <option value="6">6</option> 
   <option value="7">7</option> 
   <option value="8">8</option> 
   <option value="9">9</option>
   <option value="10">10</option> 
   <option value="11">11</option> 
   <option value="12">12</option>
   <option value="17">14</option> 
   <option value="18">15</option> 
   <option value="19">16</option>
   <option value="20">17</option> 
   <option value="21">18</option> 
   <option value="22">19</option>
    <option value="23">10</option>
</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h11> <fONT sIZE="3">
        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Habitación:"></asp:Label>
        <select name="Piso0" style="width: 61px">
            <option value="30">....</option> 
            <option value="1">01</option> 
   <option value="2">02</option> 
   <option value="3">03</option>
   <option value="4">04</option> 
   <option value="5">05</option> 
   <option value="6">06</option> 
   
</select>&nbsp;&nbsp;&nbsp;</h11>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </fONT>&nbsp;</h11><p></p>
        
    <br />

    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <center><asp:Button ID="Button1" runat="server" Text="Reservar Ahora" BackColor="#6699FF" Font-Size="Large"  BorderColor="Yellow" BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Atras" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button3_Click" />
    </center>
       
&nbsp;&nbsp;</h16>
     <p></p>
    
    </h3>
</asp:Content>
