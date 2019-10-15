using System;
using LiteDB;

namespace LiteDBAPI
{
    public class Controller
    {
        public LiteDatabase DB { get; set; }
        public LiteCollection<Person> Col { get; set; }
        public Controller(string password, string Path)
        {
            this.DB = new LiteDatabase($@"Filename={Path};Password={password}");
             // Get a collection (or create, if doesn't exist)
            this.Col = this.DB.GetCollection<Person>("People");
            
        }
    } 

    // Create your POCO class entity
    public class Person
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }

}