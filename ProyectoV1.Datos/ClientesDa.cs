namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para clientes
    /// </summary>
    public class ClientesDa
    {
        /// <summary>
        /// Entidades de Hotel
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public ClientesDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena un cliente
        /// </summary>
        /// <param name="cliente">Datos del cliente</param>
        /// <returns>Id de ingreso</returns>
        public int CrearCliente(GEN_Clientes cliente)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Clientes.AddObject(cliente);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }

        /// <summary>
        /// Método que obtiene un cliente
        /// </summary>
        /// <param name="rutCliente">RUT del cliente</param>
        /// <returns>Cliente</returns>
        public GEN_Clientes ObtenerCliente(int rutCliente)
        {
            var retorno = new GEN_Clientes();
            try
            {
                retorno = _HotelEntities.GEN_Clientes.Single(tc => tc.cedula == rutCliente);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todos los clientes
        /// </summary>
        /// <returns>Lista de clientes</returns>
        public List<GEN_Clientes> ObtenerClientes()
        {
            var listaRetorno = new List<GEN_Clientes>();
            try
            {
                listaRetorno = _HotelEntities.GEN_Clientes.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza un cliente
        /// </summary>
        /// <param name="cliente">Datos del cliente</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarCliente(GEN_Clientes cliente)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Clientes.Attach(cliente);
                _HotelEntities.ObjectStateManager.ChangeObjectState(cliente, EntityState.Modified);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }

        /// <summary>
        /// Método que elimina un cliente
        /// </summary>
        /// <param name="rutCliente">RUT del cliente</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarCliente(int rutCliente)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.GEN_Clientes", "RUT", rutCliente), out objetoEliminar);
                _HotelEntities.DeleteObject(objetoEliminar);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }
    }
}
