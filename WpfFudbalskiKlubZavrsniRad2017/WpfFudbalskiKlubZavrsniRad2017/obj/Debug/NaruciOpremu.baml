   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   1    +WpfFudbalskiKlubZavrsniRad2017.NaruciOpremu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$  NaruciOpremu��5   	   $��303.828��6   $	��600��6/    � 
ResizeMode$ NoResize=�6R    � WindowStartupLocation$ CenterScreen=�6h   .��5	      � .+�5
   
   �� -   5         ��Name$ 	textBlock��5
      $
��Left=�6'   $��	10,27,0,0q�6B   $
��Wrap=�6U   $��
Dobavljaci��6i   $	��Top=�6{   �� 5   
   -   5         ��Name$ comboBoxDobavljaci��5      $
��Left=�6/   $��	79,27,0,0q�6J   $	��Top=�6]   $	��120��6u   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridListaOprema��5         
IsReadOnly .    CanUserAddRows .     AlternatingRowBackground
 � ���	 �� AlternationCount$	 2��6{   
   CanUserResizeColumns
 .     CanUserDeleteRows .     AutoGenerateColumns .  $
��Left=�6�   $��
258,10,0,0q�6  $	��Top=�6*  $	��196��6B  $	��326��6O  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 Tip��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Tip+  5      $ Proizvodjac��6%   $ 80 6:    6E   �� *Proizvodjac+  5      $
 Broj��6%   $ 80 63    6>   �� *Broj+  5      $
 Boja��6%   $ 80 63    6>   �� *Boja+5      �� 5   
   -   5        $ 
textBlock1��5      $
��Left=�6(   $��	10,97,0,0q�6C   $
��Wrap=�6V   $��Kolicina��6j   $	��Top=�6z   �� 5   
   -   5         ��Name$ textBoxKolicina��5      $
��Left=�6+   $��23��6F   $��	79,96,0,0q�6R    �� TextWrapping$
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ 
textBlock2��5      $
��Left=�6(   $��
10,171,0,0q�6C   $
��Wrap=�6W   $��Datum��6k   $	��Top=�6x   (  "System.Windows.Controls.DatePicker  5   
   -   5        $
��dtp1��5      $
��Left=�6!   $��
79,167,0,0q�6<   $	��Top=�6P   �� 5   
   -	   5         ��Name$ buttonNaruci��5      $��Naruci��6'   $
��Left=�68   $��
79,220,0,0q�6S   $	��Top=�6g   $��75��6   6�   �� 5   
   -
   5        $ buttonNazad��5      $��Nazad��6&   $
��Left=�66   $��258,220,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   5      5      