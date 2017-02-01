namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para Tipo de Habitaciones
    /// </summary>
    public class TipoHabitacionDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public TipoHabitacionDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena un tipo de habitación
        /// </summary>
        /// <param name="tipoHabitacion">Datos del tipo de habitación</param>
        /// <returns>Id de ingreso</returns>
        public int CrearTipoHabitacion(HAB_TipoHabitacion tipoHabitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_TipoHabitacion.AddObject(tipoHabitacion);
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
        /// Método que obtiene un tipo de habitación
        /// </summary>
        /// <param name="idTipoHabitacion">Id del tipo de habitación</param>
        /// <returns>Tipo de Habitación</returns>
        public HAB_TipoHabitacion ObtenerTipoHabitacion(int idTipoHabitacion)
        {
            var retorno = new HAB_TipoHabitacion();
            try
            {
                retorno = _HotelEntities.HAB_TipoHabitacion.Single(tc => tc.IdTipoHabitacion == idTipoHabitacion);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todos los tipos de habitación
        /// </summary>
        /// <returns>Lista de tipos de habitación</returns>
        public List<HAB_TipoHabitacion> ObtenerTiposHabitaciones()
        {
            var listaRetorno = new List<HAB_TipoHabitacion>();
            try
            {
                listaRetorno = _HotelEntities.HAB_TipoHabitacion.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza un tipo de habitación
        /// </summary>
        /// <param name="tipoHabitacion">Datos del tipo de habitación</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarTipoHabitacion(HAB_TipoHabitacion tipoHabitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_TipoHabitacion.Attach(tipoHabitacion);
                _HotelEntities.ObjectStateManager.ChangeObjectState(tipoHabitacion, EntityState.Modified);
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
        /// Método que elimina un tipo de habitación
        /// </summary>
        /// <param name="idTipoHabitacion">Id del tipo de habitación</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarTipoHabitacion(int idTipoHabitacion)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.HAB_TipoHabitacion", "IdTipoHabitacion", idTipoHabitacion), out objetoEliminar);
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
