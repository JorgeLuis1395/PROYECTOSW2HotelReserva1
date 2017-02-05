<%@ Page Title="Reservas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reserva.aspx.cs" Inherits="ProyectoV1.Reserva" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p></p><p></p>
     <h1>
         &nbsp;</h1>
    <h1>
         Reservaciones Online
     </h1>
    <p>
         &nbsp;</p>
    <p>
        
        <table style="width: 1196px; height: 338px" > 
           <tr> 
               <td style="width: 308px"><FONT SIZE=5 color="Blue">Habitación Simple</FONT>
               </td>&nbsp;
               <td></td>
              <td style="width: 474px"><FONT SIZE=5 color="Blue">Habitación Matrimonial</font></td>
               </center>
              </tr>
          <tr>
              <center>
              <td style="width: 308px"><FONT SIZE=3> Acogedora habitación con:</FONT><br />
                 <li><FONT SIZE=3>Baño privado</FONT><br />
                  <li><FONT SIZE=3>Aire Acondicionado</FONT><br />
                  <li><FONT SIZE=3>Cama Simple</FONT><br />
                      <li><FONT SIZE=3>Ducha de Agua Fria/Caliente</FONT><br />
                  <li><FONT SIZE=3>Televisor</FONT><p></p>
              </td>
             
              
             
             
              
             <td> </td>
              
              
              <td style="width: 474px"><FONT SIZE=3>Acogedora habitación con:</FONT><br />
                 <li><font size="3"> Baño privado</font><br />
                  <li><font size="3">Aire Acondicionado</font><br />
                    <li><font size="3">Cama Matrimonial</font><br />
                     <li><font size="3">Ducha de Agua Fria/Caliente</font><br />
                  <li><font size="3">Televisor</font><p></p>
                  </li>
                  </center>
              </tr>
            <tr>
              <td style="width: 308px"> <asp:ImageButton runat="server" ImageUrl="~/Imagenes/índice1.jpeg" Width="306px" /></td>
              
               
               
               
                <td style="width: 313px"></td>
               
               
               <td style="width: 474px"> <asp:ImageButton runat="server" ImageUrl="~/Imagenes/índice.jpeg" /></td>
             
          </tr>
        </table> 
        
        <br />
   </p>
    <p style="width: 1180px">
        
        <asp:Label ID="Label1" runat="server" Text="Agregar: "></asp:Label>
&nbsp;<select name="Numero" style="width: 38px">
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
</select>
        <asp:Label ID="Label2" runat="server" Text="unidades     "></asp:Label>
        <a href="ReservaDatos.aspx" class="btn btn-primary btn-lg">Reservar</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Label3" runat="server" Text="Agregar: "></asp:Label>
&nbsp;<select name="Numero0" style="width: 43px">
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
</select>
        <asp:Label ID="Label4" runat="server" Text="unidades     "></asp:Label>
        <a class="btn btn-primary btn-lg" href="ReservaDatos.aspx">Reservar</a></p>
    <p>
        
        &nbsp;</p>
    <p>
        
        <br/>
        
        <table style="width: 1196px; height: 338px">
             <tr>
            <td style="width: 331px"><FONT SIZE=5 color="Blue">Habitación Triple</FONT></td>
                
               <td style="width: 347px"></td>
               
               
              <td><FONT SIZE=5 color="Blue">Habitación Triple</FONT>
              </td>
                  <tr>
              <center>
              <td style="width: 331px"><FONT SIZE=3> Acogedora habitación con:</FONT><br />
                 <li><FONT SIZE=3>Baño privado</FONT><br />
                  <li><FONT SIZE=3>Aire Acondicionado</FONT><li><FONT SIZE=3>Cama Matrimonial</FONT><br />
                  <li><FONT SIZE=3>Cama Simple</FONT><li><FONT SIZE=3>Ducha de Agua Fria/Caliente</FONT><br />
                  <li><FONT SIZE=3>Televisor</FONT><p></p>
              </td>
              <td style="width: 347px"></td>
              
              <td><FONT SIZE=3>Acogedora habitación con:</FONT><br />
                 <li><font size="3"> Baño privado</font><br />
                  <li><font size="3">Aire Acondicionado</font><br />
                        <li><font size="3">Camas Simples</font><br />
                     <li><font size="3">Ducha de Agua Fria/Caliente</font><br />
                  <li><font size="3">Televisor</font>
                  </li>
                  </center>
                  <br />
                    <p></p>
              </tr>
             <tr>
                  <td style="width: 308px"> <asp:ImageButton runat="server" ImageUrl="~/Imagenes/índice2.jpeg" Width="306px" /></td>
                 <td style="width: 347px"></td>
               
                <td> <asp:ImageButton runat="server" ImageUrl="~/Imagenes/índice3.jpeg" Height="156px" Width="254px" /></td>
             </tr>
        </table>
   </p>
    <p style="width: 1180px">
        
        <asp:Label ID="Label5" runat="server" Text="Agregar: "></asp:Label>
&nbsp;<select name="Numero1" style="width: 43px">
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
</select>
        <asp:Label ID="Label6" runat="server" Text="unidades     "></asp:Label>
        <a class="btn btn-primary btn-lg" href="ReservaDatos.aspx">Reservar</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Label7" runat="server" Text="Agregar: "></asp:Label>
&nbsp;<select name="Numero2" style="width: 50px">
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
</select>
        <asp:Label ID="Label8" runat="server" Text="unidades     "></asp:Label>
        <a class="btn btn-primary btn-lg" href="ReservaDatos.aspx">Reservar</a></p>
     <p>
         </p><p></p>
</asp:Content>
