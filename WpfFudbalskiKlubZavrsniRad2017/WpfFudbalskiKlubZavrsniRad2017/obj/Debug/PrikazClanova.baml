   M S B A M L   `   `   `  ����Y  UWpfFudbalskiKlubZavrsniRad2017, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:WpfFudbalskiKlubZavrsniRad2017WpfFudbalskiKlubZavrsniRad2017  5   	   2    ,WpfFudbalskiKlubZavrsniRad2017.PrikazClanova   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:WpfFudbalskiKlubZavrsniRad2017     5   	   -   5          � Title$'  !Zavrsni rad 2017 Dusan NIkolic IT��5   	   $	��500��63   $	��650��6@    � 
ResizeMode$ NoResize=�6c    � WindowStartupLocation$ CenterScreen=�6y   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridClanoviIgraci��5
         
IsReadOnly .    CanUserAddRows .     AlternatingRowBackground
 � ��� �� AlternationCount$ 2��6}      CanUserResizeColumns .  	   CanUserDeleteRows	 .  
   AutoGenerateColumns
 .  $
��Left=�6�   $��10,10,-0.4,0q�6  $	��Top=�6.  $	��267��6F  $	��624��6S  ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 BrCk��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *BrCK+  5      $	 Ime��6%   $ 80 62    6=   �� *Ime+  5      $ Prezime��6%   $ 80 66    6A   �� *	Prezime+  5      $ Pozicija��6%   $ 80 67    6B   �� *	PosStatus+  5      $
 JMBG��6%   $	 100 63    6?   �� *JMBG+  5      $ Telefon��6%   $	 110 66    6B   �� *	Telefon+  5      $ Adresa��6%   $	 110 65    6A   �� *Adresa+5      �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��
10,292,0,0q�6B   $
��Wrap=�6V   $	��Ime��6j   $	��Top=�6u   �� 5   
   -   5        $ textBlock_Copy��5      $
��Left=�6,   $��
10,340,0,0q�6G   $
��Wrap=�6[   $��Prezime��6o   $	��Top=�6~   �� 5   
   -   5        $ textBlock_Copy1��5      $
��Left=�6-   $��
10,387,0,0q�6H   $
��Wrap=�6\   $��Pozicija��6p   $	��Top=�6�   �� 5   
   -   5        $ textBlock_Copy2��5      $
��Left=�6-   $��368,292,0,0q�6H   $
��Wrap=�6]   $
��JMBG��6q   $	��Top=�6}   �� 5   
   -   5        $ textBlock_Copy3��5      $
��Left=�6-   $��368,340,0,0q�6H   $
��Wrap=�6]   $��Telefon��6q   $	��Top=�6�   �� 5   
   -   5        $ textBlock_Copy4��5      $
��Left=�6-   $��368,387,0,0q�6H   $
��Wrap=�6]   $��Adresa��6q   $	��Top=�6   �� 5   
   -	   5         ��Name$ 
textBoxIme��5      $
��Left=�6&   $��23��6A   $��
75,291,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��120��6�   �� 5   
   -
   5        $ textBoxPrezime��5      $
��Left=�6*   $��23��6E   $��
75,339,0,0q�6Q   $
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��120��6�   �� 5   
   -   5         ��Name$ comboBoxPozicija��5      $
��Left=�6-   $��
75,385,0,0q�6H   $	��Top=�6\   $	��120��6t   .@�5      �� .��6   Igrac6"   �� 5      .��6   Trener6#   �� 5       .��6   Sudija6#   5!      �� 5"   
   -   5        $ 
textBoJMBG��5"      $
��Left=�6&   $��23��6A   $��424,292,0,0q�6M   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5#   
   -   5        $ textBoxTelefon��5#      $
��Left=�6*   $��23��6E   $��424,338,0,0q�6Q   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��120��6�   �� 5$   
   -   5        $ textBoxAdresa��5$      $
��Left=�6)   $��23��6D   $��424,385,0,0q�6P   $
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��120��6�   �� 5%   
   -   5         ��Name$ buttonPromeni��5%      $��Promeni��6(   $
��Left=�6:   $��254,323,0,0q�6U   $	��Top=�6j   $��75��6�   6�   �� 5&   
   -   5        $ 
textBlock1��5&      $
��Left=�6(   $��254,396,0,0q�6C   $
��Wrap=�6X   $��Pronadji clana��6l   $	��Top=�6�   �� 5'   
   -   5        $ textBoxPronadji��5'      $
��Left=�6+   $��23��6F   $��231,417,0,0q�6R   $
 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��120��6�   6�   �� 5(   
   -   5        $ buttonIzadji��5(      $��Izadji��6'   $
��Left=�68   $��254,360,0,0q�6S   $	��Top=�6h   $��75��6�   6�   5)      5*      