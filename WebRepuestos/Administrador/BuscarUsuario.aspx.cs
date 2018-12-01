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
    public partial class BuscarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                PerfilCollection pc = new PerfilCollection();
                ddlPerfil.DataSource = pc.ReadAll();
                ddlPerfil.DataValueField = "Id";
                ddlPerfil.DataTextField = "Nombre";
                ddlPerfil.DataBind();

            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Usuario u = new Usuario();


            u.Rut = int.Parse(txtRut.Text);


            if (u.Existe())
            {
                u.BuscarRut(int.Parse(txtRut.Text));

                txtRut.Text = u.Rut.ToString();
                txtCorreo.Text = u.Correo;
                txtNombre.Text = u.Nombre;
                txtApellido.Text = u.Apellido;
                txtTelefono.Text = u.Telefono.ToString();
                ddlPerfil.SelectedValue = u.Id_perfil.ToString();
                txtDireccion.Text = u.Direccion;

               
              



            }
            else
            {
                lbMensaje0.Text = "rut no existe";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            //Cliente c = new Cliente();
            Usuario u = new Usuario();



            if (u.Modificar(int.Parse(txtTelefono.Text), ddlPerfil.SelectedIndex, txtCorreo.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text))
            {

                lbMensaje.Text = "Usuario modificado";






            }
            else
            {
                lbMensaje.Text = "error";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Usuario c = new Usuario();
           
            Servicio s = new Servicio();
            Detalle_Servicio dt = new Detalle_Servicio();
            Reporte r = new Reporte();
            Img_Reporte ir = new Img_Reporte();


            c.Rut = int.Parse(txtRut.Text);
            ir.EliminarUsuario(c.Rut);
            r.EliminarUsuario(c.Rut);
            dt.EliminarUsuario(c.Rut);
            s.EliminarUsuario(c.Rut);
          



            if (c.Eliminar(int.Parse(txtRut.Text)))
            {
                lbMensaje.Text = "Usuario eliminado!!!";
            }
            else
            {
                lbMensaje.Text = "error";
            }
        }

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {
            Negocio.Repuestos.Clases.Usuario c = new Negocio.Repuestos.Clases.Usuario();

            txtDv.Text = c.Digito(txtRut.Text);
        }
    }
    }
