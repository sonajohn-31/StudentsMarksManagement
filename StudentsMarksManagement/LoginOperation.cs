using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class LoginOperation
    {
        private string FEmail;
        private string Fpwd, Fid, opwd, npwd,Spwd;
        public string FacultyEmail
        {
            get
            {
                return FEmail;
            }
            set
            {
                FEmail = value;
            }
        }

        public string FacultyPassword
        {
            get
            {
                return Fpwd;
            }
            set
            {
                Fpwd = value;
            }
        }
        public string FacultyId
        {
            get
            {
                return Fid;
            }
            set
            {
                Fid = value;
            }
        }
        public string FacultyOldPassword
        {
            get
            {
                return opwd;
            }
            set
            {
                opwd = value;
            }
        }
        public string FacultyNewPassword
        {
            get
            {
                return npwd;
            }
            set
            {
                npwd = value;
            }
        }
        public string StudentPassword
        {
            get
            {
                return Spwd;
            }
            set
            {
                Spwd = value;
            }
        }
        public string StudentId
        {
            get
            {
                return Fid;
            }
            set
            {
                Fid = value;
            }
        }
        public string StudentOldPassword
        {
            get
            {
                return opwd;
            }
            set
            {
                opwd = value;
            }
        }
        public string StudentNewPassword
        {
            get
            {
                return npwd;
            }
            set
            {
                npwd = value;
            }
        }
    }
}