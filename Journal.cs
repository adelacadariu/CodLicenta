using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace licenta_test
{
    public class Journal
    {
        public string Name { get; set; }
        public string Key { get; set; }
        public int LastEntry { get; set; }
        public int Entry_Id { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
    }
}