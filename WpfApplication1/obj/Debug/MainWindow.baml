   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:IcosaedrIcosaedr  5   	       Icosaedr.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Icosaedr     5   	   -   5          � Title$  Icosaedr��5   	   $��534.236��6   $��847.368��6+    � WindowStyle$ 
ToolWindow=�6;   ���	#FFE5EBF1 � WindowStartupLocation$ CenterScreen=�6�   ��6k   Z� .��5	      � $
��Left=�6   $	��514��6&   $��10,10,0,-20q�63   $	��Top=�6H   $	��827��6`    � ColumnDefinitions 5
   
   �� 5      $	��11* �6   �� 5      $	��39* �6   .+�5   
   �� -   5         ��Name$
 canv��5      $
��Left=�6   $	��494��6:   $��	10,10,0,0q�6G   $	��Top=�6Z   $	��674��6r   $��2��6~   
�������6�   �� 5   
   -   5         ��Name$ button��5      $��Загрузить��6!   $��1��65   $��Right=�6E   $��	0,10,10,0q�6a   $	��Top=�6t   $��75��6�   6�   �� 5   
   -   5        $ button1��5      $��Вращение��6"   $��1��65   $��Right=�6E   $��	0,35,10,0q�6a   $	��Top=�6t   $��75��6�   6�   �� 5   
   -   5         ��Name$ checkBox��5      $��По оси X��6%   $��1��68   $
��Left=�6H   $��560,103,0,0q�6c   $	��Top=�6x   ���	#4C0000FF6�   �� 5   
   -   5        $ 	checkBox1��5      $��По оси Y��6&   $��1��69   $
��Left=�6I   $��560,123,0,0q�6d   $	��Top=�6y   ���	#4CFF00006�   �� 5   
   -   5        $ 	checkBox2��5      $��По оси Z��6&   $��1��69   $
��Left=�6I   $��560,143,0,0q�6d   $	��Top=�6y   ���	#4C00FF006�   �� 5   
   -   5        $ minus��5      $��-��6    $��1��6,   $
��Left=�6<   $��518,186,0,0q�6W   $	��Top=�6l   $��23��6�    J� RenderTransformOrigin$ -0.739,0.65&�6�   6�   �� 5   
   -	   5        $
 plus��5      $��+��6   $��1��6+   $
��Left=�6;   $��612,186,0,0q�6V   $	��Top=�6k   $��23��6�   6�   �� 5   
   -
   5         ��Name$ label��5      $��Скорость��6   $��1��62   $
��Left=�6B   $��546,186,0,0q�6]   $	��Top=�6r   $��31��6�   $ -0.082,0.484&�6�   5      5      