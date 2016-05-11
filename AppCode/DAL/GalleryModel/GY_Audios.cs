//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectJKL.AppCode.DAL.GalleryModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class GY_Audios
    {
        public int AudioID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool Hide { get; set; }
        public System.DateTime AddedOn { get; set; }
        public Nullable<System.DateTime> TakenOn { get; set; }
        public string Tags { get; set; }
        public string Location { get; set; }
        public Nullable<int> AudioSetID { get; set; }
        public int AudioCategoryID { get; set; }
        public string LocalAudioURL { get; set; }
        public string WebAudioURL { get; set; }
        public bool ShowWebAudio { get; set; }
        public Nullable<long> FileID { get; set; }
        public string Length { get; set; }
        public double LikesCount { get; set; }
        public double DislikesCount { get; set; }
        public string Locale { get; set; }
    
        public virtual GY_AudioSet GY_AudioSet { get; set; }
        public virtual GY_Files GY_Files { get; set; }
        public virtual GY_AudioCategories GY_AudioCategories { get; set; }
    }
}
