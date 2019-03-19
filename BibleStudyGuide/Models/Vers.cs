namespace BibleStudyGuide.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Verses")]
    public partial class Vers
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int VerseID { get; set; }

        public int AuthorID { get; set; }

        [Required]
        [StringLength(50)]
        public string BookName { get; set; }

        public int ChapterNumber { get; set; }

        public int VerseNumber { get; set; }

        [Required]
        [StringLength(500)]
        public string VerseContent { get; set; }

        [StringLength(50)]
        public string Status { get; set; }

    }
}
