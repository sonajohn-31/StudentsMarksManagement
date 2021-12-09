using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class ClassProperty
    {

        private int classid;
        private string classname;
        public int Classid
        {
            get
            {
                return classid;
            }
            set
            {
                classid = value;
            }
        }

        public string Classname
        {
            get
            {
                return classname;
            }
            set
            {
                classname = value;
            }
        }
    }
}