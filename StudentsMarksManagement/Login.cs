using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace StudentsMarksManagement
{
    public class Login
    {
        private MySqlConnection sqlcon = null;

        public Login()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }

        public bool Check(string FacultyEmail, string FacultyPassword)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from facultyinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["email"].ToString().Equals(FacultyEmail) == true && dr["pwd"].ToString().Equals(FacultyPassword) == true)
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
        public bool Chek(string FacultyEmail)
        {
            bool che = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select email from facultyinfo,classfaculty where facultyinfo.fid=classfaculty.fid", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["email"].ToString().Equals(FacultyEmail) == true)
                    {
                        che = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return che;
        }
        public bool Chk(LoginOperation l)
        {
            bool che = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select password,fid from facultyinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["password"].ToString().Equals(l.FacultyOldPassword) == true && dr["fid"].ToString().Equals(l.FacultyId) == true)
                    {

                        sqlcon.Open();
                        MySqlCommand cmdAddCls = new MySqlCommand("Update facultyinfo set password=@npwd where fid=@fid", sqlcon);
                        cmdAddCls.Parameters.AddWithValue("@fid", l.FacultyId);
                        cmdAddCls.Parameters.AddWithValue("@npwd", l.FacultyNewPassword);
                        cmdAddCls.ExecuteNonQuery();
                        sqlcon.Close();
                        che = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return che;


        }
        public DataSet LoginCheck(string username, string pwd)
        {
            DataSet dsLog = new DataSet();
            try
            {
                MySqlDataAdapter LgCheck = new MySqlDataAdapter("Select * from facultyinfo where email='" + username + "' and password='" + pwd + "'", sqlcon);
                LgCheck.Fill(dsLog, "log");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dsLog;
        }
        public DataSet LogCheckstudent(string username, string pwd)
        {
            DataSet dsLog = new DataSet();
            try
            {
                MySqlDataAdapter LgCheck = new MySqlDataAdapter("Select * from StudentReg where email='" + username + "' and password='" + pwd + "'", sqlcon);
                LgCheck.Fill(dsLog, "log");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dsLog;
        }
        public bool LogCheckstudent(string studemail)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select Email from Studentreg", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["Email"].ToString().Equals(studemail) == true)
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
        public bool changepwdstud(LoginOperation log)
        {
            bool che = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select password,RollNo from Studentreg", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["password"].ToString().Equals(log.StudentOldPassword) == true && dr["RollNo"].ToString().Equals(log.StudentId) == true)
                    {

                        sqlcon.Open();
                        MySqlCommand cmdAddCls = new MySqlCommand("Update Studentreg set password=@npwd where RollNo=@rno", sqlcon);
                        cmdAddCls.Parameters.AddWithValue("@rno", log.StudentId);
                        cmdAddCls.Parameters.AddWithValue("@npwd", log.StudentNewPassword);
                        cmdAddCls.ExecuteNonQuery();
                        sqlcon.Close();
                        che = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return che;

        }
    }
}