<%@ Page Title="" Language="C#" MasterPageFile="~/GerenteGeneral/GerenteGeneral1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Inicio.aspx.cs" Inherits="WebRepuestos.GerenteGeneral.InicioGerenteGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Inicio Gerente General pinochet

       <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    
    
    <Columns>
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
        <asp:BoundField DataField="Patente" HeaderText="Patente" SortExpression="Patente" />
        <asp:BoundField DataField="Observación" HeaderText="Observación" SortExpression="Observación" />
        <asp:BoundField DataField="Ingreso" HeaderText="Ingreso" ReadOnly="True" SortExpression="Ingreso" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:repuestoConnectionString %>" SelectCommand="select t3.nombre + ' ' +  t3.apellido as Nombre, t2.patente as Patente, t4.observacion as Observación,
  convert(varchar(10), t1.fecha_ingreso, 103) as Ingreso  from Servicio as t1 
inner join Auto as t2 on t1.id_auto = t2.id 
inner join Cliente as t3 on t2.id_cliente = t3.id 
inner join Reporte as t4 on t1.id = t4.id_servicio
order by t1.fecha_ingreso desc;"></asp:SqlDataSource>


    <br />

    

       <asp:Button ID="btnExportar" runat="server" OnClick="btnExportar_Click" Text="Exportar" />

    <br />

    <asp:DropDownList ID="ddlMeses" runat="server" Width="150px" AutoPostBack="true" OnSelectedIndexChanged="ddlMeses_SelectedIndexChanged"   >
        <asp:ListItem Text="Enero" Value="1" />
        <asp:ListItem Text="Febrero" Value="2" />
        <asp:ListItem Text="Marzo" Value="3" />
        <asp:ListItem Text="Abril" Value="4" />
        <asp:ListItem Text="Mayo" Value="5" />
        <asp:ListItem Text="Junio" Value="6" />
        <asp:ListItem Text="Julio" Value="7" />
        <asp:ListItem Text="Agosto" Value="8" />
        <asp:ListItem Text="Septiembre" Value="9" />
        <asp:ListItem Text="Octubre" Value="10" />
        <asp:ListItem Text="Noviembre" Value="11" />
        <asp:ListItem Text="Diciembre" Value="12" />
    </asp:DropDownList>

    <asp:DropDownList ID="ddlAnio" runat="server" Width="150px" AutoPostBack="true"   >
        <asp:ListItem Text="2016" Value="2016" />
        <asp:ListItem Text="2017" Value="2017" />
        <asp:ListItem Text="2018" Value="2018" />
    </asp:DropDownList>

    <br />


    <div class="" style="background-color:#fff; max-width:600px;">
        <canvas id="myChart" width="400" height="400"></canvas>
    </div>
    <br />
    

    
<script>
    var arrayDias = [];
    var datos = "<%: Session["repuestoMes"] %>";
    console.log(datos);

    if (datos != "{&#39;repuestos&#39;: ]}") {
        var data = jQuery.parseJSON(datos.replace(/\&#39;/g, "\""));
    } else {
        var data = '{"repuestos":[]}';
        data = jQuery.parseJSON(data);
    }
    
    
    var mes = "<%: Session["sMonth"] %>";
    var year = "<%: Session["sYear"] %>";

    var dias = getDaysInMonth(mes, year);
    console.log(data)
    createGrafico(dias, mes)

    console.log(arrayDias);
    console.log("dias: "+dias);
    console.log(data.repuestos);

    function getDaysInMonth(m, y) {
        console.log("mes: "+m+" - año: "+y)
        return new Date(y, m, 0).getDate();
    }
  
    function createGrafico(dias, mes) {
        var arrayValores = [];

        console.log("repuestos: " + data.repuestos.length)
        console.log("dias: "+dias)
        for (var i = 1; i <= dias; i++) {
            arrayDias.push(i);
            aux = false;
            for (var j = 0; j < data.repuestos.length; j++) {
                dia = (data.repuestos[j].fecha).substring(0, 2);
                m = (data.repuestos[j].fecha).substring(3, 5);
                if (i == dia && m == mes) {
                    arrayValores.push(data.repuestos[j].cantidad);
                    aux = true;
                } 
            }
            if (!aux) {
                arrayValores.push(0);
            }

        }

        console.log(arrayValores);

        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: arrayDias,
                datasets: [{
                    label: 'Repuestos Vendidos Mes Actual',
                    data: arrayValores,
                    backgroundColor: 
                        'rgba(255, 99, 132, 0.2)',
                    borderColor: 
                        'rgba(255,99,132,1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });

        myChart.update();
    }
   



</script>



</asp:Content>
