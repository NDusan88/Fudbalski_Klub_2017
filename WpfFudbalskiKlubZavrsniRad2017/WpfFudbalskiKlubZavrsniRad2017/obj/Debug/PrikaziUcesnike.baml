   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   4    .WpfFudbalskiKlubZavrsniRad2017.PrikaziUcesnike   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$  PrikaziUcesnike��5   	   $	��550��6!   $��911.6��6.    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridListaIgraca��5
         
IsReadOnly .    CanUserAddRows .     AlternatingRowBackground
 � ��� �� AlternationCount$ 2��6{      CanUserResizeColumns .  	   CanUserDeleteRows	 .  
   AutoGenerateColumns
 .  $
��Left=�6�   $��	26,20,0,0q�6  $	��Top=�6)  $	��371��6A  $	��855��6N  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 BrCk��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *BrCK+  5      $	 Ime��6%   $ 80 62    6=   �� *Ime+  5      $ Prezime��6%   $ 80 66    6A   �� *	Prezime+  5      $ Pozicija��6%   $ 80 67    6B   �� *
Pozicija+  5      $ 
Broj dresa��6%   $ 80 69    6D   �� *	BrojDresa+  5      $
 Noga��6%   $ 80 63    6>   �� *Noga+  5      $ Naziv��6%   $ 80 64    6?   �� *Naziv+  5      $ Mesto��6%   $ 80 64    6?   �� *Mesto+  5      $	 Tip��6%   $ 80 62    6=   �� *Tip+  5      $ Podloga��6%   $ 80 66    6A   �� *	Podloga+  5      $ Datum��6%   $ 80 64    6?   �� *Datum+ �� StringFormat$ {0:dd/MM/yyyy}��5      �� 5   
   -   5         ��Name$ buttonObrisi��5      $��Obrisi��6'   $
��Left=�68   $��
26,432,0,0q�6S   $	��Top=�6g   $��75��6   6�   �� 5   
   -   5        $ buttonIzadji��5      $��Izadji��6'   $
��Left=�68   $��806,432,0,0q�6S   $	��Top=�6h   $��75��6�   6�   �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��420,419,0,0q�6B   $
��Wrap=�6W   $��Pronadji��6k   $	��Top=�6{   �� 5   
   -   5         ��Name$ textBoxPronadji��5      $
��Left=�6+   $��23��6F   $��387,440,0,0q�6R    �� TextWrapping$
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��120��6�   6�   5      5      