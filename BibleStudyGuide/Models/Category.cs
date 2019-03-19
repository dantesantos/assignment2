namespace BibleStudyGuide.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Category")]
    public partial class Category
    {
        public int CategoryID { get; set; }

        public int? VerseID { get; set; }

        public int AuthorID { get; set; }

        [StringLength(50)]
        public string AuthorName { get; set; }

        [StringLength(50)]
        public string BookName { get; set; }

        public int ChapterNumber { get; set; }

        public int VerseNumber { get; set; }

        [StringLength(500)]
        public string VerseContent { get; set; }

        [Column("Category")]
        [StringLength(50)]
        public string Category1 { get; set; }

        [StringLength(50)]
        public string Date { get; set; }

        public string Status { get; set; }
    }
}
