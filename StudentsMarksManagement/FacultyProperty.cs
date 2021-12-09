using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class FacultyProperty
    {
        private string factname, gender, address, location, phone, email, password, fid;
        public string FacultyID
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
        public string FacultyName
        {
            get
            {
                return factname;
            }
            set
            {
                factname = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }
            set
            {
                gender = value;
            }
        }
        public string Address
        {
            get
            {
                return address;
            }
            set
            {
                address = value;
            }
        }
        public string Location
        {
            get
            {
                return location;
            }
            set
            {
                location = value;
            }
        }
        public string Phone
        {
            get
            {
                return phone;
            }
            set
            {
                phone = value;
            }
        }
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }
    }
}