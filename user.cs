using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace new_my_studentManagement_system.Model
{
    public class user
    {
        
        public int Age { get; set; }

        public string First_name { get; set; }

        public string Last_name { get; set;}

        public BitmapImage Images { get; set; }
        
        public string B_day { get; set; }

        public double Gpa { get; set; }

        public String Image_path
        {
            get { return $"/Model/Images/{Images}"; }
        }

        public user(int age, string first_name, string last_name, string b_day, double gpa, BitmapImage image ) 
        {
            Age = age;
            First_name = first_name;
            Last_name = last_name;
            B_day = b_day;
            Gpa = gpa;
            Images = image;

        }

        public user()
        {

        }
    }
}
