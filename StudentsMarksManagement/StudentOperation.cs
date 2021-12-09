using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace StudentMarkManagement
{
    public class StudentOperation
    {
        private MySqlConnection sqlcon = null;

        public StudentOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=projectdb;userid=root;pwd=sonajohn@31");
        }

        public void AddStudent(Student s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddStd = new MySqlCommand("Insert into studentreg(Rollno,Stdname,Gender,Address,Location,Phone,Email,Password,classID) values(@rno,@sname,@gen,@add,@loc,@ph,@mail,@pwd,@class)", sqlcon);
                cmdAddStd.Parameters.AddWithValue("@rno", s.RollNumber);
                cmdAddStd.Parameters.AddWithValue("@sname", s.StudentName);
                cmdAddStd.Parameters.AddWithValue("@gen", s.Gender);
                cmdAddStd.Parameters.AddWithValue("@add", s.Address);
                cmdAddStd.Parameters.AddWithValue("@loc", s.Location);
                cmdAddStd.Parameters.AddWithValue("@ph", s.Phone);
                cmdAddStd.Parameters.AddWithValue("@mail", s.Email);
                cmdAddStd.Parameters.AddWithValue("@pwd", s.Password);
                cmdAddStd.Parameters.AddWithValue("@Class", s.ClassId);
                cmdAddStd.ExecuteNonQuery();

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
        public DataSet LoginCheck1(string username, string pwd)
        {
            DataSet dsLog = new DataSet();
            try
            {
                MySqlDataAdapter LgCheck = new MySqlDataAdapter("Select * from StudentReg as s inner join ClassFaculty as c on c.Fid=f.Fid where s.Email='" + username + "' and s.Password='" + pwd + "'", sqlcon);
                LgCheck.Fill(dsLog, "log");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dsLog;
        }
    
        public DataSet GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select s.rollno,s.stdname,s.gender,s.address,s.location,s.phone,s.email,c.classname from studentReg as s Inner Join classinfo as c on s.classid=c.classid", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
        public DataSet StdInfo(string id)

        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter madpt = new MySqlDataAdapter("select s.Rollno,s.StdName,s.Gender,s.Address,s.Location,s.Phone,s.Emailfrom StudentReg as s inner join ClassFaculty as c on s.classid=c.classid where fid='" + id + "'", sqlcon);
                madpt.Fill(ds, "can");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            return ds;
        }
        public DataSet GetDataFac(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select  rollno,stdname,studentreg.gender,studentreg.address,studentreg.location,studentreg.phone,studentreg.email,classinfo.classname from classinfo,studentreg,classfaculty,facultyinfo  where facultyinfo.fid=classfaculty.fid and studentreg.classid=classfaculty.classid and studentreg.classid=classinfo.classid and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
        public DataSet logincheck(string uname, string pwd)
        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter madpt = new MySqlDataAdapter("select * from StudentReg where Email='" + uname + "' and Password='" + pwd + "'", sqlcon);
                madpt.Fill(ds, "can");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            return ds;
        }
        public DataSet showStud(string uname,string pwd)
        {
            DataSet ds = new DataSet();
            try
            {
                MySqlDataAdapter madpt = new MySqlDataAdapter("select f.Rollno,f.StdName,f.Gender,f.Address,f.Location,f.Phone,f.Email,f.Password,c.ClassName,s.FactName from StudentReg as f inner join ClassFaculty as cf on cf.ClassID=f.ClassID inner join ClassInfo as c on c.ClassID=cf.ClassID inner join FacultyInfo as s on s.Fid=cf.Fid where f.Email='" + uname + "' and f.Password='" + pwd + "'", sqlcon);
                madpt.Fill(ds, "can");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            return ds;
        }

    }
}
