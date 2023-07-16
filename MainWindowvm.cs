using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using new_my_studentManagement_system.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace new_my_studentManagement_system
{
    public partial class MainWindowvm : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<user> users;

        [ObservableProperty]
        public user selectedUser;

        [ObservableProperty]
        public user selectedUser1;

        public void close_main_window()
        {
            Application.Current.MainWindow.Close();
        }

        [RelayCommand]
        public void massage()
        {
            MessageBox.Show($"{selectedUser.First_name} GPA value should be between 0 and 4 ", "ERROR");
        }

        [RelayCommand]
        public void add_student() 
        {
            var vm = new AddstudentVM();
            vm.title = "ADD USER";
            Window1 window = new Window1(vm);
            window.ShowDialog();

            if(vm.Student.First_name !=null)
            {
                users.Add(vm.Student);
            }
        }
        [RelayCommand]
        public void Delete()
        {
            if(SelectedUser!=null) 
            {
                string name = SelectedUser.First_name;
                users.Remove(SelectedUser);
                MessageBox.Show($"{name} is Deleted", "DELETE");
                
            }
            else
            {
                MessageBox.Show("Plese Select Student before Delete.", "ERROR");
            }

        }
        [RelayCommand]
        public void EditStudent()
        {
            if(SelectedUser!=null) 
            {
                var vm = new AddstudentVM(SelectedUser);
                vm.title = "EDIT USER";
                var window = new Window1(vm);

                window.ShowDialog();

                int index = users.IndexOf(SelectedUser);
                Users.RemoveAt(index);
                Users.Insert(index, vm.Student);
                
            }
            else
            {
                MessageBox.Show("Please Select the student before edit", "Warning!");
            }
        }

        public MainWindowvm()
        {
            users = new ObservableCollection<user>();
            BitmapImage image1 = new BitmapImage(new Uri("image/1.png", UriKind.Relative));
            users.Add(new user(12, "Aasik", "Dilhara", "12/1/2001",2.1, image1));
            BitmapImage image2 = new BitmapImage(new Uri("image/2.png", UriKind.Relative));
            users.Add(new user(12, "Harindu", "Kavinda", "12/10/1999",3.2, image2));
            BitmapImage image3 = new BitmapImage(new Uri("image/3.png", UriKind.Relative));
            users.Add(new user(12, "Bimal", "bandara", "06//1998", 3.9,image3));
            BitmapImage image4 = new BitmapImage(new Uri("image/4.png", UriKind.Relative));
            users.Add(new user(12, "Lalith", "Kumar", "15/07/1999",2.8, image4));

        }
    }
}
