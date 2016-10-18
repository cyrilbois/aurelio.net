FasdUAS 1.101.10   ��   ��    k             l      �� ��   	
	iTunes Rename Disk File (http://aurelio.net/bin/as/)
	by Aurelio Marinho Jargas
	10 May, 2005 - version 1.0
	
	This script will rename the disk files of the selected songs on iTunes,
	based on the song info such as Artist or Album name. The user can
	choose a default filename format or make its own. All the renames
	attempted are logged for user inspection. It also can remove blank
	spaces and symbols from the filename.

	Details: 
	- The file extension is kept unchanged.
	- The file is not moved to another folder, just renamed.
	- The default strings for empty values are configurable.
	- Removes special characters ":" and "/".
	- Other forbidden characters are configurable.
	- User chooses filenames with blank spaces or not.
	- Detects duplicate filenames.
	- Also runs in "dry run" mode, safe for tests.
	- A complete log is generated at the end.
	- The user-defined format can include:
		Song name, Track number, Artist name, Album name and Year

	License: Open Source, Public Domain, "as is", etc.
	Install: Save this script under the "Library/iTunes/Scripts" folder.
	
	Inspired by Lee S. Edwards rename script.
	Similar script: http://applescript.plaidcow.net/iTunes/RenameFiles/

	This script is useful for you? Consider making a PayPal donation to verde@aurelio.net.
	
       	  l     ������  ��   	  
  
 l     �� ��    G A------------------------------------------------ USER CONFIG HERE         l     ������  ��        l     �� ��    P J Setting this to "true" the script executes but the files are not renamed.         l     �� ��    %  It's good for developer tests.         l     ��  r         m     ��
�� boovfals  o      ���� 0 dryrun DryRun��        l     ������  ��        l     �� ��    r l Setting RemoveSymbols to "true" will remove from the file name all the characters listed in ForbiddenChars.          l     �� !��   ! A ; Setting RemoveSymbols to "false" preserves all characters.       " # " l     �� $��   $ T N You can remove from ForbiddenChars a few characters you may want to preserve.    #  % & % l     �� '��   ' b \ Note: No matter which are the settings, the special chars ":" and "/" are *always* removed.    &  ( ) ( l    *�� * r     + , + m    ��
�� boovtrue , o      ���� 0 removesymbols RemoveSymbols��   )  - . - l    /�� / r     0 1 0 m    	 2 2 " ~'`"@#$%^&*+=(){}[]<>.;,\|?!    1 o      ����  0 forbiddenchars ForbiddenChars��   .  3 4 3 l     ������  ��   4  5 6 5 l     �� 7��   7 %  Default texts for empty fields    6  8 9 8 l     �� :��   : J D These strings are used when the related field of the track is empty    9  ; < ; l    =�� = r     > ? > K     @ @ �� A B�� 0 songname SongName A m     C C  Unnamed Song    B �� D E�� 0 
artistname 
ArtistName D m     F F  Unknown Artist    E �� G H�� 0 	albumname 	AlbumName G m     I I  Unknown Album    H �� J K�� 0 tracknumber TrackNumber J m     L L  00    K �� M���� 0 songyear SongYear M m     N N 
 1900   ��   ? o      ���� (0 missingfieldvalues MissingFieldValues��   <  O P O l     ������  ��   P  Q R Q l     �� S��   S I C------------------------------------------------ END OF USER CONFIG    R  T U T l     ������  ��   U  V W V l     ������  ��   W  X Y X l   " Z�� Z r    " [ \ [ m     ] ]  iTunes Rename Disk File    \ o      ���� 0 
scriptname 
ScriptName��   Y  ^ _ ^ l  # * `�� ` r   # * a b a m   # & c c 	 1.0    b o      ���� 0 scriptversion scriptVersion��   _  d e d l     ������  ��   e  f g f l  + 1 h�� h r   + 1 i j i J   + -����   j o      ���� 0 loglines LogLines��   g  k l k l  2 7 m�� m r   2 7 n o n m   2 3��
�� boovtrue o o      ���� 0 	useblanks 	UseBlanks��   l  p q p l  8 G r�� r r   8 G s t s b   8 C u v u b   8 ? w x w o   8 ;���� 0 
scriptname 
ScriptName x m   ; > y y   v    v o   ? B���� 0 scriptversion scriptVersion t o      ���� 0 dialogtitle DialogTitle��   q  z { z l  H O |�� | r   H O } ~ } m   H K    <custom format>    ~ o      ���� $0 customformatname CustomFormatName��   {  � � � l     ������  ��   �  � � � l     �� ���   � I C (S)ong name, (9) Track number, (A)rtist name, Al(B)um name, (Y)ear    �  � � � l  P m ��� � r   P m � � � J   P i � �  � � � m   P S � �  S    �  � � � m   S V � �  9 - S    �  � � � m   V Y � �  A - S    �  � � � m   Y \ � �  	B - 9 - S    �  � � � m   \ _ � �  A - B - 9 - S    �  � � � m   _ b � �  A - Y - B - 9 - S    �  ��� � m   b e � �  B - 9 - A - S   ��   � o      ���� $0 defaultfilemasks DefaultFileMasks��   �  � � � l     ������  ��   �  � � � l     �� ���   � ? 9 Default names for the song fields (used in dialogs only)    �  � � � l  n � ��� � r   n � � � � K   n � � � �� � ��� 0 tracknumber TrackNumber � m   o r � �  01    � �� � ��� 0 songname SongName � m   s v � �  	Song Name    � �� � ��� 0 
artistname 
ArtistName � m   w z � �  Artist Name    � �� � ��� 0 	albumname 	AlbumName � m   { ~ � �  
Album Name    � �� ����� 0 songyear SongYear � m    � � � 
 Year   ��   � o      ���� &0 defaultfieldnames DefaultFieldNames��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l  �r ��� � O   �r � � � k   �q � �  � � � l  � ��� ���   � 6 0 Get the selected tracks as a list of references    �  � � � r   � � � � � l  � � ��� � n   � � � � � 1   � ���
�� 
sele � 4  � ��� �
�� 
cwin � m   � ����� ��   � o      ���� 0 	thetracks 	theTracks �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 	thetracks 	theTracks � J   � �����   � R   � ��� ���
�� .ascrerr ****      � **** � m   � � � � 8 2No tracks are selected in the iTunes front window.   ��  ��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 0 * Ask user for the desired file name format    �  � � � r   � � � � � n  � � � � � I   � ��� ����� $0 expandthesemasks expandTheseMasks �  ��� � o   � ����� $0 defaultfilemasks DefaultFileMasks��  ��   �  f   � � � o      ���� 40 defaultfilemasksexpanded DefaultFileMasksExpanded �  � � � r   � � � � � o   � ����� $0 customformatname CustomFormatName � l      ��� � n       � � �  ;   � � � o   � ����� 40 defaultfilemasksexpanded DefaultFileMasksExpanded��   �  � � � r   � � � � � I  � ��� � �
�� .gtqpchltTEXT  @   @ TEXT � o   � ����� 40 defaultfilemasksexpanded DefaultFileMasksExpanded � �� � �
�� 
prmp � b   � � � � � b   � � � � � b   � � � � � l 	 � � ��� � o   � ����� 0 dialogtitle DialogTitle��   � m   � � � � 	  -     � l  � � ��� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thetracks 	theTracks��  ��   � m   � � � �   tracks selected    � �� ���
�� 
okbt � m   � � � �  Rename   ��   � o      ���� 0 chosenformat ChosenFormat �  � � � l  �    Z  � ���� =  � � o   � ����� 0 chosenformat ChosenFormat m   � ���
�� boovfals L   � �����  ��  ��     User pressed Cancel    �  r  	 n  	

 4 	��
�� 
cobj m  ����  o  ���� 0 chosenformat ChosenFormat	 o      ���� 0 chosenformat ChosenFormat  l ������  ��    l ��     User defined format     Z  ��~ =  o  �}�} 0 chosenformat ChosenFormat o  �|�| $0 customformatname CustomFormatName k  �  r   m         o      �{�{ 0 filemask FileMask   W   �!"! k  ,�## $%$ I ,��z&'
�z .sysodlogaskr        TEXT& l 
,�(�y( l ,�)�x) b  ,�*+* b  ,�,-, b  ,�./. b  ,�010 b  ,232 b  ,{454 b  ,w676 b  ,s898 b  ,o:;: b  ,k<=< b  ,g>?> b  ,c@A@ b  ,_BCB b  ,[DED b  ,WFGF b  ,SHIH b  ,OJKJ b  ,KLML b  ,GNON b  ,CPQP b  ,?RSR b  ,;TUT b  ,7VWV b  ,3XYX o  ,/�w�w 0 dialogtitle DialogTitleY m  /2ZZ   - Custom Format   W o  36�v
�v 
ret U o  7:�u
�u 
ret S l 	;>[�t[ m  ;>\\      S      �t  Q 1  ?B�s
�s 
tab O m  CF]]  	Song name   M o  GJ�r
�r 
ret K l 	KN^�q^ m  KN__      9      �q  I 1  OR�p
�p 
tab G m  SV``  Track number   E o  WZ�o
�o 
ret C l 	[^a�na m  [^bb      A      �n  A 1  _b�m
�m 
tab ? m  cfcc  Artist name   = o  gj�l
�l 
ret ; l 	knd�kd m  knee      B      �k  9 1  or�j
�j 
tab 7 m  svff  
Album name   5 o  wz�i
�i 
ret 3 l 	{~g�hg m  {~hh      Y      �h  1 1  ��g
�g 
tab / m  ��ii 
 Year   - o  ���f
�f 
ret + o  ���e
�e 
ret �x  �y  ' �dj�c
�d 
dtxtj m  ��kk  A - B - 9 - S   �c  % l�bl r  ��mnm c  ��opo n  ��qrq 1  ���a
�a 
ttxtr 1  ���`
�` 
rsltp m  ���_
�_ 
TEXTn o      �^�^ 0 filemask FileMask�b  " > $+sts o  $'�]�] 0 filemask FileMaskt m  '*uu        v�\v r  ��wxw n ��yzy I  ���[{�Z�[  0 expandfilemask expandFileMask{ |}| o  ���Y�Y 0 filemask FileMask} ~�X~ J  ���W�W  �X  �Z  z  f  ��x o      �V�V $0 filemaskexpanded FileMaskExpanded�\  �~   k  �� ��� l ���U��U  �   Save the chosen format   � ��� r  ����� o  ���T�T 0 chosenformat ChosenFormat� o      �S�S $0 filemaskexpanded FileMaskExpanded� ��� r  ����� n ����� I  ���R��Q�R $0 getlistitemindex getListItemIndex� ��� o  ���P�P 40 defaultfilemasksexpanded DefaultFileMasksExpanded� ��O� o  ���N�N $0 filemaskexpanded FileMaskExpanded�O  �Q  �  f  ��� o      �M�M 0 filemaskindex FilemaskIndex� ��L� r  ����� n  ����� 4  ���K�
�K 
cobj� o  ���J�J 0 filemaskindex FilemaskIndex� o  ���I�I $0 defaultfilemasks DefaultFileMasks� o      �H�H 0 filemask FileMask�L   ��� l ���G�F�G  �F  � ��� l ���E��E  � ' ! Ask user for blank spaces or not   � ��� I �S�D��
�D .sysodlogaskr        TEXT� b  �7��� b  �3��� b  �/��� b  �+��� b  �'��� b  �#��� b  ���� b  ���� b  ���� b  ���� b  �
��� b  ���� b  ���� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���C�C 0 dialogtitle DialogTitle� o  ���B
�B 
ret � o  ���A
�A 
ret � l 	����@� m  ���� F @Some users do prefer file names with blank spaces others don't.    �@  � l 	����?� m  ����  How about you?   �?  � o  ���>
�> 
ret � o  ��=
�= 
ret � l 	��<� m  ��  No spaces:    �<  � o  	�;
�; 
ret � m  
�� 
        � n ��� I  �:��9�: 0 removeblanks removeBlanks� ��8� o  �7�7 $0 filemaskexpanded FileMaskExpanded�8  �9  �  f  � o  �6
�6 
ret � o  �5
�5 
ret � l 	"��4� m  "��  Use spaces:    �4  � o  #&�3
�3 
ret � m  '*�� 
        � o  +.�2�2 $0 filemaskexpanded FileMaskExpanded� o  /2�1
�1 
ret � l 
36��0� o  36�/
�/ 
ret �0  � �.��
�. 
btns� J  :E�� ��� m  :=��  Cancel   � ��� m  =@��  No blank spaces   � ��-� m  @C��  Use blank spaces   �-  � �,��
�, 
dflt� m  HI�+�+ � �*��)
�* 
disp� m  LM�(�( �)  � ��� Z Tk���'�&� = T_��� n  T[��� 1  W[�%
�% 
bhit� 1  TW�$
�$ 
rslt� m  [^��  No blank spaces   � l 	bg��#� r  bg��� m  bc�"
�" boovfals� o      �!�! 0 	useblanks 	UseBlanks�#  �'  �&  � ��� l ll� ��   �  � ��� l ll���  �   Begin log report   � ��� r  l���� b  l���� b  l}��� b  lw��� b  ls��� o  lo�� 0 dialogtitle DialogTitle� o  or�
� 
ret � m  sv��  Log started at    � l w|��� I w|���
� .misccurdldt    ��� null�  �  �  � o  }��
� 
ret � l      �  n        ;  �� o  ���� 0 loglines LogLines�  �  Z ���� = �� o  ���� 0 	useblanks 	UseBlanks m  ���
� boovfals r  ��	
	 n �� I  ����� 0 removeblanks removeBlanks � o  ���� $0 filemaskexpanded FileMaskExpanded�  �    f  ��
 o      �� $0 filemaskexpanded FileMaskExpanded�  �    r  �� b  �� b  �� b  �� m  ��  File Format:     o  ���� $0 filemaskexpanded FileMaskExpanded o  ���

�
 
ret  o  ���	
�	 
ret  l     � n        ;  �� o  ���� 0 loglines LogLines�    l �����  �     l ���!�  ! &   Set the new name for each track     "#" X  ��$�%$ k  ��&& '(' l �����  �  ( )*) r  ��+,+ l ��-� - n  ��./. 1  ����
�� 
pLoc/ o  ������ 0 	thistrack 	thisTrack�   , o      ���� 0 filepath FilePath* 0��0 Z  ��12��31 = ��454 o  ������ 0 filepath FilePath5 m  ����
�� 
msng2 k  �766 787 I �	��9:
�� .sysodlogaskr        TEXT9 l 
��;��; l ��<��< b  ��=>= b  ��?@? b  ��ABA m  ��CC  Rename for:    B l ��D��D c  ��EFE n  ��GHG 1  ����
�� 
pnamH o  ������ 0 	thistrack 	thisTrackF m  ����
�� 
TEXT��  @ o  ����
�� 
ret > l 	��I��I m  ��JJ . (Skipped because disk file does not exist   ��  ��  ��  : ��KL
�� 
btnsK J  ��MM NON m  ��PP  Cancel All Renames   O Q��Q m  ��RR  OK   ��  L ��S��
�� 
dfltS m  ���� ��  8 TUT Z 
VW����V = 
XYX n  
Z[Z 1  ��
�� 
bhit[ 1  
��
�� 
rsltY m  \\  Cancel All Renames   W L  ����  ��  ��  U ]^] r  5_`_ b  0aba b  ,cdc l (e��e c  (fgf n  $hih 1   $��
�� 
pnami o   ���� 0 	thistrack 	thisTrackg m  $'��
�� 
TEXT��  d m  (+jj     --->   FILE NOT FOUND   b o  ,/��
�� 
ret ` l     k��k n      lml  ;  34m o  03���� 0 loglines LogLines��  ^ n��n l 66������  ��  ��  ��  3 k  :�oo pqp l ::��r��  r @ : First populate the record with the default missing values   q sts l ::��u��  u W Q Then extract each field value of the track (if necessary) and save on the record   t vwv s  :Bxyx n :=z{z o  ;=���� (0 missingfieldvalues MissingFieldValues{  f  :;y o      ���� 0 	trackinfo 	TrackInfow |}| l CC������  ��  } ~~ P  Cj����� k  Ji�� ��� l JJ������  ��  � ��� l JJ�����  �  
 song name   � ��� Z  J}������� E JQ��� o  JM���� 0 filemask FileMask� m  MP��  S   � k  Ty�� ��� r  Ta��� c  T]��� n  TY��� 1  UY��
�� 
pnam� o  TU���� 0 	thistrack 	thisTrack� m  Y\��
�� 
TEXT� o      ���� 0 thevalue theValue� ���� Z by������� > bi��� o  be���� 0 thevalue theValue� m  eh��      � r  lu��� o  lo���� 0 thevalue theValue� n      ��� o  rt���� 0 songname SongName� o  or���� 0 	trackinfo 	TrackInfo��  ��  ��  ��  ��  � ��� l ~~������  ��  � ��� l ~~�����  �   track number   � ��� Z  ~�������� E ~���� o  ~����� 0 filemask FileMask� m  ����  9   � k  ���� ��� r  ����� c  ����� n  ����� 1  ����
�� 
pTrN� o  ������ 0 	thistrack 	thisTrack� m  ����
�� 
TEXT� o      ���� 0 thevalue theValue� ���� Z  ��������� > ����� o  ������ 0 thevalue theValue� m  ����
�� 
msng� k  ���� ��� l ����� Z ��������� = ����� l ������ I �������
�� .corecnte****       ****� o  ������ 0 thevalue theValue��  ��  � m  ������ � r  ����� b  ����� m  ����  0   � o  ������ 0 thevalue theValue� o      ���� 0 thevalue theValue��  ��  �  	 zero pad   � ���� r  ����� o  ������ 0 thevalue theValue� n      ��� o  ������ 0 tracknumber TrackNumber� o  ������ 0 	trackinfo 	TrackInfo��  ��  ��  ��  ��  ��  � ��� l ��������  ��  � ��� l �������  �   album name   � ��� Z  �������� E ����� o  ������ 0 filemask FileMask� m  ����  B   � k  ���� ��� r  ����� c  ����� n  ����� 1  ����
�� 
pAlb� o  ������ 0 	thistrack 	thisTrack� m  ����
�� 
TEXT� o      ���� 0 thevalue theValue� ���� Z ��������� > ����� o  ������ 0 thevalue theValue� m  ����      � r  ����� o  ������ 0 thevalue theValue� n      ��� o  ������ 0 	albumname 	AlbumName� o  ������ 0 	trackinfo 	TrackInfo��  ��  ��  ��  ��  � ��� l ������  ��  � ��� l �����  �   artist name   � ��� Z  5������� E 	��� o  ���� 0 filemask FileMask� m  ��  A   � k  1�� ��� r  � � c   n   1  ��
�� 
pArt o  ���� 0 	thistrack 	thisTrack m  ��
�� 
TEXT  o      ���� 0 thevalue theValue� �� Z 1���� > !	 o  ���� 0 thevalue theValue	 m   

       r  $- o  $'���� 0 thevalue theValue n       o  *,���� 0 
artistname 
ArtistName o  '*���� 0 	trackinfo 	TrackInfo��  ��  ��  ��  ��  �  l 66������  ��    l 66����    
 song year    �� Z  6i���� E 6= o  69�� 0 filemask FileMask m  9<  Y    k  @e  r  @M c  @I  n  @E!"! 1  AE�~
�~ 
pYr " o  @A�}�} 0 	thistrack 	thisTrack  m  EH�|
�| 
TEXT o      �{�{ 0 thevalue theValue #�z# Z Ne$%�y�x$ > NU&'& o  NQ�w�w 0 thevalue theValue' m  QT((  0   % r  Xa)*) o  X[�v�v 0 thevalue theValue* n      +,+ o  ^`�u�u 0 songyear SongYear, o  [^�t�t 0 	trackinfo 	TrackInfo�y  �x  �z  ��  ��  ��  � �s�r
�s conscase�r  ��   -.- l kk�q�p�q  �p  . /0/ l kk�o1�o  1 - ' Expand the mask tokens with track info   0 232 r  kz454 n kv676 I  lv�n8�m�n  0 expandfilemask expandFileMask8 9:9 o  lo�l�l 0 filemask FileMask: ;�k; o  or�j�j 0 	trackinfo 	TrackInfo�k  �m  7  f  kl5 o      �i�i 0 newname NewName3 <=< r  {�>?> n {�@A@ I  |��hB�g�h 0 fixfilename fixFileNameB C�fC o  |�e�e 0 newname NewName�f  �g  A  f  {|? o      �d�d 0 newname NewName= DED Z ��FG�c�bF = ��HIH o  ���a�a 0 	useblanks 	UseBlanksI m  ���`
�` boovfalsG l 	��J�_J r  ��KLK n ��MNM I  ���^O�]�^ 0 removeblanks removeBlanksO P�\P o  ���[�[ 0 newname NewName�\  �]  N  f  ��L o      �Z�Z 0 newname NewName�_  �c  �b  E QRQ l ���Y�X�Y  �X  R STS l ���WU�W  U ' ! Finder will change the file name   T V�VV O  ��WXW k  ��YY Z[Z r  ��\]\ c  ��^_^ n  ��`a` 1  ���U
�U 
pnama o  ���T�T 0 filepath FilePath_ m  ���S
�S 
TEXT] o      �R�R 0 originalname OriginalName[ bcb r  ��ded c  ��fgf n  ��hih 1  ���Q
�Q 
nmxti o  ���P�P 0 filepath FilePathg m  ���O
�O 
TEXTe o      �N�N 0 fileextension FileExtensionc jkj l ���M�L�M  �L  k lml l ���Kn�K  n 0 * Keep the original file extension (if any)   m opo Z ��qr�J�Iq > ��sts o  ���H�H 0 fileextension FileExtensiont m  ��uu      r r  ��vwv b  ��xyx b  ��z{z o  ���G�G 0 newname NewName{ m  ��||  .   y o  ���F�F 0 fileextension FileExtensionw o      �E�E 0 newname NewName�J  �I  p }~} l ���D�C�D  �C  ~ � r  ����� c  ����� o  ���B�B 0 filepath FilePath� m  ���A
�A 
alis� o      �@�@ 0 filepath FilePath� ��?� Q  ������ k  � �� ��� l ���>��>  � = 7 Always change the file name (don't use IF because A=a)   � ��� Z �	���=�<� = ����� o  ���;�; 0 dryrun DryRun� m  ���:
�: boovfals� r  ���� o  ���9�9 0 newname NewName� n      ��� 1   �8
�8 
pnam� o  � �7�7 0 filepath FilePath�=  �<  � ��� l 

�6��6  �  	 Save log   � ��� r  
��� b  
��� b  
��� b  
��� o  
�5�5 0 originalname OriginalName� m  ��  
   --->      � o  �4�4 0 newname NewName� o  �3
�3 
ret � l     ��2� n      ���  ;  � o  �1�1 0 loglines LogLines�2  � ��0� l �/�.�/  �.  �0  � R      �-��
�- .ascrerr ****      � ****� o      �,�, 0 error_message  � �+��*
�+ 
errn� o      �)�) 0 error_number  �*  � k  (��� ��� l ((�(��(  �   Oops, an error occurred   � ��'� O  (���� Z  .����&�� = .3��� l ./��%� o  ./�$�$ 0 error_number  �%  � m  /2�#�#��� k  6q�� ��� I 6;�"�!� 
�" .sysobeepnull��� ��� long�!  �   � ��� I <q���
� .sysodlogaskr        TEXT� l 
<_��� l <_��� b  <_��� b  <[��� b  <W��� b  <S��� b  <O��� b  <K��� m  <?��  Disk File:     � l ?J��� c  ?J��� n  ?F��� 1  BF�
� 
pnam� o  ?B�� 0 filepath FilePath� m  FI�
� 
TEXT�  � o  KN�
� 
ret � l 	OR��� m  OR��  Rename to:    �  � o  SV�� 0 newname NewName� o  WZ�
� 
ret � l 	[^��� m  [^�� 3 -Failed  because a duplicate name would result   �  �  �  � ���
� 
btns� J  bg�� ��� m  be��  OK   �  � ���
� 
dflt� m  jk�� �  �  �&  � I t����
� .sysodlogaskr        TEXT� o  tu�� 0 error_message  � ���
� 
btns� J  x}�� ��
� m  x{��  Cancel   �
  � �	��
�	 
dflt� m  ���� �  � m  (+���null     ߀��  -
iTunes.app�ʠ    �]    ����   ~    )       �(�\�x�����hook   alis    2  mac                        ��v5H+    -
iTunes.app                                                      :��x�        ����  	                Applications    ��e      ��      -  mac:Applications:iTunes.app    
 i T u n e s . a p p    m a c  Applications/iTunes.app   / ��  �'  �?  X m  �����null     ߀��  �
Finder.app�ɐ    �]    ��ɰ   ~ (   )       �(�\�x����pMACS   alis    V  mac                        ��v5H+    �
Finder.app                                                       Dt��w�        ����  	                CoreServices    ��e      ���      �  �  �  *mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    m a c  &System/Library/CoreServices/Finder.app  / ��  �V  ��  � 0 	thistrack 	thisTrack% o  ���� 0 	thetracks 	theTracks# ��� l �����  �  � ��� r  ����� b  ����� b  ����� b  ����� o  ���
� 
ret � m  ����  Log ended at    � l ����� I ���� ��
� .misccurdldt    ��� null�   ��  �  � o  ����
�� 
ret � l     ���� n      ���  ;  ��� o  ������ 0 loglines LogLines��  � ��� l ��������  ��  � ��� l �������  �   Dry Run note   � ��� r  ��� � m  ��        o      ���� 0 extramessage ExtraMessage�  Z  ������ = �� o  ������ 0 dryrun DryRun m  ����
�� boovtrue r  ��	 b  ��

 b  �� o  ����
�� 
ret  o  ����
�� 
ret  l 	���� m  �� C =*ATTENTION* No rename was really made, we're on Dry Run mode.   ��  	 o      ���� 0 extramessage ExtraMessage��  ��    l ��������  ��    l ������     Final dialog	     I ���
�� .sysodlogaskr        TEXT b  �� b  �� b  �� l ���� b  �� !  b  ��"#" b  ��$%$ b  ��&'& b  ��()( o  ������ 0 dialogtitle DialogTitle) m  ��**   - Done!   ' o  ����
�� 
ret % o  ����
�� 
ret # l 	��+��+ l ��,��, c  ��-.- l ��/��/ I ����0��
�� .corecnte****       ****0 o  ������ 0 	thetracks 	theTracks��  ��  . m  ����
�� 
TEXT��  ��  ! m  ��11 #  file renames were attempted.   ��   l 	��2��2 o  ������ 0 extramessage ExtraMessage��   o  ����
�� 
ret  l 
��3��3 o  ����
�� 
ret ��   ��45
�� 
btns4 J  ��66 787 m  ��99  View Log   8 :��: m  ��;;  OK   ��  5 ��<=
�� 
dflt< m  ���� = ��>��
�� 
disp> m  ���� ��   ?@? l ������  ��  @ ABA l ��C��  C 3 - Open log text in TextEdit (with large width)   B DED Z  oFG����F = HIH n  JKJ 1  ��
�� 
bhitK 1  ��
�� 
rsltI m  LL  View Log   G O  kMNM k  !jOO PQP I !&������
�� .ascrnoop****      � ****��  ��  Q RSR I ',������
�� .miscactvnull��� ��� null��  ��  S TUT I -N����V
�� .corecrel****      � null��  V ��WX
�� 
koclW m  14��
�� 
docuX ��YZ
�� 
inshY  :  79Z ��[��
�� 
prdt[ K  <H\\ ��]��
�� 
ctxt] c  ?F^_^ o  ?B���� 0 loglines LogLines_ m  BE��
�� 
TEXT��  ��  U `��` r  Ojaba J  O_cc ded m  OR���� de fgf m  RU���� dg hih m  UX���� i j��j m  X[�������  b n      klk 1  ei��
�� 
pbndl 4 _e��m
�� 
cwinm m  cd���� ��  N m  nn�null     a߭��  -TextEdit.app� ;l�]�a�(��Ƞ   ~ 4   )       �(�\�x����pttxt   alis    :  mac                        ��v5H+    -TextEdit.app                                                     l���w�        ����  	                Applications    ��e      ��
      -  mac:Applications:TextEdit.app     T e x t E d i t . a p p    m a c  Applications/TextEdit.app   / ��  ��  ��  E o��o l pp������  ��  ��   � m   � ����   � pqp l     ������  ��  q rsr l     ������  ��  s tut l     ��v��  v ; 5 Expand all the File Mask special tokens to its names   u wxw i     yzy I      ��{����  0 expandfilemask expandFileMask{ |}| o      ���� 0 themask theMask} ~��~ o      ���� 0 thedata theData��  ��  z k     � ��� r     ��� m     ��      � o      ���� 0 thetext theText� ��� Z   ������� =   ��� o    ���� 0 thedata theData� J    ����  � r    ��� n   ��� o    ���� &0 defaultfieldnames DefaultFieldNames�  f    � o      ���� 0 thedata theData��  ��  � ��� X    ������ k   ' ��� ��� r   ' ,��� c   ' *��� o   ' (���� 0 char  � m   ( )��
�� 
ctxt� o      ���� 0 char  � ���� P   - ������ Z   2 ������ =  2 5��� o   2 3���� 0 char  � m   3 4��  9   � r   8 ?��� b   8 =��� o   8 9���� 0 thetext theText� n   9 <��� o   : <���� 0 tracknumber TrackNumber� o   9 :���� 0 thedata theData� o      ���� 0 thetext theText� ��� =  B E��� o   B C���� 0 char  � m   C D��  S   � ��� r   H O��� b   H M��� o   H I���� 0 thetext theText� n   I L��� o   J L���� 0 songname SongName� o   I J���� 0 thedata theData� o      ���� 0 thetext theText� ��� =  R U��� o   R S���� 0 char  � m   S T��  A   � ��� r   X _��� b   X ]��� o   X Y���� 0 thetext theText� n   Y \��� o   Z \���� 0 
artistname 
ArtistName� o   Y Z���� 0 thedata theData� o      ���� 0 thetext theText� ��� =  b e��� o   b c���� 0 char  � m   c d��  B   � ��� r   h o��� b   h m��� o   h i���� 0 thetext theText� n   i l��� o   j l���� 0 	albumname 	AlbumName� o   i j���� 0 thedata theData� o      ���� 0 thetext theText� ��� =  r u��� o   r s���� 0 char  � m   s t��  Y   � ���� r   x ���� b   x ��� o   x y���� 0 thetext theText� n   y ~��� o   z ~���� 0 songyear SongYear� o   y z���� 0 thedata theData� o      ���� 0 thetext theText��  � r   � ���� b   � ���� o   � ��� 0 thetext theText� o   � ��~�~ 0 char  � o      �}�} 0 thetext theText� �|�{
�| conscase�{  ��  ��  �� 0 char  � n    ��� 2   �z
�z 
cobj� o    �y�y 0 themask theMask� ��x� L   � ��� o   � ��w�w 0 thetext theText�x  x ��� l     �v�u�v  �u  � ��� l     �t��t  � * $ Expand all the File Masks in a list   � ��� i    ��� I      �s��r�s $0 expandthesemasks expandTheseMasks� ��q� o      �p�p 0 themasklist theMaskList�q  �r  � k     ,�� ��� r     ��� J     �o�o  � o      �n�n 0 allnames AllNames� ��� X    )��m�� k    $�� ��� r    ��� n   ��� I    �l �k�l  0 expandfilemask expandFileMask   o    �j�j 0 themask theMask �i J    �h�h  �i  �k  �  f    � o      �g�g 0 thisname thisName� �f r     $ o     !�e�e 0 thisname thisName l     �d n      	  ;   " #	 o   ! "�c�c 0 allnames AllNames�d  �f  �m 0 themask theMask� o    	�b�b 0 themasklist theMaskList� 
�a
 L   * , o   * +�`�` 0 allnames AllNames�a  �  l     �_�^�_  �^    i     I      �]�\�] 0 removeblanks removeBlanks �[ o      �Z�Z 0 thetext theText�[  �\   k     ;  l     �Y�Y   ( " Squeeze consecutive blanks to one     V      r     n    I   	 �X �W�X 0 replacestring replaceString  !"! o   	 
�V�V 0 thetext theText" #$# m   
 %%       $ &�U& m    ''      �U  �W    f    	 o      �T�T 0 thetext theText E   ()( o    �S�S 0 thetext theText) m    **        +,+ l   �R-�R  - * $ Blanks around separator are removed   , ./. r    "010 n    232 I     �Q4�P�Q 0 replacestring replaceString4 565 o    �O�O 0 thetext theText6 787 m    99   -   8 :�N: m    ;;  -   �N  �P  3  f    1 o      �M�M 0 thetext theText/ <=< r   # ->?> n  # +@A@ I   $ +�LB�K�L 0 replacestring replaceStringB CDC o   $ %�J�J 0 thetext theTextD EFE m   % &GG  -    F H�IH m   & 'II  -   �I  �K  A  f   # $? o      �H�H 0 thetext theText= JKJ l  . .�GL�G  L / ) Other blanks are converted to underlines   K MNM r   . 8OPO n  . 6QRQ I   / 6�FS�E�F 0 replacestring replaceStringS TUT o   / 0�D�D 0 thetext theTextU VWV m   0 1XX      W Y�CY m   1 2ZZ  _   �C  �E  R  f   . /P o      �B�B 0 thetext theTextN [�A[ L   9 ;\\ o   9 :�@�@ 0 thetext theText�A   ]^] l     �?�>�?  �>  ^ _`_ l     �=a�=  a C = Filters to remove unwanted characters from the new file name   ` bcb i    ded I      �<f�;�< 0 fixfilename fixFileNamef g�:g o      �9�9 0 thename theName�:  �;  e k     phh iji l     �8k�8  k   Remove the special chars   j lml l     �7n�7  n F @ Note: "/" is forbidden in shell and ":" is forbidden in Finder.   m opo Z    qr�6�5q E    sts o     �4�4 0 thename theNamet m    uu  /   r r    vwv n   xyx I    �3z�2�3 0 replacestring replaceStringz {|{ o    �1�1 0 thename theName| }~} m    	  /   ~ ��0� m   	 
��      �0  �2  y  f    w o      �/�/ 0 thename theName�6  �5  p ��� Z   )���.�-� E   ��� o    �,�, 0 thename theName� m    ��  :   � r    %��� n   #��� I    #�+��*�+ 0 replacestring replaceString� ��� o    �)�) 0 thename theName� ��� m    ��  :   � ��(� m    ��      �(  �*  �  f    � o      �'�' 0 thename theName�.  �-  � ��� l  * *�&��&  �   Remove all the symbols   � ��� Z   * c���%�$� =  * /��� n  * -��� o   + -�#�# 0 removesymbols RemoveSymbols�  f   * +� m   - .�"
�" boovtrue� X   2 _��!�� Z   F Z��� �� E  F I��� o   F G�� 0 thename theName� o   G H�� 0 char  � r   L V��� n  L T��� I   M T���� 0 replacestring replaceString� ��� o   M N�� 0 thename theName� ��� o   N O�� 0 char  � ��� m   O P��      �  �  �  f   L M� o      �� 0 thename theName�   �  �! 0 char  � n   5 :��� 2  8 :�
� 
cobj� n  5 8��� o   6 8��  0 forbiddenchars ForbiddenChars�  f   5 6�%  �$  � ��� l  d d���  � #  lstrip & rstrip the new name   � ��� r   d m��� n  d k��� I   e k���� 0 stripstring stripString� ��� o   e f�� 0 thename theName� ��� m   f g��      �  �  �  f   d e� o      �� 0 thename theName� ��� L   n p�� o   n o�� 0 thename theName�  c ��� l     ���  �  � ��� l     �
��
  � $  Change one string for another   � ��� i    ��� I      �	���	 0 replacestring replaceString� ��� o      �� 0 thetext theText� ��� o      �� 0 	oldstring 	oldString� ��� o      �� 0 	newstring 	newString�  �  � k      �� ��� r     ��� o     �� 0 	oldstring 	oldString� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� n    	��� 2    	� 
�  
citm� o    ���� 0 thetext theText� o      ���� 0 templist tempList� ��� r    ��� o    ���� 0 	newstring 	newString� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� l   ���� o    ���� 0 templist tempList��  � m    ��
�� 
TEXT� o      ���� 0 thetext theText� ��� r    ��� m    ��      � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 thetext theText��  � ��� l     ������  ��  � ��� l     �����  � C = Returns the integer index of a list item (zero if not found)   � ��� i    ��� I      �� ���� $0 getlistitemindex getListItemIndex   o      ���� 0 thelist theList �� o      ���� 0 theitem theItem��  ��  � k     %  Y     "��	�� Z   
����
 =    n     4    ��
�� 
cobj o    ���� 0 i   o    ���� 0 thelist theList o    ���� 0 theitem theItem L     o    ���� 0 i  ��  ��  �� 0 i   m    ���� 	 I   	����
�� .corecnte****       **** o    ���� 0 thelist theList��  ��   �� L   # % m   # $����  ��  �  l     ������  ��    l     ����   A ; Trims the provided string from the text's beginning/ending    �� i     I      ������ 0 stripstring stripString  o      ���� 0 thetext theText  ��  o      ���� 0 
trimstring 
trimString��  ��   k     e!! "#" r     $%$ I    ��&��
�� .corecnte****       ****& o     ���� 0 
trimstring 
trimString��  % o      ���� 0 x  # '(' Q    4)*+) V    ),-, r    $./. c    "010 n     232 7    ��45
�� 
cha 4 l   6��6 [    787 o    ���� 0 x  8 m    ���� ��  5 m    ������3 o    ���� 0 thetext theText1 m     !��
�� 
TEXT/ o      ���� 0 thetext theText- C   9:9 o    ���� 0 thetext theText: l   ;��; o    ���� 0 
trimstring 
trimString��  * R      ������
�� .ascrerr ****      � ****��  ��  + r   1 4<=< m   1 2>>      = o      ���� 0 thetext theText( ?@? Q   5 bABCA V   8 WDED r   @ RFGF c   @ PHIH n   @ NJKJ 7  A N��LM
�� 
cha L m   E G���� M d   H MNN l  I LO��O [   I LPQP o   I J���� 0 x  Q m   J K���� ��  K o   @ A���� 0 thetext theTextI m   N O��
�� 
TEXTG o      ���� 0 thetext theTextE D   < ?RSR o   < =���� 0 thetext theTextS l  = >T��T o   = >���� 0 
trimstring 
trimString��  B R      ������
�� .ascrerr ****      � ****��  ��  C r   _ bUVU m   _ `WW      V o      ���� 0 thetext theText@ X��X L   c eYY o   c d���� 0 thetext theText��  ��       
��Z[\]^_`ab��  Z ������������������  0 expandfilemask expandFileMask�� $0 expandthesemasks expandTheseMasks�� 0 removeblanks removeBlanks�� 0 fixfilename fixFileName�� 0 replacestring replaceString�� $0 getlistitemindex getListItemIndex�� 0 stripstring stripString
�� .aevtoappnull  �   � ****[ ��z����cd����  0 expandfilemask expandFileMask�� ��e�� e  ������ 0 themask theMask�� 0 thedata theData��  c ���������� 0 themask theMask�� 0 thedata theData�� 0 thetext theText�� 0 char  d ����������������������������� &0 defaultfieldnames DefaultFieldNames
�� 
cobj
�� 
kocl
�� .corecnte****       ****
�� 
ctxt�� 0 tracknumber TrackNumber�� 0 songname SongName�� 0 
artistname 
ArtistName�� 0 	albumname 	AlbumName�� 0 songyear SongYear�� ��E�O�jv  
)�,E�Y hO y��-[��l kh ��&E�O�g Z��  ���,%E�Y I��  ���,%E�Y 9��  ���,%E�Y )��  ���,%E�Y ��  ��a ,%E�Y ��%E�V[OY��O�\ �������fg���� $0 expandthesemasks expandTheseMasks�� ��h�� h  ���� 0 themasklist theMaskList��  f ���������� 0 themasklist theMaskList�� 0 allnames AllNames�� 0 themask theMask�� 0 thisname thisNameg ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****��  0 expandfilemask expandFileMask�� -jvE�O #�[��l kh )�jvl+ E�O��6F[OY��O�] ������ij��� 0 removeblanks removeBlanks�� �~k�~ k  �}�} 0 thetext theText��  i �|�| 0 thetext theTextj 
*%'�{9;GIXZ�{ 0 replacestring replaceString� < h��)���m+ E�[OY��O)���m+ E�O)���m+ E�O)���m+ E�O�^ �ze�y�xlm�w�z 0 fixfilename fixFileName�y �vn�v n  �u�u 0 thename theName�x  l �t�s�t 0 thename theName�s 0 char  m u��r����q�p�o�n�m���l�r 0 replacestring replaceString�q 0 removesymbols RemoveSymbols�p  0 forbiddenchars ForbiddenChars
�o 
cobj
�n 
kocl
�m .corecnte****       ****�l 0 stripstring stripString�w q�� )���m+ E�Y hO�� )���m+ E�Y hO)�,e  2 ,)�,�-[��l kh �� )���m+ E�Y h[OY��Y hO)��l+ E�O�_ �k��j�iop�h�k 0 replacestring replaceString�j �gq�g q  �f�e�d�f 0 thetext theText�e 0 	oldstring 	oldString�d 0 	newstring 	newString�i  o �c�b�a�`�c 0 thetext theText�b 0 	oldstring 	oldString�a 0 	newstring 	newString�` 0 templist tempListp �_�^�]�\�
�_ 
ascr
�^ 
txdl
�] 
citm
�\ 
TEXT�h !���,FO��-E�O���,FO��&E�O���,FO�` �[��Z�Yrs�X�[ $0 getlistitemindex getListItemIndex�Z �Wt�W t  �V�U�V 0 thelist theList�U 0 theitem theItem�Y  r �T�S�R�T 0 thelist theList�S 0 theitem theItem�R 0 i  s �Q�P
�Q .corecnte****       ****
�P 
cobj�X & !k�j  kh ��/�  �Y h[OY��Oja �O�N�Muv�L�O 0 stripstring stripString�N �Kw�K w  �J�I�J 0 thetext theText�I 0 
trimstring 
trimString�M  u �H�G�F�H 0 thetext theText�G 0 
trimstring 
trimString�F 0 x  v �E�D�C�B�A>W
�E .corecnte****       ****
�D 
cha 
�C 
TEXT�B  �A  �L f�j  E�O # h���[�\[Z�k\Zi2�&E�[OY��W 
X  �E�O $ h���[�\[Zk\Z�k'2�&E�[OY��W 
X  �E�O�b �@x�?�>yz�=
�@ .aevtoappnull  �   � ****x k    r{{  ||  (}}  -~~  ;  X��  ^��  f��  k��  p��  z��  ���  ���  ��<�<  �?  �>  y �;�:�9�; 0 	thistrack 	thisTrack�: 0 error_message  �9 0 error_number  z ��8�7 2�6�5 C�4 F�3 I�2 L�1 N�0�/ ]�. c�-�,�+ y�* �) � � � � � � ��(�' � � � � ��&��%�$�# ��"�!�  �� �� ������uZ�\�]_`bcefhi�k���������������������
�	��������C�JPR\j���� ������������
��(�����������u|������������������*19;Ln�����������������������8 0 dryrun DryRun�7 0 removesymbols RemoveSymbols�6  0 forbiddenchars ForbiddenChars�5 0 songname SongName�4 0 
artistname 
ArtistName�3 0 	albumname 	AlbumName�2 0 tracknumber TrackNumber�1 0 songyear SongYear�0 
�/ (0 missingfieldvalues MissingFieldValues�. 0 
scriptname 
ScriptName�- 0 scriptversion scriptVersion�, 0 loglines LogLines�+ 0 	useblanks 	UseBlanks�* 0 dialogtitle DialogTitle�) $0 customformatname CustomFormatName�( �' $0 defaultfilemasks DefaultFileMasks�& &0 defaultfieldnames DefaultFieldNames
�% 
cwin
�$ 
sele�# 0 	thetracks 	theTracks�" $0 expandthesemasks expandTheseMasks�! 40 defaultfilemasksexpanded DefaultFileMasksExpanded
�  
prmp
� .corecnte****       ****
� 
okbt� 
� .gtqpchltTEXT  @   @ TEXT� 0 chosenformat ChosenFormat
� 
cobj� 0 filemask FileMask
� 
ret 
� 
tab 
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
� 
ttxt
� 
TEXT�  0 expandfilemask expandFileMask� $0 filemaskexpanded FileMaskExpanded� $0 getlistitemindex getListItemIndex� 0 filemaskindex FilemaskIndex� 0 removeblanks removeBlanks
� 
btns
� 
dflt
�
 
disp�	 
� 
bhit
� .misccurdldt    ��� null
� 
kocl
� 
pLoc� 0 filepath FilePath
� 
msng
� 
pnam� 0 	trackinfo 	TrackInfo�  0 thevalue theValue
�� 
pTrN
�� 
pAlb
�� 
pArt
�� 
pYr �� 0 newname NewName�� 0 fixfilename fixFileName�� 0 originalname OriginalName
�� 
nmxt�� 0 fileextension FileExtension
�� 
alis�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  ����
�� .sysobeepnull��� ��� long�� 0 extramessage ExtraMessage
�� .ascrnoop****      � ****
�� .miscactvnull��� ��� null
�� 
docu
�� 
insh
�� 
prdt
�� 
ctxt
�� .corecrel****      � null�� d�� ���
�� 
pbnd�=sfE�OeE�O�E�O�����������E�Oa E` Oa E` OjvE` OeE` O_ a %_ %E` Oa E` Oa a a a a a a  a !vE` "O�a #�a $�a %�a &�a '�E` (Oa )�*a *k/a +,E` ,O_ ,jv  )ja -Y hO)_ "k+ .E` /O_ _ /6FO_ /a 0_ a 1%_ ,j 2%a 3%a 4a 5a 6 7E` 8O_ 8f  hY hO_ 8a 9k/E` 8O_ 8_   �a :E` ;O �h_ ;a <_ a =%_ >%_ >%a ?%_ @%a A%_ >%a B%_ @%a C%_ >%a D%_ @%a E%_ >%a F%_ @%a G%_ >%a H%_ @%a I%_ >%_ >%a Ja Kl LO_ Ma N,a O&E` ;[OY�xO)_ ;jvl+ PE` QY (_ 8E` QO)_ /_ Ql+ RE` SO_ "a 9_ S/E` ;O_ _ >%_ >%a T%a U%_ >%_ >%a V%_ >%a W%)_ Qk+ X%_ >%_ >%a Y%_ >%a Z%_ Q%_ >%_ >%a [a \a ]a ^mva _ma `la a LO_ Ma b,a c  
fE` Y hO_ _ >%a d%*j e%_ >%_ 6FO_ f  )_ Qk+ XE` QY hOa f_ Q%_ >%_ >%_ 6FO�_ ,[a ga 9l 2kh  �a h,E` iO_ ia j  ]a k�a l,a O&%_ >%a m%a [a na olva _la 6 LO_ Ma b,a p  hY hO�a l,a O&a q%_ >%_ 6FOPYQ)�,EQ` rOa sg"_ ;a t *�a l,a O&E` uO_ ua v _ u_ r�,FY hY hO_ ;a w F�a x,a O&E` uO_ ua j *_ uj 2k  a y_ u%E` uY hO_ u_ r�,FY hY hO_ ;a z *�a {,a O&E` uO_ ua | _ u_ r�,FY hY hO_ ;a } *�a ~,a O&E` uO_ ua  _ u_ r�,FY hY hO_ ;a � *�a �,a O&E` uO_ ua � _ u_ r�,FY hY hVO)_ ;_ rl+ PE` �O)_ �k+ �E` �O_ f  )_ �k+ XE` �Y hOa � �_ ia l,a O&E` �O_ ia �,a O&E` �O_ �a � _ �a �%_ �%E` �Y hO_ ia �&E` iO 1�f  _ �_ ia l,FY hO_ �a �%_ �%_ >%_ 6FOPW gX � �a ) [�a �  @*j �Oa �_ ia l,a O&%_ >%a �%_ �%_ >%a �%a [a �kva _ka 6 LY �a [a �kva _ka 6 LUU[OY�<O_ >a �%*j e%_ >%_ 6FOa �E` �O�e  _ >_ >%a �%E` �Y hO_ a �%_ >%_ >%_ ,j 2a O&%a �%_ �%_ >%_ >%a [a �a �lva _ka `ka a LO_ Ma b,a �  Ua � K*j �O*j �O*a ga �a �*5a �a �_ a O&la a �Oa �a �a �a �a 6v*a *k/a �,FUY hOPUascr  ��ޭ