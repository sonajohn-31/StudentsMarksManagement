﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace StudentsMarksManagement
{
    public class markOperation
    {
        private MySqlConnection sqlcon = null;

        public markOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }

        public bool AddMark(marks s)
        {
            bool chek = false;
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddStd = new MySqlCommand("Insert into marksinfo(examtype,science,maths,computers,total,average,grade,rollno,classid,fid) values(@et,@sc,@ma,@co,@tot,@avg,@gr,@rno,@cid,@fid)", sqlcon);
                cmdAddStd.Parameters.AddWithValue("@et", s.ExamType);
                cmdAddStd.Parameters.AddWithValue("@sc", s.Science);
                cmdAddStd.Parameters.AddWithValue("@ma", s.Maths);
                cmdAddStd.Parameters.AddWithValue("@co", s.Computer);
                cmdAddStd.Parameters.AddWithValue("@tot", s.Total);
                cmdAddStd.Parameters.AddWithValue("@avg", s.Average);
                cmdAddStd.Parameters.AddWithValue("@gr", s.Grade);
                cmdAddStd.Parameters.AddWithValue("@rno", s.RollNo);
                cmdAddStd.Parameters.AddWithValue("@cid", s.ClassId);
                cmdAddStd.Parameters.AddWithValue("@fid", s.FacultyId);
                cmdAddStd.ExecuteNonQuery();
                chek = true;
                return chek;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return chek;
            }
            finally
            {
                sqlcon.Close();
            }
        }
        public DataTable GetData(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select  rollno, stdname from classinfo, studentreg, classfaculty, facultyinfo  where facultyinfo.fid = classfaculty.fid and studentreg.classid = classfaculty.classid and studentreg.classid = classinfo.classid and facultyinfo.fid = '" + fid + "'", sqlcon);
            DataTable dt = new DataTable();
            data.Fill(dt);
            return dt;

        }
        public DataTable GetData1(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct classinfo.classid,classinfo.classname from classinfo, studentreg, classfaculty, facultyinfo  where facultyinfo.fid = classfaculty.fid and studentreg.classid = classfaculty.classid and studentreg.classid = classinfo.classid and facultyinfo.fid = '" + fid + "'", sqlcon);
            DataTable dt = new DataTable();
            data.Fill(dt);
            return dt;
        }
        public bool Check(string rollno, string examtype)
        {
            bool chk = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from marksinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["rollno"].ToString().Equals(rollno) == true && dr["examtype"].ToString().Equals(examtype) == true)
                    {
                        chk = true;
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
        public DataSet GetDataFac(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select  rollno,stdname,studentreg.gender,studentreg.address,studentreg.location,studentreg.phone,studentreg.email,classinfo.classname from classinfo,studentreg,classfaculty,facultyinfo  where facultyinfo.fid=classfaculty.fid and studentreg.classid=classfaculty.classid and studentreg.classid=classinfo.classid and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
        public DataSet GetDataMar(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct examtype,science,maths,computers,total,average,grade,stdname,classname,factname from marksinfo,studentreg,classinfo,classfaculty,facultyinfo where marksinfo.rollno=studentreg.rollno and marksinfo.classid=classinfo.classid and marksinfo.fid=facultyinfo.fid and examtype='Qtrly' and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }
        public DataSet GetDataMarH(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct examtype,science,maths,computers,total,average,grade,stdname,classname,factname from marksinfo,studentreg,classinfo,classfaculty,facultyinfo where marksinfo.rollno=studentreg.rollno and marksinfo.classid=classinfo.classid and marksinfo.fid=facultyinfo.fid and examtype='Halfrly' and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }
        public DataSet GetDataMarF(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct examtype,science,maths,computers,total,average,grade,stdname,classname,factname from marksinfo,studentreg,classinfo,classfaculty,facultyinfo where marksinfo.rollno=studentreg.rollno and marksinfo.classid=classinfo.classid and marksinfo.fid=facultyinfo.fid and examtype='Final' and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }

        public DataSet GetDataMarStud(string rollno)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct examtype,science,maths,computers,total,average,grade,classname,factname from marksinfo,studentReg,classinfo,classfaculty,facultyinfo where marksinfo.rollno=studentReg.rollno and marksinfo.classid=classinfo.classid and marksinfo.fid=facultyinfo.Fid and studentReg.rollno='" + rollno + "'order by examtype desc", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "std");
            return dsFact;
        }

    }
}