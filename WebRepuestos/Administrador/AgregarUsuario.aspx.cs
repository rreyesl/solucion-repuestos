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
    public partial class AgregarUsuario : System.Web.UI.Page
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
                mensaje1.Visible = false;
                mensaje2.Visible = false;

            }
        }

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {
            Usuario u = new Usuario();

            txtDv.Text = u.Digito(txtRut.Text);
            u.Rut = int.Parse(txtRut.Text);

            if (u.Existe())
            {
                mensaje1.Visible = false;
                lbMensaje2.Text = "rut existe";
                mensaje2.Visible = true;
            }
            else
            {
                lbMensaje2.Text = "";
                mensaje2.Visible = false;
                mensaje1.Visible = false;
            }

           
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Usuario u = new Usuario();

            u.Rut = int.Parse(txtRut.Text);

            u.Correo = txtCorreo.Text;
            u.Nombre = txtNombre.Text;
            u.Apellido = txtApellido.Text;
            u.Telefono = int.Parse(txtTelefono.Text);
            u.Id_perfil = int.Parse(ddlPerfil.SelectedValue);
            u.Direccion = txtDireccion.Text;
            u.Dv = char.Parse(txtDv.Text);
            //  u.Pass = txtPass.Text;
            Negocio.Repuestos.RestService rs = new Negocio.Repuestos.RestService();

            if (!u.Existe())
            {
                if (!u.ExisteCorreo(txtCorreo.Text))
                {
                    if (txtPass.Text == txtPass2.Text)
                    {
                        u.Pass = u.Hash(txtPass.Text);


                    }
                    else
                    {
                        lbMensaje.Text = "Password no coinciden";
                    }


                    if (u.Crear())
                    {
                        lbMensaje.Text = "Usuario creado";
                        mensaje1.Visible = true;

                        rs.nuevoUsuario(txtNombre.Text, txtCorreo.Text, ddlPerfil.SelectedValue, txtPass.Text);

                    }
                    else
                    {
                        lbMensaje2.Text = "error";
                        mensaje2.Visible = true;
                    }
                }
                else
                {
                    mensaje1.Visible = false;
                    lbMensaje2.Text = "Correo ya fue registrado";
                    mensaje2.Visible = true;
                }


             
            }
            else
            {
                lbMensaje2.Text = "El rut ya existe";
                mensaje2.Visible = true;
                mensaje1.Visible = false;
            }
        }
    }
}