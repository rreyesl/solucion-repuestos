﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio.Repuestos.Clases;
using Negocio.Repuestos.Colecciones;

namespace WebRepuestos.Mecanico
{
    public partial class AgregarServicio : System.Web.UI.Page
    {

        public decimal SessionProducto
        {
            
            get
            {
                if (Session["session"] == null)
                {
                    Session["session"] = new  decimal();
                }
                return (decimal)Session["session"];
            }

            set
            {
                Session["session"] = value;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SucursalCollection sc = new SucursalCollection();
                UsuarioCollection uc = new UsuarioCollection();
                //ClienteCollection uc = new ClienteCollection();
                AutoCollection ac = new AutoCollection();
                RepuestoCollection rc = new RepuestoCollection();

                ddlRepuesto.DataSource = rc.ReadAll();
                ddlRepuesto.DataValueField = "Valor_Neto";
                ddlRepuesto.DataTextField = "Descripcion";
                //ddlRepuesto.data
                //string s = ddlRepuesto.DataValueField = "Id";
                ddlRepuesto.DataBind();

                txtCantidad.Text = "1";


                ddlSucursal.DataSource = sc.ReadAll();
                ddlSucursal.DataValueField = "Id";
                ddlSucursal.DataTextField = "Nombre";
                ddlSucursal.DataBind();

                ddlUsuario.DataSource = uc.ReadAll();
                ddlUsuario.DataValueField = "Id";
                ddlUsuario.DataTextField = "Rut";
                ddlUsuario.DataBind(); 

                ddlAuto.DataSource = ac.ReadAll();
                ddlAuto.DataValueField = "Id";
                ddlAuto.DataTextField = "Patente";
                ddlAuto.DataBind();
                double calculo = (int.Parse(ddlRepuesto.SelectedValue) * 0.19) + int.Parse(ddlRepuesto.SelectedValue);
                txtNeto.Text = ddlRepuesto.SelectedValue.ToString();
                txtIVA.Text = (int.Parse(ddlRepuesto.SelectedValue) * 0.19).ToString();
                txtTotal.Text = ((int.Parse(ddlRepuesto.SelectedValue) * 0.19) + int.Parse(ddlRepuesto.SelectedValue)).ToString();
                //txtTotal.Text = ((calculo * double.Parse(txtMano.Text))*int.Parse(txtCantidad.Text)).ToString();

                string t1 = ((int.Parse(ddlRepuesto.SelectedValue) * 0.19) + int.Parse(ddlRepuesto.SelectedValue)).ToString();
                //txtTotal.Text = (int.Parse(t1) * int.Parse(txtCantidad.Text)).ToString();

                int indexOfLastItem = ddlUsuario.Items.Count - 1;

                ddlUsuario.SelectedIndex = indexOfLastItem;




            }



        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {



            //if (Page.IsValid)
            //{
                Servicio s = new Servicio();
               
             Detalle_Servicio dt = new Detalle_Servicio();

                s.Descripcion = txtDescripcion.Text;
                s.Fecha_ingreso = dpIngreso.SelectedDate;
                s.Fecha_entrega = dpEntrega.SelectedDate;
                s.Valor_neto = decimal.Parse(txtNeto.Text);
                s.Valor_iva = decimal.Parse(txtIVA.Text);
                //s.Valor_neto = decimal.Parse(txtNeto.Text);
                //s.Valor_iva = decimal.Parse(txtIVA.Text);
                s.Valor_total = decimal.Parse(txtTotal.Text);
                s.Cancelado = chbCancelado.Checked;
                s.Mano_obra = decimal.Parse(txtMano.Text);
                s.Id_sucursal = int.Parse(ddlSucursal.SelectedValue);
                s.Id_usuario = int.Parse(ddlUsuario.SelectedValue);
                s.Id_auto = int.Parse(ddlAuto.SelectedValue);
                s.Repuesto = ddlRepuesto.SelectedItem.ToString();

            
            //a.BuscarPatente(ddlAuto.SelectedItem.ToString());
            


            

            //s.Descripcion = txtDescripcion.Text;
            //s.Fecha_ingreso = dpIngreso.SelectedDate;
            //s.Fecha_entrega = dpEntrega.SelectedDate;
            //s.Valor_neto = decimal.Parse(txtNeto.Text);
            //s.Valor_iva = decimal.Parse(txtIVA.Text);
            ////s.Valor_neto = decimal.Parse(txtNeto.Text);
            ////s.Valor_iva = decimal.Parse(txtIVA.Text);
            //s.Valor_total = decimal.Parse(txtTotal.Text);
            //s.Cancelado = chbCancelado.Checked;
            //s.Mano_obra = decimal.Parse(txtMano.Text);
            //s.Id_sucursal = int.Parse(ddlSucursal.SelectedValue);
            //s.Id_usuario = int.Parse(ddlUsuario.SelectedValue);
            //s.Id_auto = int.Parse(ddlAuto.SelectedValue);
            //s.Repuesto = ddlRepuesto.SelectedItem.ToString();






            //s.Mano_obra = decimal.Parse(txtMano.Text);



            int estado = 1;
                s.Id_estado = estado;
            /*.Id_repuesto = ;*/
            System.Web.HttpContext.Current.Session["sessionString"] = txtTotal.Text;
            System.Web.HttpContext.Current.Session["sessionString2"] = ddlRepuesto.SelectedIndex;
            System.Web.HttpContext.Current.Session["sessionString3"] = txtCantidad.Text;


            //Detalle Servicio



            //  s.Crear();

            Negocio.Repuestos.RestService rs = new Negocio.Repuestos.RestService();


            //  s.BuscarPatente2(ddlAuto.SelectedItem.ToString());



       
            if (s.Crear())
            {

               

                Auto a = new Auto();

                Negocio.Repuestos.Clases.Cliente c = new Negocio.Repuestos.Clases.Cliente();
                a.Patente = ddlAuto.SelectedItem.ToString();

                a.BuscarPatente(a.Patente);
                

                c.BuscarClient(a.Id_cliente);
                rs.nuevoPresupuesto(c.Nombre, c.Correo, txtDescripcion.Text);

                //   System.Web.HttpContext.Current.Session["sessionString3"] = s.Id;
                //dt.Crear();
                // s.Ultimo();
                //int i;
                //i = s.Ultimo();
                //System.Web.HttpContext.Current.Session["sessionString3"] = i;
                // dt.Crear();
                Response.Redirect("DetalleServicio.aspx");
                
            }
            else
            {
                lbMensaje.Text = "Error de servicio";
            }


            //dt.Cantidad = int.Parse(txtCantidad.Text);
            //dt.Id_repuesto = int.Parse(ddlRepuesto.SelectedValue.ToString());
            //dt.Id_servicio = 1;
            //dt.Total = 11;

            //dt.Crear();






            // }
        }

        protected void ddlRepuesto_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtNeto.Text = ddlRepuesto.SelectedValue.ToString();
            txtIVA.Text = (int.Parse(ddlRepuesto.SelectedValue) * 0.19).ToString();
            txtTotal.Text = ((int.Parse(ddlRepuesto.SelectedValue) * 0.19) + int.Parse(ddlRepuesto.SelectedValue)).ToString();

        }

        protected void txtMano_TextChanged(object sender, EventArgs e)
        {
            double calculo = (int.Parse(ddlRepuesto.SelectedValue) * 0.19) + int.Parse(ddlRepuesto.SelectedValue);
            txtTotal.Text = (calculo + (calculo * (double.Parse(txtMano.Text) / 100))).ToString();
        }
    }
}