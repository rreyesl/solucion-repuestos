using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RestSharp;


namespace Negocio.Repuestos
{
    public class RestService
    {
        static String URL = "https://j04sgj93r0.execute-api.us-east-1.amazonaws.com/dev/";

        public string nuevoCliente(string nombre, string mail, string pass)
        {
            String ROUTE = "send";


            var client = new RestClient(URL);

            var request = new RestRequest(ROUTE, Method.POST);
            request.RequestFormat = DataFormat.Json;
            request.AddBody(new { type_message = "new_client", name = nombre, email = mail, password = pass });

            IRestResponse response = client.Execute(request);

            var content = response.Content;

            return content;

        }

        public string nuevoUsuario(string nombre, string mail, string rol ,string pass)
        {
            String ROUTE = "send";


            var usuario = new RestClient(URL);

            var request = new RestRequest(ROUTE, Method.POST);
            request.RequestFormat = DataFormat.Json;
            request.AddBody(new { type_message = "new_user", name = nombre, email = mail, role = rol , password = pass });

            IRestResponse response = usuario.Execute(request);

            var content = response.Content;

            return content;

        }

        public string nuevoPresupuesto(string nombre, string mail, string presupuesto)
        {
            String ROUTE = "send";


            var budget = new RestClient(URL);

            var request = new RestRequest(ROUTE, Method.POST);
            request.RequestFormat = DataFormat.Json;
            request.AddBody(new { type_message = "new_budget", name = nombre, email = mail, budget_name = presupuesto });

            IRestResponse response = budget.Execute(request);

            var content = response.Content;

            return content;

        }
        public string nuevoArreglo(string nombre, string mail, string auto)
        {
            String ROUTE = "send";


            var repair = new RestClient(URL);

            var request = new RestRequest(ROUTE, Method.POST);
            request.RequestFormat = DataFormat.Json;
            request.AddBody(new { type_message = "finish_repair", name = nombre, email = mail, auto = auto });

            IRestResponse response = repair.Execute(request);

            var content = response.Content;

            return content;

        }

        public string getReporteCliente(string id_servicio)
        {
            string url_ = "https://nameless-eyrie-17794.herokuapp.com/getServicio/";
            var rep = new RestClient(url_);
            var request = new RestRequest(id_servicio, Method.GET);
            IRestResponse response = rep.Execute(request);
            var content = response.Content;
            string cont = content;
            return cont;

        }


    }
}
