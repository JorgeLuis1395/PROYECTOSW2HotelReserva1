namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para imágenes de la habitación
    /// </summary>
    public class HabitacionImagenesDa
    {
        /// <summary>
        /// Entidades de Hotel
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public HabitacionImagenesDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena una imagen de la habitación
        /// </summary>
        /// <param name="imagen">Datos de la imagen</param>
        /// <returns>Id de ingreso</returns>
        public int CrearImagenHabitacion(HAB_HabitacionImagenes imagen)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_HabitacionImagenes.AddObject(imagen);
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
        /// Método que obtiene una imagen de la habitación
        /// </summary>
        /// <param name="idHabitacion">Id de la habitación</param>
        /// <returns>Imagen de la Habitación</returns>
        public HAB_HabitacionImagenes ObtenerImagenHabitacion(int idHabitacion)
        {
            var retorno = new HAB_HabitacionImagenes();
            try
            {
                retorno = _HotelEntities.HAB_HabitacionImagenes.Single(tc => tc.IdHabitacion == idHabitacion);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todas las imágenes de una habitación
        /// </summary>
        /// <returns>Lista de imágenes</returns>
        public List<HAB_HabitacionImagenes> ObtenerHabitacionImagenes()
        {
            var listaRetorno = new List<HAB_HabitacionImagenes>();
            try
            {
                listaRetorno = _HotelEntities.HAB_HabitacionImagenes.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza una imagen de la habitación
        /// </summary>
        /// <param name="idImagen">Datos de la imagen</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarImagenHabitacion(HAB_HabitacionImagenes idImagen)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_HabitacionImagenes.Attach(idImagen);
                _HotelEntities.ObjectStateManager.ChangeObjectState(idImagen, EntityState.Modified);
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
        /// Método que elimina una imagen de la habitación
        /// </summary>
        /// <param name="idHabitacion">Id de la habitación</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarImagenHabitacion(int idHabitacion)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.HAB_HabitacionImagenes", "IdHabitacion", idHabitacion), out objetoEliminar);
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
