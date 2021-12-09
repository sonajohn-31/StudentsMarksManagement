using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class CFMProperty
    {
        private int ClassId;
        private string fid;
        public int ClassID
        {
            get
            {
                return ClassId;
            }
            set
            {
                ClassId = value;
            }
        }

        public string FacultyId
        {
            get
            {
                return fid;
            }
            set
            {
                fid = value;
            }
        }
    }
}