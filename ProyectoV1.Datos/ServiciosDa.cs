namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para servicios
    /// </summary>
    public class ServiciosDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public ServiciosDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena un servicio
        /// </summary>
        /// <param name="servicio">Datos del servicio</param>
        /// <returns>Id de ingreso</returns>
        public int CrearServicio(SER_Servicios servicio)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.SER_Servicios.AddObject(servicio);
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
        /// Método que obtiene un servicio
        /// </summary>
        /// <param name="idServicio">Id del servicio</param>
        /// <returns>Servicio</returns>
        public SER_Servicios ObtenerServicio(int idServicio)
        {
            var retorno = new SER_Servicios();
            try
            {
                retorno = _HotelEntities.SER_Servicios.Single(tc => tc.IdServicio == idServicio);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todos los servicios
        /// </summary>
        /// <returns>Lista de servicios</returns>
        public List<SER_Servicios> ObtenerServicios()
        {
            var listaRetorno = new List<SER_Servicios>();
            try
            {
                listaRetorno = _HotelEntities.SER_Servicios.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza un servicio
        /// </summary>
        /// <param name="servicio">Datos del servicio</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarServicio(SER_Servicios servicio)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.SER_Servicios.Attach(servicio);
                _HotelEntities.ObjectStateManager.ChangeObjectState(servicio, EntityState.Modified);
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
        /// Método que elimina un servicio
        /// </summary>
        /// <param name="idServicio">Id del servicio</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarServicio(int idServicio)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.SER_Servicios", "IdServicio", idServicio), out objetoEliminar);
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
