   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   4    .WpfFudbalskiKlubZavrsniRad2017.OpremaZaNabavku   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$  OpremaZaNabavku��5   	   $	��300��6!   $	��600��6.    � 
ResizeMode$ NoResize=�6Q    � WindowStartupLocation$ CenterScreen=�6g   .��5	      � .+�5
   
   �� -   5         ��Name$ 	textBlock��5
      $
��Left=�6'   $��	10,35,0,0q�6B   $
��Wrap=�6U   $	��Tip��6i   $	��Top=�6t   �� 5   
   -   5        $ 
textBlock1��5      $
��Left=�6(   $��	10,91,0,0q�6C   $
��Wrap=�6V   $��Proizvodjac��6j   $	��Top=�6}   �� 5   
   -   5        $ 
textBlock2��5      $
��Left=�6(   $��
10,144,0,0q�6C   $
��Wrap=�6W   $
��Broj��6k   $	��Top=�6w   �� 5   
   -   5        $ 
textBlock3��5      $
��Left=�6(   $��
10,202,0,0q�6C   $
��Wrap=�6W   $
��Boja��6k   $	��Top=�6w   �� 5   
   -   5         ��Name$ 
textBoxTip��5      $
��Left=�6&   $��23��6A   $��	92,35,0,0q�6M    �� TextWrapping$
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��120��6�   �� 5   
   -   5         ��Name$ comboBoxProizvodjac��5      $
��Left=�60   $��	92,91,0,0q�6K   $	��Top=�6^   $	��120��6v   .@�5      �� .��6   Nike6!   �� 5      .��6   Adidas6#   5      �� 5   
   -   5        $ comboBoxBroj��5      $
��Left=�6)   $��
92,144,0,0q�6D   $	��Top=�6X   $	��120��6p   .@�5      �� .��6   386   �� 5      .��6   396   �� 5      .��6   406   �� 5      .��6   416   �� 5      .��6   426   �� 5      .��6   436   �� 5      .��6   446   �� 5      .��6   456   �� 5      .��6   466   5      �� 5   
   -	   5        $ comboBoxBoja��5      $
��Left=�6)   $��
92,202,0,0q�6D   $	��Top=�6X   $	��120��6p   .@�5       �� .��6   Plava6"   �� 5!      .��6   Crna6!   �� 5"      .��6   Crvena6#   �� 5#      .��6   Zuta6!   �� 5$      .��6   Zelena6#   5%      &   System.Windows.Controls.DataGrid  5&   
   -
   5          Name$ dataGridListaOprema��5&         
IsReadOnly . 	   CanUserAddRows	 .  
   AlternatingRowBackground

 � ��� �� AlternationCount$ 2��6{      CanUserResizeColumns .     CanUserDeleteRows .     AutoGenerateColumns .  $
��Left=�6�   $��
242,30,0,0q�6  $	��Top=�6*  $	��188��6B  $	��326��6O  ��6�   ��    Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      ,  &System.Windows.Controls.DataGridColumn   Header$	 Tip��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Tip+  5)      $ Proizvodjac��6%   $ 80 6:    6E   �� *Proizvodjac+  5*      $
 Broj��6%   $ 80 63    6>   �� *Broj+  5+      $
 Boja��6%   $ 80 63    6>   �� *Boja+5-      �� 5.   
   -   5         ��Name$ buttonDodaj��5.      $��Dodaj��6&   $
��Left=�66   $��242,233,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   �� 5/   
   -   5        $ buttonNazad��5/      $��Nazad��6&   $
��Left=�66   $��493,233,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   50      51      