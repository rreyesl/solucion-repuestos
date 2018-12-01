using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class ClienteCollection
    {
        public ClienteCollection() { }

        public List<Clases.Cliente> ListaClientes(List<DALC.Repuestos.Cliente> clienteDALC)
        {
            List<Clases.Cliente> listaCliente = new List<Clases.Cliente>();

            foreach (DALC.Repuestos.Cliente item in CommonBC.Modelo.Cliente)
            {
                Clases.Cliente c = new Clases.Cliente();
                c.Id = item.id;
                c.Rut = item.rut;
                c.Dv = char.Parse(item.dv);
                c.Correo = item.correo;
                c.Nombre = item.nombre;
                c.Apellido = item.apellido;
                c.Telefono = item.telefono;
                c.Direccion = item.direccion;

                listaCliente.Add(c);

            }
            return listaCliente;
        }
        public List<Clases.Cliente> ReadAll()
        {
            var clientes = CommonBC.Modelo.Cliente;
            return ListaClientes(clientes.ToList());
        }
    }
}
