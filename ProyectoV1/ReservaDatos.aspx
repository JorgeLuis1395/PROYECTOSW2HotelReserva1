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
    <h3><asp:Label ID="Label14" runat="server" Font-Size="X-Large" aling="center" Text="RESERVA DEL HOTEL ATACAMES 2: "></asp:Label></h3>
         
        <p>
          
        </p>
     <p>
          
        <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Identificación:"></asp:Label>
         <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Small" Height="19px" Width="188px">
             <asp:ListItem Value="0">Seleccione...</asp:ListItem>
             <asp:ListItem Value="cedula">Cédula</asp:ListItem>
             <asp:ListItem Value="pasaporte">Pasaporte</asp:ListItem>
         </asp:DropDownList>
          
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="N° de identificación:" Font-Size="Small"></asp:Label>
         <asp:TextBox ID="TextBox8" runat="server" Width="198px" Font-Size="Small"></asp:TextBox>
          
        </p>
     <p>
     <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Nombre:"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" Width="292px" ValidateRequestMode="Enabled" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Apellido:"></asp:Label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="261px" Font-Size="Small"></asp:TextBox>
        </p>
     <p>
         <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="Teléfono: "></asp:Label>
         <asp:TextBox ID="TextBox4" runat="server" Width="294px" Font-Size="Small"></asp:TextBox>
         </p>
        <p>
    <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Dirección:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="296px" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Ciudad: "></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="172px" Font-Size="Small"></asp:TextBox>
            &nbsp; &nbsp;
    </p>
     <p>
         <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Fecha  Inicio: "></asp:Label>
           &nbsp;<input type="text" id="datepicker" Font-Size="Small" style="width: 148px; height: 21px"/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Font-Size="Small"  Text="Fecha Fin:"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                     <input type="text" id="datepicker1" style="width: 166px; height: 21px"/>
    <br />
         </p>
      <p>
    <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Correo electrónico:"></asp:Label>
           <asp:TextBox ID="TextBox7" runat="server" Width="250px" Font-Size="Small"></asp:TextBox>
         <br />
       <p><asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Piso: "></asp:Label>
        &nbsp;
         
           <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Small">
               <asp:ListItem Value="0">...</asp:ListItem>
               <asp:ListItem>1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
               <asp:ListItem>4</asp:ListItem>
               <asp:ListItem>5</asp:ListItem>
               <asp:ListItem>6</asp:ListItem>
               <asp:ListItem>7</asp:ListItem>
               <asp:ListItem>8</asp:ListItem>
               <asp:ListItem>9</asp:ListItem>
               <asp:ListItem>10</asp:ListItem>
               <asp:ListItem>11</asp:ListItem>
               <asp:ListItem>12</asp:ListItem>
               <asp:ListItem>14</asp:ListItem>
               <asp:ListItem>15</asp:ListItem>
               <asp:ListItem>16</asp:ListItem>
               <asp:ListItem>17</asp:ListItem>
               <asp:ListItem>18</asp:ListItem>
               <asp:ListItem>19</asp:ListItem>
               <asp:ListItem>20</asp:ListItem>
           </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
        <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="Habitación:"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Small">
               <asp:ListItem Value="0">...</asp:ListItem>
               <asp:ListItem>1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
               <asp:ListItem>4</asp:ListItem>
               <asp:ListItem>5</asp:ListItem>
               <asp:ListItem>6</asp:ListItem>
           </asp:DropDownList>
           &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;</p>
    <p>    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button1" runat="server" Text="Reservar Ahora" BackColor="#6699FF" Font-Size="Large"   BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar"  class="btn btn-primary btn-lg" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Atras"  class="btn btn-primary btn-lg" OnClick="Button3_Click" />
   </p> 
       
&nbsp;&nbsp;
     </asp:Content>
