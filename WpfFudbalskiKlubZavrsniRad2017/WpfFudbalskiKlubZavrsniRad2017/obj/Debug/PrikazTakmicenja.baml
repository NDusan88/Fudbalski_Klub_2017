   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   5    /WpfFudbalskiKlubZavrsniRad2017.PrikazTakmicenja   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$'  !Zavrsni rad 2017 Dusan NIkolic IT��5   	   $	��450��63   $	��530��6@    � 
ResizeMode$ NoResize=�6c    � WindowStartupLocation$ CenterScreen=�6y   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridListaTakmicenja��5
         
IsReadOnly .    CanUserAddRows .     AlternatingRowBackground
 � ��� �� AlternationCount$ 2��6      CanUserResizeColumns .  	   CanUserDeleteRows	 .  
   AutoGenerateColumns
 .  $
��Left=�6�   $��
101,10,0,0q�6  $	��Top=�6.  $	��150��6F  $	��326��6S  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Naziv��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Naziv+  5      $ Mesto��6%   $ 80 64    6?   �� *Mesto+  5      $	 Tip��6%   $ 80 62    6=   �� *Tip+  5      $ Podloga��6%   $ 80 66    6A   �� *	Podloga+5      �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��
10,195,0,0q�6B   $
��Wrap=�6V   $��Naziv��6j   $	��Top=�6w   �� 5   
   -   5        $ 
textBlock1��5      $
��Left=�6(   $��246,196,0,0q�6C   $
��Wrap=�6X   $��Mesto��6l   $	��Top=�6y   �� 5   
   -   5        $ 
textBlock2��5      $
��Left=�6(   $��
10,263,0,0q�6C   $
��Wrap=�6W   $	��Tip��6k   $	��Top=�6v   �� 5   
   -   5        $ 
textBlock3��5      $
��Left=�6(   $��246,257,0,0q�6C   $
��Wrap=�6X   $��Podloga��6l   $	��Top=�6{   �� 5   
   -   5         ��Name$ textBoNaziv��5      $
��Left=�6'   $��23��6B   $��
71,193,0,0q�6N    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5   
   -   5        $ textBoxMesto��5      $
��Left=�6(   $��23��6C   $��307,193,0,0q�6O   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��120��6�   �� 5   
   -	   5        $ 
textBoxTip��5      $
��Left=�6&   $��23��6A   $��
71,262,0,0q�6M   $
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��120��6�   �� 5   
   -
   5         ��Name$ comboBoxPodloga��5      $
��Left=�6,   $��307,257,0,0q�6G   $	��Top=�6\   $	��120��6t   .@�5      �� $��Trava��6   �� 5      $��Vestacka trava��6   �� 5      $��Beton��6   �� 5      $��Sljaka��6   5      �� 5   
   -   5         ��Name$ buttonPromeni��5      $��Promeni��6(   $
��Left=�6:   $��
71,311,0,0q�6U   $	��Top=�6i   $��75��6�   6�   �� 5    
   -   5        $ buttonObrisi��5       $��Obrisi��6'   $
��Left=�68   $��352,311,0,0q�6S   $	��Top=�6h   $��75��6�   6�   �� 5!   
   -   5        $ 
textBlock4��5!      $
��Left=�6(   $��231,347,0,0q�6C   $
��Wrap=�6X   $��Pronadji��6l   $	��Top=�6|   �� 5"   
   -   5        $ textBoxPronadji��5"      $
��Left=�6+   $��23��6F   $��196,368,0,0q�6R   $
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��120��6�   6�   �� 5#   
   -   5        $ buttonIzadji��5#      $��Izadji��6'   $
��Left=�68   $��352,353,0,0q�6S   $	��Top=�6h   $��75��6�   6�   5%      5&      