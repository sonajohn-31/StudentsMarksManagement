using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace StudentsMarksManagement
{
    public class ClassOperations
    {
        private MySqlConnection sqlcon = null;

        public ClassOperations()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }

        public bool AddClass(ClassProperty s)
        {
            bool c = false;
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Insert into classinfo(classname) values(@classname)", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@classname", s.Classname);
                cmdAddCls.ExecuteNonQuery();
                c = true;
                return c;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return c;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        public DataSet GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from classinfo", sqlcon);
            DataSet dsCls = new DataSet();
            data.Fill(dsCls, "cls");
            return dsCls;
        }


        public void UpdateClass(ClassProperty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Update classinfo set classname=@cname where classiD=@cid", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@cname", s.Classname);
                cmdAddCls.Parameters.AddWithValue("@cid", s.Classid);
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

        public void DeleteClass(int Id)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Delete from classinfo where classid=@id", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@id", Id);
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
        public bool Check(string classname)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from classinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["classname"].ToString().Equals(classname) == true)
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
    }
}


