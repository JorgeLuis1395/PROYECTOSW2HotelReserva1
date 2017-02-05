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
         
        <p>
          
        </p>
     <p>
<<<<<<< HEAD
          
         <asp:Label ID="Label16" runat="server" Text="Tipo de Identificación" Font-Size="Small"></asp:Label>
         :&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Small">
             <asp:ListItem>Cédula</asp:ListItem>
             <asp:ListItem>Pasaporte</asp:ListItem>
         </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label15" runat="server" Text="N° de Identificación: " Font-Size="Small"></asp:Label>
         <asp:TextBox ID="txtCedula" runat="server" Width="174px" Font-Size="Small"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Solo Numeros" ValidationExpression="([0-9]|-)*" ValidationGroup="Identificacion" Font-Size="Small" ForeColor="Red">Ingrese Solo Numeros</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Ingrese su N° de Identificacion">*</asp:RequiredFieldValidator>
         <asp:Label ID="mensaje" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
          
        </p>
     <p>
     <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Nombre:"></asp:Label>
         <asp:TextBox ID="txtNombre" runat="server" Width="292px" ValidateRequestMode="Enabled" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese Solo Letras" Font-Names="Consolas" ValidationExpression="([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)" ValidationGroup="SoloLetras" Display="Dynamic" ForeColor="Red">Ingrese Solo Un Nombre</asp:RegularExpressionValidator>
         &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Ingrese un Nombre">*</asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;</p>
     <p>
         &nbsp;<asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Apellido:"></asp:Label>&nbsp;<asp:TextBox ID="txtApellido" runat="server" Width="261px" Font-Size="Small" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        &nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese Solo Letras" Font-Names="Consolas" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasApellido" Display="Dynamic" ForeColor="Red">Ingrese Solo Apellido Paterno</asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Ingrese un Apellido">*</asp:RequiredFieldValidator>
        </p>
     <p>
         <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="Teléfono: "></asp:Label>
         <asp:TextBox ID="txtTelefono" runat="server" Width="294px" Font-Size="Small" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
         &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese Un Numero Válido" Font-Names="Consolas" ValidationExpression="([0-9]|-)*" ValidationGroup="telefono" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
         &nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese un Teléfono">*</asp:RequiredFieldValidator>
         </p>
        <p>
    <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Dirección:"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" Width="296px" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la Dirección">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Localize ID="Localize1" runat="server"></asp:Localize>
    </p>
     <p>
    <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Ciudad: "></asp:Label>
            &nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtCuidad" runat="server" Width="162px" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCuidad" ErrorMessage="Ingrese Solo Letras" Font-Names="Consolas" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasCuidad" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCuidad" Display="Dynamic" ErrorMessage="Ingrese la Cuidad">*</asp:RequiredFieldValidator>
    </p>
     <p>
         <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Fecha  Inicio: "></asp:Label>
           &nbsp;<input type="text" id="datepicker" style="width: 168px; height: 21px"/>
=======
     <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Nombre:"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" Width="292px" ValidateRequestMode="Enabled" Font-Size="Small"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
           &nbsp;<input type="text" id="datepicker" style="width: 148px; height: 21px"/>
>>>>>>> refs/remotes/origin/master
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="Fecha Fin:"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                     <input type="text" id="datepicker1" style="width: 166px; height: 21px"/>
    <br />
         </p>
      <p>
    <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Correo electrónico:"></asp:Label>
<<<<<<< HEAD
           <asp:TextBox ID="txtCorreo" runat="server" Width="250px" Font-Size="Small"></asp:TextBox>
         &nbsp;&nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electrónico correcto" Font-Names="Consolas" ValidationExpression="[\w]+@{1}[\w]+\.[a-z]{2,3}" ValidationGroup="Correo Electrónico" Display="Dynamic">Correo Incorrecto</asp:RegularExpressionValidator>
         &nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Correo Incorrecto">*</asp:RequiredFieldValidator>
=======
           <asp:TextBox ID="TextBox7" runat="server" Width="250px" Font-Size="Small"></asp:TextBox>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="Escoja Un piso">*</asp:RequiredFieldValidator>
           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
=======
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
>>>>>>> refs/remotes/origin/master
  
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
<<<<<<< HEAD
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="Escoja Una Habitación">*</asp:RequiredFieldValidator>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
     <p></p>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" ForeColor="Red" />
     <p>&nbsp;&nbsp;&nbsp;
=======
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
>>>>>>> refs/remotes/origin/master
    &nbsp;</p>
    <p>    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<<<<<<< HEAD
    <asp:Button ID="ButtonReservar" runat="server" Text="Reservar Ahora" BackColor="#6699FF" Font-Size="Large"  BorderColor="Yellow" BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonLimpiar" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonAtras" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Atras" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button3_Click" />
     <p> 
=======
    <center><asp:Button ID="Button1" runat="server" Text="Reservar Ahora" BackColor="#6699FF" Font-Size="Large"  BorderColor="Yellow" BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Atras" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button3_Click" />
    </center> <p> 
>>>>>>> refs/remotes/origin/master
       
&nbsp;&nbsp;</h16>
     </asp:Content>
