using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class CFMOperation
    {
        private MySqlConnection sqlcon = null;

        public CFMOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }


        public DataTable GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from FacultyInfo", sqlcon);
            DataTable dt = new DataTable();
            data.Fill(dt);
            return dt;
        }
        public DataTable GetData1()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from ClassInfo", sqlcon);
            DataTable d = new DataTable();
            data.Fill(d);
            return d;
        }
        public void AddFacultyClass(CFMProperty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Insert into ClassFaculty(ClassId,Fid) values(@cid,@fid)", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@cid", s.ClassID);
                cmdAddCls.Parameters.AddWithValue("@fid", s.FacultyId);
                cmdAddCls.ExecuteNonQuery();

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
        public bool Check(string classid, string facultyid)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from ClassFaculty", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["classid"].ToString().Equals(classid) == true || dr["fid"].ToString().Equals(facultyid) == true)
                    {
                        chk = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return chk;
        }
        public bool Check(string classid)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from classfaculty", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["classid"].ToString().Equals(classid) == true)
                    {
                        chk = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return chk;
        }
        public DataSet GetData3()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select ClassName,FactName from ClassInfo,FacultyInfo,ClassFaculty where ClassInfo.classiD=ClassFaculty.classid and FacultyInfo.fid=ClassFaculty.fid", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }

    }
}
