   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   1    +WpfFudbalskiKlubZavrsniRad2017.ZaduziOpremu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$  ZaduziOpremu��5   	   $��357.416��6   $��759.897��6/    � 
ResizeMode$ NoResize=�6V    � WindowStartupLocation$ CenterScreen=�6l   .��5	      � .+�5
   
   �� -   5         ��Name$ 	textBlock��5
      $
��Left=�6'   $��	10,19,0,0q�6B   $
��Wrap=�6U   $��	Tip Clana��6i   $	��Top=�6z   �� 5   
   -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	71,15,0,0q�6@   $	��Top=�6S   $	��120��6k   .@�5      �� .��6   Igrac6"   �� 5      .��6   Sudija6#   �� 5      .��6   Trener6#   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridClanoviIgraci��5         
IsReadOnly .    CanUserAddRows .     AlternatingRowBackground
 � ���	 �� AlternationCount$	 2��6}   
   CanUserResizeColumns
 .     CanUserDeleteRows .     AutoGenerateColumns .  $
��Left=�6�   $��
515,64,0,0q�6  $	��Top=�6,  $	��196��6D  $	��187��6Q  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 Ime��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Ime+  5      $ Prezime��6%   $ 80 66    6A   �� *	Prezime+5        5   
   -   5        $ dataGridListaOprema��5       .  .  
 � ���$	 2��6{   
 .   .   .  $
��Left=�6�   $��	10,64,0,0q�6  $	��Top=�6)  $	��196��6A  $	��412��6N  ��6�   ��  5        5      $	 Tip��6%   $ 80 62    6=   �� *Tip+  5      $ Proizvodjac��6%   $ 80 6:    6E   �� *Proizvodjac+  5      $
 Broj��6%   $ 80 63    6>   �� *Broj+  5      $
 Boja��6%   $ 80 63    6>   �� *Boja+  5      $ Kolicina��6%   $ 80 67    6B   �� *
Kolicina+5      �� 5   
   -   5         ��Name$ buttonZaduzi��5      $��Zaduzi��6'   $
��Left=�68   $��
10,278,0,0q�6S   $	��Top=�6g   $��75��6   6�   �� 5    
   -   5        $ buttonNazad��5       $��Nazad��6&   $
��Left=�66   $��575,283,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   �� 5!   
   -   5        $ 
textBlock1��5!      $
��Left=�6(   $��
236,19,0,0q�6C   $
��Wrap=�6W   $��Datum��6k   $	��Top=�6x   (  "System.Windows.Controls.DatePicker  5"   
   -	   5        $
��dtp1��5"      $
��Left=�6!   $��
285,15,0,0q�6<   $	��Top=�6P   �� 5#   
   -
   5        $ 
textBlock2��5#      $
��Left=�6(   $��247,285,0,0q�6C   $
��Wrap=�6X   $��Kolicina��6l   $	��Top=�6|   �� 5$   
   -   5         ��Name$ textBoxKolicina��5$      $
��Left=�6+   $��23��6F   $��302,279,0,0q�6R    �� TextWrapping$
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��120��6�   5%      5&      