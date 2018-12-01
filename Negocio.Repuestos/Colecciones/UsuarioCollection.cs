using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio.Repuestos.Colecciones
{
    public class UsuarioCollection
    {
        public UsuarioCollection() { }

        public List<Clases.Usuario> ListaUsuarios(List<DALC.Repuestos.Usuario> usuarioDALC)
        {
            List<Clases.Usuario> listaUsuario = new List<Clases.Usuario>();

            foreach (DALC.Repuestos.Usuario item in CommonBC.Modelo.Usuario)
            {
                Clases.Usuario u1 = new Clases.Usuario();
                u1.Id = item.id;
                u1.Rut = item.rut;
                u1.Dv = char.Parse(item.dv);
                u1.Correo = item.correo;
                u1.Nombre = item.nombre;
                u1.Apellido = item.apellido;
                u1.Telefono = item.telefono;
                u1.Id_perfil = item.id_perfil;
                u1.Direccion = item.direccion;
                u1.Pass = item.pass;

                listaUsuario.Add(u1);


            }
            return listaUsuario;
        }

        public List<Clases.Usuario> ReadAll()
        {
            var usuarios = CommonBC.Modelo.Usuario;
            return ListaUsuarios(usuarios.ToList());
        }
    }
}
