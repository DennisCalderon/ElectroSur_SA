﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using System.Data;

namespace CapaNegocio
{
    public class NbdiSOCpSociedades
    {
        //M�todo Insertar que llama al m�todo Insertar de la clase DPostres
        //de la CapaDatos
        public static string Insertar(
            string sBUKRS,
            string sBUTXT)
        {
            DbdiSOCpSociedades Obj = new DbdiSOCpSociedades();
            Obj.BUKRS = sBUKRS;
            Obj.BUTXT = sBUTXT;
            return Obj.Insertar(Obj);
        }

        //------------------------------------------------------------------
        //Metodo Editar que llama al metodo Editar de la clase DPostres
        //de la CapaDatos
        public static string Editar(
            string sBUKRS,
            string sBUTXT)
        {
            DbdiSOCpSociedades Obj = new DbdiSOCpSociedades();
            Obj.BUKRS = sBUKRS;
            Obj.BUTXT = sBUTXT;
            return Obj.Editar(Obj);
        }
        //------------------------------------------------------------------
        //M�todo Eliminar que llama al m�todo Eliminar de la clase DPostres
        //de la CapaDatos
        public static string Eliminar(string sBUKRS)
        {
            DbdiSOCpSociedades Obj = new DbdiSOCpSociedades();
            Obj.BUKRS = sBUKRS;
            return Obj.Eliminar(Obj);
        }

        //------------------------------------------------------------------
        //M�todo Mostrar que llama al m�todo Mostrar de la clase DPostres
        //de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DbdiSOCpSociedades().Mostrar();
        }


        //------------------------------------------------------------------
        //M�todo Buscar que llama al m�todo BuscarNombre
        //de la clase DPostresa de la CapaDatos

        public static DataTable Buscar(string sBUTXT)
        {
            DbdiSOCpSociedades Obj = new DbdiSOCpSociedades();
            Obj.BUTXT = sBUTXT;
            return Obj.Buscar(Obj);
        }

    }
}
