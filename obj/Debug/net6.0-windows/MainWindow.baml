   M S B A M L   `   `   `  ����Z  Vnew_my_studentManagement_system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:new_my_studentManagement_systemnew_my_studentManagement_system  5   	   0    *new_my_studentManagement_system.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   8Icon-http://metro.mahapps.com/winfx/xaml/iconpacks  5   	   9local-clr-namespace:new_my_studentManagement_system  5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � WindowStyle$ 
ToolWindow=�5   	    � DataContext 5      2   ,new_my_studentManagement_system.MainWindowvm  5   
    � 	Resources 5       �� MergedDictionaries+  %MaterialDesignThemes.Wpf.BundledTheme   	BaseTheme   PrimaryColor   SecondaryColor �� Source�� 5   
    5        5      	 Light6.    Teal5   *    Lime5   *   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   %    5      .��5!      � 	 � RowDefinitions	 5"   
   �� 5#      $��* �6   �� 5$      $��* �6   .+�5&   
   � $	��120��6   
������ $	��Top=�65   .+�5(      �� 
 �� CornerRadius$
 0��5)      $��Center=�5*      $	��Top=�5+      $	��432��5,      $	��800��5-      ��5/      �� 50       �� 
StartPoint$	 0,0&�6*    �� EndPoint$	 1,1&�6;   .��51      �  � Color$ 	#ff87ceeb��6'    � Offset$ 0Q�69   � 52      $ 	#ffB0CADE��6'   $
 0.56Q�69   � 53      $ Black��6'   $
 0.79Q�65   54      58      �� 59      $��Center=�6   $��Center=�6/   $��20(�6L   $
��Bold"�6Z   .��6m   STUDENT MANAGEMENT SYSTEM6�   5:      � 5;   
   $	��280��6   $
��Left=�6   ���#ccccff$��2��6M   $��	0,120,0,2q�6^   .+�5=      �� .+�5>      �� $	��396��6   $	��527��6(   ���#cc00ff$��2��5?       J� Opacity$	 0.3Q�5@       J� RenderTransformOrigin$ 0.5,0.5&�6$    �� Left$
 -181��6D   
 �� Top$
 -394��6W   $
��Left=�6i   $	��Top=�6�   z�5A      V� 5B      .~�5C      �� �� 5D      �� 5E       �� Angle$ 41.241Q�6.   T� 5F      5G      ��5I      �� 5J       �� Color$ #cc00ff��6*   5L      5M      �� 5O      .+�5P      �� $	��578��6   $	��362��6(   ���#cc00ff$��2��5Q      $	 0.3Q�5R      $ 0.5,0.5&�6$   $
 -288��6D   $	 126��6W   $
��Left=�6h   $	��Top=�6�   z�5S      V� 5T      .~�5U      �� �� 5V      �� 5W      $ 41.241Q�6.   T� 5X      5Y      ��5[      �� 5\      $ #cc00ff��6*   5^      5_      �� 5b      $��ADD STUDENT��6<   
������    	appbutton#��[  6l   $��65,50,65,203q�6�   $ 1Q�6�   ��6   �� *add_studentCommand+5d      �� 5e      $��EDIT STUDENT��6<   
������ #��[  6l   $��65,197,65,56q�6�   ��6   �� *EditStudentCommand+6�   �� 5f      $��DELETE STUDENT��67   
������ #��[  6i   $��65,123,65,130q�6�   ��6   �� *DeleteCommand+6�   5h      � 5k   
   $��280,120,0,0q�6   $��2��6$   ���#e6f2ff.+�5m      �� .+�5n      �� $	��550��6   $	��416��6(   ���#cc00ff$��2��5o      $	 0.3Q�5p      $ 0.5,0.5&�6$   $	 289��6D   $	 -60��6V   $��Center=�6g   $	��Top=�6�   z�5q      V� 5r      .~�5s      �� �� 5t      �� 5u      $ 41.241Q�6.   T� 5v      5w      ��5y      �� 5z      $ #cc00ff��6*   5|      5}      �� 5      $
 0��5�      $��Center=�5�      $	��Top=�5�      $	��432��5�      $	��800��5�      $��	0,-26,0,0q�6%   5�      �� 5�       �� Orientation$ 
Horizontal=�6   $��20��62   $	��Top=�6>   $��	0 15 10 0q�6V   .+�5�      �� $��	FirstName��6   $��30 0 0 0q�6-   $
��Bold"�6?   $��15(�6Q   �� 5�      $��LastName��6   $��30 0 0 0q�6,   $
��Bold"�6>   $��15(�6P   �� 5�      $	��Age��6   $��30 0 0 0q�6'   $
��Bold"�69   $��15(�6K   �� 5�      $��B Day��6   $��70 0 0 0q�6)   $
��Bold"�6;   $��15(�6M   �� 5�      $	��GPA��6   $��35 0 0 0q�6'   $
��Bold"�69   $��15(�6K   5�      �� 5�      -   5         ��Name$ 	list_view��5�      $��0,47,0,4q�6+   
���������6Q   �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5�      �� *SelectedUser+$ PropertyChanged=���5�      �� 5�      .R�5�      �� 
������ 
���   �$��1q�6N    �� Padding$	 0.1q�5�   !   $
 5��6/   $	��600��6@   $��35��6L   ._�5�      �� $	��600��6)   
������ $ 
Horizontal=�6O   .+�5�   "   �� $��30��6(   $��30��63   $��1q�6?   ��6J   �� *Images+�� 5�   "     	list_view#��[ 6m   ��6,   �� *
First_name+$ PropertyChanged=�6m   �� 5�   "   #��[ 6l   ��6,   �� *	Last_name+$ PropertyChanged=�6l   �� 5�   "   #��[ 6f   ��6,   �� *Age+$ PropertyChanged=�6f   �� 5�   "   #��[ 6h   ��6,   �� *B_day+$ PropertyChanged=�6h   �� 5�   "   #��[ 6f   ��6,   �� *Gpa+$ PropertyChanged=�6f   5�      5�      5�      5�      5�      5�      5�      