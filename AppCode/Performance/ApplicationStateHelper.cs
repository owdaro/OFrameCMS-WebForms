﻿using System.Web;

namespace OWDARO.Performance
{
    public static class ApplicationStateHelper
    {
        /// <summary>
        /// Insert value into the application state using
        /// appropriate name/value pairs
        /// </summary>
        /// <typeparam name="T">Type of application state item</typeparam>
        /// <param name="o">Item to be application state</param>
        /// <param name="key">Name of item</param>
        public static void Add<T>(string key, T o)
        {
            HttpContext.Current.Application.Add(key, o);
        }

        /// <summary>
        /// Remove item from application state
        /// </summary>
        /// <param name="key">Name of application state item</param>
        public static void Clear(string key)
        {
            HttpContext.Current.Application.Remove(key);
        }

        /// <summary>
        /// Check for item in application state
        /// </summary>
        /// <param name="key">Name of application state item</param>
        /// <returns></returns>
        public static bool Exists(string key)
        {
            return HttpContext.Current.Application[key] != null;
        }

        /// <summary>
        /// Retrieve application state item
        /// </summary>
        /// <typeparam name="T">Type of application state item</typeparam>
        /// <param name="key">Name of application state item</param>
        /// <param name="value">Cached value. Default(T) if item doesn't exist.</param>
        /// <returns>Cached item as type</returns>
        public static bool Get<T>(string key, out T value)
        {
            try
            {
                if (!Exists(key))
                {
                    value = default(T);
                    return false;
                }

                value = (T)HttpContext.Current.Application[key];
            }
            catch
            {
                value = default(T);
                return false;
            }

            return true;
        }
    }
}