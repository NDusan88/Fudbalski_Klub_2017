   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   /    )WpfFudbalskiKlubZavrsniRad2017.Dobavljaci   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$  
Dobavljaci��5   	   $	��400��6   $��851.292��6)    � 
ResizeMode$ NoResize=�6P    � WindowStartupLocation$ CenterScreen=�6f   .��5	      � .+�5
   
   �� -   5         ��Name$ 	textBlock��5
      $
��Left=�6'   $��	10,27,0,0q�6B   $
��Wrap=�6U   $��Naziv��6i   $	��Top=�6v   �� 5   
   -   5        $ 
textBlock1��5      $
��Left=�6(   $��	10,76,0,0q�6C   $
��Wrap=�6V   $	��PIB��6j   $	��Top=�6u   �� 5   
   -   5        $ 
textBlock2��5      $
��Left=�6(   $��
10,124,0,0q�6C   $
��Wrap=�6W   $��	Delatnost��6k   $	��Top=�6|   �� 5   
   -   5        $ 
textBlock3��5      $
��Left=�6(   $��
10,175,0,0q�6C   $
��Wrap=�6W   $��Adresa��6k   $	��Top=�6y   �� 5   
   -   5        $ 
textBlock4��5      $
��Left=�6(   $��
10,221,0,0q�6C   $
��Wrap=�6W   $��Telefon��6k   $	��Top=�6z   �� 5   
   -   5         ��Name$ textBoxNaziv��5      $
��Left=�6(   $��23��6C   $��	74,20,0,0q�6O    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5   
   -   5        $ 
textBoxPib��5      $
��Left=�6&   $��23��6A   $��	74,75,0,0q�6M   $
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��120��6�   �� 5   
   -	   5        $ textBoxDelatnost��5      $
��Left=�6,   $��23��6G   $��
74,123,0,0q�6S   $
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��120��6�   �� 5   
   -
   5        $ textBoxAdresa��5      $
��Left=�6)   $��23��6D   $��
74,174,0,0q�6P   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ textBoxTelefon��5      $
��Left=�6*   $��23��6E   $��
74,220,0,0q�6Q   $
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��120��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridDobavljac��5         
IsReadOnly .    CanUserAddRows .  	   AlternatingRowBackground
	 � ���
 �� AlternationCount$
 2��6y      CanUserResizeColumns .     CanUserDeleteRows .     AutoGenerateColumns .  $
��Left=�6�   $��
236,13,0,0q�6  $	��Top=�6(  $	��230��6@  $	��524��6M  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Naziv��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Naziv+  5      $	 PIB��6%   $ 80 62    6=   �� *PIB+  5      $ 	Delatnost��6%   $ 80 68    6C   �� *	Delatnost+  5      $ Adresa��6%   $	 175 65    6A   �� *Adresa+  5      $ Telefon��6%   $	 100 66    6B   �� *	Telefon+5      �� 5   
   -   5         ��Name$ buttonDodaj��5      $��Dodaj��6&   $
��Left=�66   $��
74,279,0,0q�6Q   $	��Top=�6e   $��75��6}   6�   �� 5   
   -   5        $ buttonNazad��5      $��Nazad��6&   $
��Left=�66   $��236,279,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   �� 5   
   -   5        $ buttonObrisi��5      $��Obrisi��6'   $
��Left=�68   $��685,279,0,0q�6S   $	��Top=�6h   $��75��6�   6�   5!      5"      