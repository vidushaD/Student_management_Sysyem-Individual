using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using new_my_studentManagement_system.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace new_my_studentManagement_system
{
    public partial class AddstudentVM : ObservableObject
    {
        [ObservableProperty]
        public string? first_name;

        [ObservableProperty]
        public string last_name;

        [ObservableProperty]
        public int age;

        [ObservableProperty]
        public string b_day;

        [ObservableProperty]
        public double gpa;

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage s_image;

        public AddstudentVM(user u)
        {
            Student = u;

            first_name = Student.First_name;
            last_name = Student.Last_name;
            age = Student.Age;
            gpa = Student.Gpa;
            b_day = Student.B_day;
            s_image = Student.Images;
            
        }

        public AddstudentVM()
        {

        }

        [RelayCommand]
        public void upload_image()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image file | *.bmp; *.jpg; *.png; *.GIF;";
            dialog.FilterIndex=1;

            if(dialog.ShowDialog()==true)
            {
                s_image = new BitmapImage(new Uri(dialog.FileName));

                // want to give msg box
            }
        }

        public user Student { get;private set; }

        public Action close_action { get; internal set; }
        public BitmapImage Images { get; internal set; }

        public double GPA { get; private set; }
        
        [RelayCommand]

        public void save()
        {
            if(gpa<0 || gpa>4)
            {
                MessageBox.Show("GPA value should be between 0 and 4. corrent it and try again", "ERROR MESSAGE");
                return;
            }

            if(Student==null) 
            {
                Student=new user()
                {
                    First_name = first_name,
                    Last_name = last_name,
                    Age = age,
                    B_day = b_day,
                    Images = s_image,
                    Gpa = gpa,
                };
            }
            else
            {
                Student.First_name = first_name;
                Student.Last_name = last_name;
                Student.Age = age;
                Student.Gpa = gpa;
                Student.B_day = b_day;
                Student.Images = s_image;
            }

            if(Student.First_name !=null )
            {
                close_action();
            }
            Application.Current.MainWindow.Show();
            MessageBox.Show("Fill details", "ERROR");
        }

    }
}
