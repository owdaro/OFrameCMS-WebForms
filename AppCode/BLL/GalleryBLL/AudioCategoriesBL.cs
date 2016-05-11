﻿using ProjectJKL.AppCode.DAL.GalleryModel;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

namespace OWDARO.BLL.GalleryBLL
{
    public static class AudioCategoriesBL
    {
        public static void Add(GY_AudioCategories entity)
        {
            using (var context = new GalleryEntities())
            {
                Add(entity, context);
            }
        }

        public static void Add(GY_AudioCategories entity, GalleryEntities context)
        {
            context.GY_AudioCategories.Add(entity);

            context.SaveChanges();
        }

        public static void Delete(int id)
        {
            using (var context = new GalleryEntities())
            {
                Delete(id, context);
            }
        }

        public static void Delete(int id, GalleryEntities context)
        {
            if (Exists(id, context))
            {
                var entity = GetObjectByID(id, context);

                context.GY_AudioCategories.Remove(entity);

                context.SaveChanges();
            }
        }

        public static bool Exists(int id)
        {
            using (var context = new GalleryEntities())
            {
                return Exists(id, context);
            }
        }

        public static bool Exists(string title, int? categoryID)
        {
            using (var context = new GalleryEntities())
            {
                return Exists(title, categoryID, context);
            }
        }

        public static bool Exists(int id, GalleryEntities context)
        {
            var query = (from set in context.GY_AudioCategories
                         where set.AudioCategoryID == id
                         select set);

            return query.Any();
        }

        public static bool Exists(string title, int? categoryID, GalleryEntities context)
        {
            var query = (from set in context.GY_AudioCategories
                         where set.Title == title && set.AudioCategoryID == categoryID
                         select set);

            return query.Any();
        }

        public static GY_AudioCategories GetObjectByID(int id)
        {
            using (var context = new GalleryEntities())
            {
                return GetObjectByID(id, context);
            }
        }

        public static GY_AudioCategories GetObjectByID(int id, GalleryEntities context)
        {
            var query = (from set in context.GY_AudioCategories
                         where set.AudioCategoryID == id
                         select set);

            return query.FirstOrDefault();
        }

        public static async Task<GY_AudioCategories> GetObjectByIDAsync(int id)
        {
            using (var context = new GalleryEntities())
            {
                return await GetObjectByIDAsync(id, context);
            }
        }

        public static async Task<GY_AudioCategories> GetObjectByIDAsync(int id, GalleryEntities context)
        {
            return await (from set in context.GY_AudioCategories
                          where set.AudioCategoryID == id
                          select set).FirstOrDefaultAsync();
        }

        public static bool RelatedRecordsExists(int id)
        {
            using (var context = new GalleryEntities())
            {
                return RelatedRecordsExists(id, context);
            }
        }

        public static bool RelatedRecordsExists(int id, GalleryEntities context)
        {
            var query = GetObjectByID(id, context);

            return (query.GY_AudioSet.Any() || query.GY_Audios.Any());
        }

        public static void Save(GY_AudioCategories entity)
        {
            using (var context = new GalleryEntities())
            {
                Save(context);
            }
        }

        public static void Save(GalleryEntities context)
        {
            context.SaveChanges();
        }
    }
}