﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModManager4.Class
{
    public class Dependency
    {
        public string id { get; set; }
        public string name { get; set; }
    
        public Dependency(string id, string name)
        {
            this.id = id;
            this.name = name;
        }
    }
}
