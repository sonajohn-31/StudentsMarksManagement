using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class FacultyOperation
    {
        private MySqlConnection sqlcon = null;

        public FacultyOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }

        public void AddFaculty(FacultyProperty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddFct = new MySqlCommand("Insert into facultyinfo(fid,factname,gender,address,location,phone,email,password) values(@fid,@factname,@gender,@address,@location,@phone,@email,@password)", sqlcon);
                cmdAddFct.Parameters.AddWithValue("@fid", s.FacultyID);
                cmdAddFct.Parameters.AddWithValue("@factname", s.FacultyName);
                cmdAddFct.Parameters.AddWithValue("@gender", s.Gender);
                cmdAddFct.Parameters.AddWithValue("@address", s.Address);
                cmdAddFct.Parameters.AddWithValue("@location", s.Location);
                cmdAddFct.Parameters.AddWithValue("@phone", s.Phone);
                cmdAddFct.Parameters.AddWithValue("@email", s.Email);
                cmdAddFct.Parameters.AddWithValue("@password", s.Password);
                cmdAddFct.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                sqlcon.Close();
            }
        }

        public DataSet GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from facultyinfo", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }
        public DataSet logincheck(string uname, string pwd)
        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter madpt = new MySqlDataAdapter("select * from FacultyInfo as f inner join ClassFaculty as c on c.Fid=f.Fid where f.Email='" + uname + "' and f.Password='" + pwd + "'", sqlcon);
                madpt.Fill(ds, "can");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            return ds;
        }
        public DataSet Facultyinfo()
        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter madpt = new MySqlDataAdapter("select * from FacultyInfo as f inner join ClassFaculty as c on c.Fid=f.Fid ", sqlcon);
                madpt.Fill(ds, "can");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            return ds;
        }
        public bool changePassword(string id, string pwd)
        {
            bool b = false;
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Update FacultyInfo set Password=@pwd where Fid=@fid ", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@pwd", pwd);
                cmdAddCls.Parameters.AddWithValue("@fid", id);
                cmdAddCls.ExecuteNonQuery();
                b = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                b = false;
            }
            finally
            {
                sqlcon.Close();
            }
            return b;
        }
        public DataSet ddlclassId(string id)
        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter adpt = new MySqlDataAdapter("select cf.ClassID,c.ClassName from ClassInfo as c inner join ClassFaculty as cf on cf.ClassID=c.ClassID where cf.Fid='" + id + "'", sqlcon);
                adpt.Fill(ds, "cf");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return ds;
        }
    }
}