using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Administrador
{
    public partial class BuscarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            mensaje1.Visible = false;
            mensaje2.Visible = false;

        }

       

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();

            txtDv.Text = c.Digito(txtRut.Text);
        }



        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();

           

            if (c.Modificar(txtRut.Text, txtNombre.Text, txtApellido.Text, txtCorreo.Text, txtDireccion.Text, char.Parse(txtDv.Text), int.Parse(txtTelefono.Text)))
            {



                lbMensaje1.Text = "cliente modificado";
                mensaje1.Visible = true;

                mensaje2.Visible = false;




            }
            else
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;

            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();
            Auto a = new Auto();


           

           
            if (c.Existe(txtRut.Text))
            {

              


                c.BuscarRut(txtRut.Text);
                txtDireccion.Text = c.Direccion;
                txtNombre.Text = c.Nombre;
                txtApellido.Text = c.Apellido;
                txtCorreo.Text = c.Correo;
                txtTelefono.Text = c.Telefono.ToString();

                mensaje1.Visible = true;
                lbMensaje1.Text = "Cliente encontrado";
                mensaje2.Visible = false;

            }
            else
            {

                mensaje1.Visible = false;
                lbMensaje2.Text = "rut no existe";
                mensaje2.Visible = true;
               
            }



        }

        protected void txtEliminar_Click(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();
            Auto a = new Auto();
            Servicio s = new Servicio();
            Detalle_Servicio dt = new Detalle_Servicio();
            Reporte r = new Reporte();
            Img_Reporte ir = new Img_Reporte();


            c.Rut = txtRut.Text;
            ir.EliminarReporteIMG(c.Rut);

            r.EliminarServicioReporte(c.Rut);

            dt.EliminarAutoCliente(c.Rut);

            s.EliminarServicioAuto(c.Rut);

            a.EliminarAutoCliente(c.Rut);


          

            if (c.Eliminar())
            {
                
                lbMensaje1.Text = "Cliente eliminado!";
               mensaje1.Visible = true;
                mensaje2.Visible = false;

                txtDireccion.Text = string.Empty;
                txtNombre.Text = string.Empty; 
                txtApellido.Text = string.Empty; 
                txtCorreo.Text =  string.Empty; 
                txtTelefono.Text =  string.Empty;
                txtRut.Text = string.Empty;

            }
            else
            {

                mensaje1.Visible = false;
                lbMensaje2.Text = "error";
                mensaje2.Visible = true;
            }
        }
    }
}