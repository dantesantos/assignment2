namespace BibleStudyGuide.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DbBible : DbContext
    {
        public DbBible()
            : base("name=DefaultConnection")
        {
        }

        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Chapter> Chapters { get; set; }
        public virtual DbSet<Message> Messages { get; set; }
        public virtual DbSet<Vers> Verses { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Author>()
                .Property(e => e.AuthorName)
                .IsUnicode(false);

            modelBuilder.Entity<Author>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Book>()
                .Property(e => e.BookName)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.AuthorName)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.BookName)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.VerseContent)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.Category1)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.Date)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .Property(e => e.AuthorName)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .Property(e => e.BookName)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .Property(e => e.Date)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .Property(e => e.Message1)
                .IsUnicode(false);

            modelBuilder.Entity<Vers>()
                .Property(e => e.BookName)
                .IsUnicode(false);

            modelBuilder.Entity<Vers>()
                .Property(e => e.VerseContent)
                .IsUnicode(false);
        }
    }
}
