namespace BibleStudyGuide.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Message")]
    public partial class Message
    {
        public int MessageID { get; set; }

        [StringLength(50)]
        public string AuthorName { get; set; }

        [StringLength(50)]
        public string BookName { get; set; }

        public int? ChapterNumber { get; set; }

        [StringLength(50)]
        public string Date { get; set; }

        [Column("Message")]
        [StringLength(500)]
        public string Message1 { get; set; }

        public string Status { get; set; }
    }
}
