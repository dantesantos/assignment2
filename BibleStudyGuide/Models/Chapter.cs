namespace BibleStudyGuide.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Chapter
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ChapterID { get; set; }

        public int? AuthorID { get; set; }

        public int? ChapterNumber { get; set; }
    }
}
