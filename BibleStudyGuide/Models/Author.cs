namespace BibleStudyGuide.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Author
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int AuthorID { get; set; }

        [StringLength(500)]
        public string AuthorName { get; set; }

        [StringLength(5000)]
        public string Description { get; set; }
    }
}
