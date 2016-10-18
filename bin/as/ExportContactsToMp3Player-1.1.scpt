FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
Export Contacts to MP3 Player
	by Aurelio Marinho Jargas, November 2005
	http://aurelio.net/bin/as
	License: BSD

This script will export your Address Book contacts to the binary format
used by cheap Asian MP3 players (known as S1 players) that comes
with a simple contacts browser. Just run this script and copy the
generated file to the player. Then use the player's import feature to
populate its browser.

	MP3 Player		Address Book
	---------------------------------------
	Name			Full Name
	Mobile			Mobile Phone
	Phone			Home Phone
	Email			Home Email
	QQ				Birthday
	Fax				Work Phone

History:
	Version 1.0, 29 Oct 2005
		Supports TELBOOK.EXE versions 1.1 and 2.0, unAccent, ASCII order, choose group
	Version 1.1, 09 Nov 2005
		Updated Python script, TELBOOK.EXE version 1.0 also supported, unAccent optional	

		
This script is useful for you? Consider making a PayPal donation to verde@aurelio.net.

		
       	  l     ������  ��   	  
  
 l     ��  r         m        # Export Contacts to MP3 Player     o      ���� 0 
scriptname 
ScriptName��        l    ��  r        m       	 1.1     o      ���� 0 scriptversion scriptVersion��        l       r        m    	��
�� boovfals  o      ���� 0 removeaccents RemoveAccents  8 2 Change to true if you don't want accented letters         l     ������  ��        l     ��   r     ! " ! J    ����   " o      ���� 0 allcontacts AllContacts��     # $ # l    %�� % r     & ' & m     ( (  - ALL -    ' o      ����  0 allgroupslabel AllGroupsLabel��   $  ) * ) l    +�� + r     , - , l    .�� . I   �� / 0
�� .earsffdralis        afdr / m    ��
�� afdmdesk 0 �� 1��
�� 
rtyp 1 m    ��
�� 
ctxt��  ��   - o      ���� 0 outputfolder OutputFolder��   *  2 3 2 l     ������  ��   3  4 5 4 l     ������  ��   5  6 7 6 l     �� 8��   8 9 3 ###################################### Handy tools    7  9 : 9 l     ������  ��   :  ; < ; l      �� =��   =
	Note 1: The MP3 player understands iso-8859-1 accented chars. Just use this if
	your player is having problems with them.
	Note 2: You can add more chars to the translation table if necessary. They are
	simple search&replace pairs. The search field can have multiple chars.
    <  > ? > l     �� @��   @ 1 + Remove all (Brazilian) accented characters    ?  A B A i      C D C I      �� E���� 0 unaccent unAccent E  F�� F o      ���� 0 thetext theText��  ��   D k     � G G  H I H r     F J K J J     D L L  M N M J      O O  P Q P m      R R 
 ����    Q  S�� S m     T T  a   ��   N  U V U J     W W  X Y X m     Z Z  ��    Y  [�� [ m     \ \  e   ��   V  ] ^ ] J     _ _  ` a ` m    	 b b  �    a  c�� c m   	 
 d d  i   ��   ^  e f e J     g g  h i h m     j j 	 ���    i  k�� k m     l l  o   ��   f  m n m J     o o  p q p m     r r  ��    q  s�� s m     t t  u   ��   n  u v u J     w w  x y x m     z z  �    y  {�� { m     | |  c   ��   v  } ~ } J        � � � m     � � 
 ����    �  ��� � m     � �  A   ��   ~  � � � J      � �  � � � m     � �  ��    �  ��� � m     � �  E   ��   �  � � � J     ( � �  � � � m     # � �  �    �  ��� � m   # & � �  I   ��   �  � � � J   ( 0 � �  � � � m   ( + � � 	 ���    �  ��� � m   + . � �  O   ��   �  � � � J   0 8 � �  � � � m   0 3 � �  �    �  ��� � m   3 6 � �  U   ��   �  ��� � J   8 @ � �  � � � m   8 ; � �  �    �  ��� � m   ; > � �  C   ��  ��   K o      ���� 0 thetable theTable I  � � � X   G � ��� � � k   [ � � �  � � � r   [ o � � � o   [ \���� 0 thisitem thisItem � J       � �  � � � o      ���� 0 cfrom cFrom �  ��� � o      ���� 
0 cto cTo��   �  ��� � X   p � ��� � � r   � � � � � n  � � � � � I   � ��� ����� 0 replacestring replaceString �  � � � o   � ����� 0 thetext theText �  � � � o   � ����� 0 thischar thisChar �  ��� � o   � ����� 
0 cto cTo��  ��   �  f   � � � o      ���� 0 thetext theText�� 0 thischar thisChar � o   s t���� 0 cfrom cFrom��  �� 0 thisitem thisItem � o   J K���� 0 thetable theTable �  ��� � L   � � � � o   � ����� 0 thetext theText��   B  � � � l     ������  ��   �  � � � l     �� ���   � E ? Join list items in a single string, quoted and comma separated    �  � � � l     �� ���   � #  Example: "one","two","three"    �  � � � i     � � � I      �� ����� 0 listtocsvline ListToCsvLine �  ��� � o      ���� 0 thelist theList��  ��   � k      � �  � � � r      � � � m      � � 	 ","    � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � b     � � � b     � � � l    ��� � c     � � � b    	 � � � m     � �  "    � o    ���� 0 thelist theList � m   	 
��
�� 
ctxt��   � m     � �  "    � o    ��
�� 
ret  � o      ���� 0 csvline CsvLine �  � � � r     � � � m     � �       � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  ��� � L     � � o    ���� 0 csvline CsvLine��   �  � � � l     ������  ��   �  � � � l     �� ���   � < 6 Convert from date property to a short readable format    �  � � � i     � � � I      �� ����� 0 
formatdate 
FormatDate �  ��  o      ���� 0 thedate theDate��  ��   � k     ;  Z    ���� =     o     ���� 0 thedate theDate m    ��
�� 
msng L     m    		      ��  ��   

 r     c     n     1    ��
�� 
day  o    ���� 0 thedate theDate m    ��
�� 
ctxt o      ���� 0 d    r    ( l   &�� c    & n    $ 7   $��
�� 
cobj m     ����  m   ! #����  l   �� c     n     !  m    ��
�� 
mnth! o    ���� 0 thedate theDate m    ��
�� 
ctxt��   m   $ %��
�� 
ctxt��   o      ���� 0 m   "#" r   ) 0$%$ c   ) .&'& n   ) ,()( 1   * ,��
�� 
year) o   ) *���� 0 thedate theDate' m   , -��
�� 
ctxt% o      ���� 0 y  # *��* L   1 ;++ b   1 :,-, b   1 8./. b   1 6010 b   1 4232 o   1 2���� 0 d  3 m   2 344      1 o   4 5���� 0 m  / m   6 755      - o   8 9���� 0 y  ��   � 676 l     ������  ��  7 898 l     ��:��  : / ) Normalize the value of a Contact's field   9 ;<; i    =>= I      ��?���� 0 fixit FixIt? @��@ o      �� 0 thevalue theValue��  ��  > k     GAA BCB l     �~D�~  D L F XXX: dirty hack, don't know how to check if a variable is not defined   C EFE Q     GHIG r    JKJ o    �}�} 0 thevalue theValueK o      �|�| 
0 foo FOOH R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  I r    LML m    NN      M o      �x�x 0 thevalue theValueF OPO l   QRQ Z   ST�w�vS =   UVU o    �u�u 0 thevalue theValueV m    �t
�t 
msngT r    WXW m    YY      X o      �s�s 0 thevalue theValue�w  �v  R   force empty   P Z[Z l    1\]\ Z    1^_�r�q^ >    %`a` n     #bcb 1   ! #�p
�p 
pclsc o     !�o�o 0 thevalue theValuea m   # $�n
�n 
ctxt_ r   ( -ded c   ( +fgf o   ( )�m�m 0 thevalue theValueg m   ) *�l
�l 
ctxte o      �k�k 0 thevalue theValue�r  �q  ]   force text   [ hih l  2 Djkj Z  2 Dlm�j�il E   2 5non o   2 3�h�h 0 thevalue theValueo m   3 4pp  "   m I   8 @�gq�f�g 0 replacestring replaceStringq rsr o   9 :�e�e 0 thevalue theValues tut m   : ;vv  "   u w�dw m   ; <xx      �d  �f  �j  �i  k   del quotes   i y�cy L   E Gzz o   E F�b�b 0 thevalue theValue�c  < {|{ l     �a�`�a  �`  | }~} l     �_�_   A ; Replace all occurences of one string for another in a text   ~ ��� i    ��� I      �^��]�^ 0 replacestring replaceString� ��� o      �\�\ 0 thetext theText� ��� o      �[�[ 0 	oldstring 	oldString� ��Z� o      �Y�Y 0 	newstring 	newString�Z  �]  � k      �� ��� r     ��� o     �X�X 0 	oldstring 	oldString� n     ��� 1    �W
�W 
txdl� 1    �V
�V 
ascr� ��� r    ��� n    	��� 2    	�U
�U 
citm� o    �T�T 0 thetext theText� o      �S�S 0 templist tempList� ��� r    ��� o    �R�R 0 	newstring 	newString� n     ��� 1    �Q
�Q 
txdl� 1    �P
�P 
ascr� ��� r    ��� c    ��� l   ��O� o    �N�N 0 templist tempList�O  � m    �M
�M 
TEXT� o      �L�L 0 thetext theText� ��� r    ��� m    ��      � n     ��� 1    �K
�K 
txdl� 1    �J
�J 
ascr� ��I� L     �� o    �H�H 0 thetext theText�I  � ��� l     �G�F�G  �F  � ��� l     �E��E  � 5 / Sorts a list (copied verbatim from Apple docs)   � ��� i    ��� I      �D��C�D 0 
ascii_sort 
ASCII_Sort� ��B� o      �A�A 0 my_list  �B  �C  � k     u�� ��� r     ��� J     �@�@  � l     ��?� o      �>�> 0 
index_list  �?  � ��� r    	��� J    �=�=  � l     ��<� o      �;�; 0 sorted_list  �<  � ��� U   
 r��� k    m�� ��� r    ��� m    ��      � l     ��:� o      �9�9 0 low_item  �:  � ��� Y    c��8���7� Z   ) ^���6�5� H   ) -�� E  ) ,��� l  ) *��4� o   ) *�3�3 0 
index_list  �4  � o   * +�2�2 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4�1�
�1 
cobj� o   2 3�0�0 0 i  � o   0 1�/�/ 0 my_list  � m   4 5�.
�. 
ctxt� o      �-�- 0 	this_item  � ��,� Z   9 Z����+� =  9 <��� l  9 :��*� o   9 :�)�) 0 low_item  �*  � m   : ;��      � k   ? F�� ��� r   ? B��� o   ? @�(�( 0 	this_item  � l     ��'� o      �&�& 0 low_item  �'  � ��%� r   C F��� o   C D�$�$ 0 i  � l     ��#� o      �"�" 0 low_item_index  �#  �%  � ��� A I L��� o   I J�!�! 0 	this_item  � l  J K�� � o   J K�� 0 low_item  �   � ��� k   O V�� ��� r   O R��� o   O P�� 0 	this_item  � l      �  o      �� 0 low_item  �  � � r   S V o   S T�� 0 i   l     � o      �� 0 low_item_index  �  �  �  �+  �,  �6  �5  �8 0 i  � m    �� � l   $� n    $ m   ! #�
� 
nmbr n   !	 2   !�
� 
cobj	 o    �� 0 my_list  �  �7  � 

 r   d h l  d e� o   d e�� 0 low_item  �   l     � n        ;   f g o   e f�� 0 sorted_list  �   � r   i m l  i j� o   i j�� 0 low_item_index  �   l     �
 n        ;   k l l  j k�	 o   j k�� 0 
index_list  �	  �
  �  � l   � l   � n     m    �
� 
nmbr n    2   �
� 
cobj o    �� 0 my_list  �  �  �  �  L   s u!! l  s t"�" o   s t� �  0 sorted_list  �  �  � #$# l     ������  ��  $ %&% l     ��'��  ' %  Write the CSV file on the disk   & ()( i    *+* I      ��,���� 0 	writefile 	WriteFile, -.- o      ���� 0 filedata FileData. /��/ o      ���� 0 filepath FilePath��  ��  + Q     q0120 k    R33 454 r    676 I   ��89
�� .rdwropenshor       file8 4    	��:
�� 
file: l   ;��; c    <=< o    ���� 0 filepath FilePath= m    ��
�� 
ctxt��  9 ��>��
�� 
perm> m   
 ��
�� boovtrue��  7 o      ���� 0 fd  5 ?@? I   ��AB
�� .rdwrwritnull���     ****A o    ���� 0 filedata FileDataB ��CD
�� 
refnC l   E��E o    ���� 0 fd  ��  D ��F��
�� 
as  F m    ��
�� 
utxt��  @ GHG I   !��I��
�� .rdwrclosnull���     ****I l   J��J o    ���� 0 fd  ��  ��  H KLK l  " "��M��  M I C Remove strange chars (^@ ^M) that are inserted on the Unicode file   L NON r   " +PQP n   " )RSR 1   ' )��
�� 
strqS l  " 'T��T b   " 'UVU m   " #WW  /tmp/   V n  # &XYX o   $ &���� 0 
scriptname 
ScriptNameY  f   # $��  Q o      ���� 0 unixtmpfile UnixTmpFileO Z[Z r   , 3\]\ n   , 1^_^ 1   / 1��
�� 
strq_ l  , /`��` n   , /aba 1   - /��
�� 
psxpb o   , -���� 0 filepath FilePath��  ] o      ���� 0 unixfilepath UnixFilePath[ cdc I  4 ?��e��
�� .sysoexecTEXT���     TEXTe b   4 ;fgf b   4 9hih b   4 7jkj m   4 5ll 
 cat    k o   5 6���� 0 unixfilepath UnixFilePathi m   7 8mm ) # | tr -d '\000' | tr '\015' '\n' >    g o   9 :���� 0 unixtmpfile UnixTmpFile��  d non I  @ O��p��
�� .sysoexecTEXT���     TEXTp b   @ Kqrq b   @ Ists b   @ Euvu m   @ Cww 	 mv    v o   C D���� 0 unixtmpfile UnixTmpFilet 1   E H��
�� 
spacr o   I J���� 0 unixfilepath UnixFilePath��  o x��x L   P Ryy m   P Q��
�� boovtrue��  1 R      ������
�� .ascrerr ****      � ****��  ��  2 k   Z qzz {|{ Q   Z n}~��} I  ] e����
�� .rdwrclosnull���     **** 4   ] a���
�� 
file� o   _ `���� 0 filepath FilePath��  ~ R      ������
�� .ascrerr ****      � ****��  ��  ��  | ���� L   o q�� m   o p��
�� boovfals��  ) ��� l     ������  ��  � ��� l     �����  � D > ###################################### Processing begins here   � ��� l     ������  ��  � ��� l     �����  �   Get TELBOOK.EXE version   � ��� l   :���� I   :����
�� .sysodlogaskr        TEXT� l   "���� b    "��� o     ���� 0 
scriptname 
ScriptName� m     !��5/

First, you must choose the right version of your player's TELBOOK.EXE program.

Version 1.0:
    Year 2003, size of 40KB
    Saves the TELBOOK.BIN file

Version 1.1:
    Year 2004, size of 40KB
    Saves the TEL_SAVE.BIN file

Version 2.0:
    Year 2004, size of 457KB
    Saves the TELBOOK.BIN file

   ��  � ����
�� 
btns� J   # ,�� ��� m   # $�� 
 v1.0   � ��� m   $ '�� 
 v1.1   � ���� m   ' *�� 
 v2.0   ��  � ����
�� 
dflt� m   / 0���� � �����
�� 
disp� m   3 4���� ��  ��  � ��� l  ; V���� r   ; V��� c   ; R��� n   ; P��� 7  B P����
�� 
cha � m   H L������� m   M O������� n   ; B��� 1   > B��
�� 
bhit� l  ; >���� 1   ; >��
�� 
rslt��  � m   P Q��
�� 
ctxt� o      ����  0 telbookversion TelbookVersion��  � ��� l     ������  ��  � ��� l     �����  �   The resulting file   � ��� l  W r���� Z   W r������ =  W ^��� o   W Z����  0 telbookversion TelbookVersion� m   Z ]�� 	 1.1   � r   a h��� m   a d��  TEL_SAVE.BIN   � o      ���� 0 filename FileName��  � r   k r��� m   k n��  TELBOOK.BIN   � o      ���� 0 filename FileName��  � ��� l  s |���� r   s |��� b   s x��� o   s t���� 0 outputfolder OutputFolder� o   t w���� 0 filename FileName� o      ���� 0 diskfile DiskFile��  � ��� l     ������  ��  � ��� l  }/���� O   }/��� k   �.�� ��� l  � ������  � 5 / The user will choose a specific group (or all)   � ��� r   � ���� b   � ���� J   � ��� ���� o   � �����  0 allgroupslabel AllGroupsLabel��  � n  � ���� I   � �������� 0 
ascii_sort 
ASCII_Sort� ���� n   � ���� 1   � ���
�� 
pnam� 2   � ���
�� 
azf5��  ��  �  f   � �� o      ���� 0 	allgroups 	allGroups� ��� r   � ���� I  � �����
�� .gtqpchltTEXT  @   @ TEXT� o   � ����� 0 	allgroups 	allGroups� ����
�� 
prmp� b   � ���� o   � ����� 0 
scriptname 
ScriptName� m   � ���   - Choose one group:   � �����
�� 
okbt� m   � ���  Generate File   ��  � o      ���� 0 	usergroup 	UserGroup� ��� l  � ���� Z  � �������� =  � ���� o   � ����� 0 	usergroup 	UserGroup� m   � ���
�� boovfals� L   � �����  ��  ��  � !  User pressed Cancel button   � ��� l  � �������  ��  � ��� Z   � �� ��� =  � � l  � �� c   � � o   � ��~�~ 0 	usergroup 	UserGroup m   � ��}
�} 
ctxt�   o   � ��|�|  0 allgroupslabel AllGroupsLabel  r   � � N   � �		 2   � ��{
�{ 
azf4 o      �z�z 0 thecontacts theContacts��   r   � �

 N   � � n   � � 2   � ��y
�y 
azf4 5   � ��x�w
�x 
azf5 o   � ��v�v 0 	usergroup 	UserGroup
�w kfrmname o      �u�u 0 thecontacts theContacts�  l  � ��t�s�t  �s    l  � ��r�r   T N Here we go, extracting info of every contact and saving it in the right order    �q X   �.�p k  )  r   J  	�o�o   o      �n�n 0 contactinfo ContactInfo  O    k  !! "#" l �m$�m  $   First prepare some data   # %&% l 4'(' r  4)*) n 0+,+ I  0�l-�k�l 0 fixit FixIt- .�j. 6 ,/0/ n  121 1  �i
�i 
az172 4 �h3
�h 
az213 m  �g�g 0 =  +454 1  !%�f
�f 
az185 m  &*66 
 home   �j  �k  ,  f  * o      �e�e 0 theemail theEmail(   home preferred   & 787 Z 5e9:�d�c9 = 5<;<; o  58�b�b 0 theemail theEmail< m  8;==      : r  ?a>?> n ?]@A@ I  @]�aB�`�a 0 fixit FixItB C�_C 6 @YDED n  @JFGF 1  FJ�^
�^ 
az17G 4 @F�]H
�] 
az21H m  DE�\�\ E > MXIJI 1  NR�[
�[ 
az18J m  SWKK      �_  �`  A  f  ?@? o      �Z�Z 0 theemail theEmail�d  �c  8 LML r  foNON 1  fk�Y
�Y 
pnamO o      �X�X 0 thename theNameM PQP Z p�RS�W�VR o  pq�U�U 0 removeaccents RemoveAccentsS r  t�TUT n t|VWV I  u|�TX�S�T 0 unaccent unAccentX Y�RY o  ux�Q�Q 0 thename theName�R  �S  W  f  tuU o      �P�P 0 thename theName�W  �V  Q Z[Z l ���O\�O  \ Q K Store the information (change here if you want to export different fields)   [ ]^] r  ��_`_ n ��aba I  ���Nc�M�N 0 fixit FixItc d�Ld o  ���K�K 0 thename theName�L  �M  b  f  ��` l     e�Je n      fgf  ;  ��g o  ���I�I 0 contactinfo ContactInfo�J  ^ hih r  ��jkj n ��lml I  ���Hn�G�H 0 fixit FixItn o�Fo 6��pqp n  ��rsr 1  ���E
�E 
az17s 4 ���Dt
�D 
az20t m  ���C�C q = ��uvu 1  ���B
�B 
az18v m  ��ww  mobile   �F  �G  m  f  ��k l     x�Ax n      yzy  ;  ��z o  ���@�@ 0 contactinfo ContactInfo�A  i {|{ r  ��}~} n ��� I  ���?��>�? 0 fixit FixIt� ��=� 6����� n  ����� 1  ���<
�< 
az17� 4 ���;�
�; 
az20� m  ���:�: � = ����� 1  ���9
�9 
az18� m  ���� 
 home   �=  �>  �  f  ��~ l     ��8� n      ���  ;  ��� o  ���7�7 0 contactinfo ContactInfo�8  | ��� r  ����� o  ���6�6 0 theemail theEmail� l     ��5� n      ���  ;  ��� o  ���4�4 0 contactinfo ContactInfo�5  � ��� r  ����� n ����� I  ���3��2�3 0 fixit FixIt� ��1� n ����� I  ���0��/�0 0 
formatdate 
FormatDate� ��.� 1  ���-
�- 
az11�.  �/  �  f  ���1  �2  �  f  ��� l     ��,� n      ���  ;  ��� o  ���+�+ 0 contactinfo ContactInfo�,  � ��*� r  ���� n ���� I  ��)��(�) 0 fixit FixIt� ��'� 6���� n  ���� 1   �&
�& 
az17� 4 � �%�
�% 
az20� m  ���$�$ � = ��� 1  �#
�# 
az18� m  �� 
 work   �'  �(  �  f  ��� l     ��"� n      ���  ;  � o  �!�! 0 contactinfo ContactInfo�"  �*    o  � �  0 thiscontact thisContact ��� s  )��� n &��� I  &���� 0 listtocsvline ListToCsvLine� ��� o  "�� 0 contactinfo ContactInfo�  �  �  f  � l     ��� n      ���  ;  '(� o  &'�� 0 allcontacts AllContacts�  �  �p 0 thiscontact thisContact o   � ��� 0 thecontacts theContacts�q  � m   } ����null     r����  -Address Book.app��]�a�p����   ~    )       �(�\�x����padrb   alis    J  mac                        ��v5H+    -Address Book.app                                                8��x�        ����  	                Applications    ��e      ���      -  !mac:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p    m a c  Applications/Address Book.app   / ��  ��  � ��� l     ���  �  � ��� l     ���  � 7 1 Sort the contacts by the first field (full name)   � ��� l 08��� r  08��� I  06���� 0 
ascii_sort 
ASCII_Sort� ��� o  12�� 0 allcontacts AllContacts�  �  � o      �� 0 allcontacts AllContacts�  � ��� l     ���  �  � ��� l     ���  �   Add the CSV headers   � ��� l 9W��� s  9W��� I  9T�
��	�
 0 listtocsvline ListToCsvLine� ��� J  :P�� ��� m  :=�� 
 name   � ��� m  =@��  mobile   � ��� m  @C�� 
 home   � ��� m  CF��  email   � ��� m  FI��  birthday   � ��� m  IL�� 
 work   �  �  �	  � l     ��� n      ���  :  UV� o  TU�� 0 allcontacts AllContacts�  �  � ��� l     ���  �  � ��� l     ���  � #  Write the temporary CSV file   � ��� l Xc��� r  Xc��� b  X_��� o  X[� �  0 diskfile DiskFile� m  [^�� 
 .csv   � o      ���� 0 csvfile CsvFile�  � ��� l ds���� r  ds��� I  do�� ���� 0 	writefile 	WriteFile   c  eh o  ef���� 0 allcontacts AllContacts m  fg��
�� 
ctxt �� o  hk���� 0 csvfile CsvFile��  ��  � o      ���� 0 saveok SaveOk��  �  l t��� Z  t�	
����	 H  tx o  tw���� 0 saveok SaveOk
 k  {�  I {���
�� .sysodlogaskr        TEXT l {��� b  {� b  {� b  {� b  {� b  {� b  {� o  {|���� 0 
scriptname 
ScriptName o  |��
�� 
ret  o  ����
�� 
ret  m  �� 7 1ERROR when trying to save the temporary CSV file:    o  ����
�� 
ret  o  ����
�� 
ret  o  ������ 0 csvfile CsvFile��   �� 
�� 
btns J  ��!! "��" m  ��##  OK   ��    ��$��
�� 
disp$ m  ������ ��   %��% L  ������  ��  ��  ��  ��   &'& l     ������  ��  ' ()( l     ��*��  * : 4 The dirty binary tricks are made by a Python script   ) +,+ l     ��-��  - q k Note: The stand-alone version of this script (that reads any CSV file) is at http://aurelio.net/bin/python   , ./. l ��0��0 r  ��121 m  ��33��

import sys, getopt, csv, binascii

### Initialization

mp3_field_names = ('name', 'mobile', 'phone', 'email', 'QQ', 'fax')
mp3_field_sizes = (  16  ,    16   ,    32  ,    32  ,  16 ,   16 )
max_fields = len(mp3_field_sizes)

mp3_software_version = None
csv_field_offset = None
contacts = []
data = []

msg_invalid_offset = 'Error on the CSV offset (review -o value)'
help_message = 'help removed'

# Spec: Six CSV fields specified by positional number, starting by 1 
# Tip : To join two or more fields in one, put them inside (parenthesis)
# Data: Full name, mobile phone, home phone, email, birthday date, work phone
default_offsets = {
  'yahoo'   : [ (1, 2, 3), 13,  9,  5, 33, 10 ],
  'outlook' : [ (2, 3, 4), 41, 38, 56, 53, 32 ],
  'kontact' : [         1, 23, 21, 29,  8, 22 ], # thanks boto!
}

### Handy tools

def ascii2hex(text):
	return ' '.join([hex(ord(c))[2:] for c in text])
def int2hex(number):
	n = '0' + hex(number)[2:]
	return n[-2:]
def die(msg):
	print msg
	sys.exit(1)

### Parse command line

try:
	opts, args = getopt.getopt(sys.argv[1:], 'hv:o:', [])
except getopt.error, errmsg:
	die('%s (try -h)' % errmsg)
if len(args) == 0: die(help_message) # no CSV file

csv_file = args[0]
for name,value in opts:
	if name == '-h':
		die(help_message)
	elif name == '-v':
		mp3_software_version = value
	elif name == '-o':
		try:
			csv_field_offset = default_offsets.get(value)
			if not csv_field_offset:  # user defined
				csv_field_offset = [int(x) for x in value.split(',')]
			foo = csv_field_offset[5] # at least 6 fields
		except:
			die(msg_invalid_offset)
if not mp3_software_version or not csv_field_offset:
	die(help_message)

### Version gotchas

# use_field_lenght: The field's 1st byte is the lenght of its contents
#
if mp3_software_version == '2.0':
	outfile = 'TELBOOK.BIN'
	max_contacts = 99
	use_field_lenght = True
elif mp3_software_version == '1.1':
	outfile = 'TEL_SAVE.BIN'
	max_contacts = 199
	use_field_lenght = False
elif mp3_software_version == '1.0':
	outfile = 'TELBOOK.BIN'
	max_contacts = 99
	use_field_lenght = False
else:
	die('Invalid TELBOOK.EXE version. Check -v contents.')

### Extract contacts from CSV

try:
	if csv_file == '-':
		fd = sys.stdin
	else:
		fd = open(csv_file)
except:
	die('Cannot open CSV file: %s' % csv_file)
rows = csv.reader(fd)
rows.next()                     # skip first line (headers)
while 1:
	try: row = rows.next()  # read one record
	except: break
	new_contact = []
	for offset in csv_field_offset:
		try:
			if type(offset) == type(()):  # join multi-value
				val = ' '.join([row[x-1] for x in offset])
			elif type(offset) == type(9):
				val = row[offset-1]
			else:
				die('Invalid offset: %s' % repr(offset))
		except:
			die(msg_invalid_offset)
		val = ' '.join(val.split())  # squeeze spaces
		new_contact.append(val)
	contacts.append(new_contact[:max_fields])
	print 'Added: %s' % (', '.join(contacts[-1]))
	if len(contacts) == max_contacts: break

### Compose headers

# Note 1: The header's last 4 bytes vary when contacts are added on
# the TELBOOK.EXE program. But they aren't necessary for the import.
# 
# Note 2: Version 1.1 has some special bytes at the end (footer),
# but they aren't necessary for the import.
#
if mp3_software_version == '2.0':
	data.append(ascii2hex('Radio technology'))
	data.append('0300 0000 %s00 0000 0200 0000 af39 4000 ' %
		int2hex(len(contacts)))
elif mp3_software_version == '1.0':
	data.append('55aa 33cc ffee ddcc 0102 0304 0506 0708 ')
	data.append('0032 0000 %s00 0000 0000 0000 a62c e45a ' %
		int2hex(len(contacts)))

### Add every contact

for i in range(len(contacts)):
	for j in range(len(mp3_field_names)):
		max, val = mp3_field_sizes[j], contacts[i][j].strip()
		if use_field_lenght is True: max = max - 1
		# Gotcha 1.x: names cannot be empty
		if j == 0 and not val: val = ' '
		# Gotcha 2.0: email of the 1st contact must be < 28
		if i == 0 and j == 3: val = val[:27]
		val = val[:max]           # more: slice the excess
		pad = max - len(val)      # less: zero pad
		hex_val = ascii2hex(val) + '00'*pad
		if use_field_lenght is True:
			hex_val = int2hex(len(val)) + hex_val
		data.append(hex_val)

### Convert data to binary form

data = ''.join(data).replace(' ', '')  # list2str, remove blanks
data = binascii.unhexlify(data)        # hex2bin

### Save results to disk

f = open(outfile, 'w')
f.write(data)
f.close()

print
print '%s saved with %s contacts (for version %s)' % (
	outfile, len(contacts), mp3_software_version)
   2 o      ���� "0 thepythonscript thePythonScript��  / 454 l     ������  ��  5 676 l     ��8��  8    Execute the Python script   7 9:9 l ��;��; r  ��<=< n  ��>?> 1  ����
�� 
strq? l ��@��@ n  ��ABA 1  ����
�� 
psxpB o  ������ 0 outputfolder OutputFolder��  = o      ���� $0 unixoutputfolder UnixOutputFolder��  : CDC l ��E��E r  ��FGF n  ��HIH 1  ����
�� 
strqI l ��J��J n  ��KLK 1  ����
�� 
psxpL o  ������ 0 csvfile CsvFile��  G o      ���� 0 unixcsvfile UnixCsvFile��  D MNM l �O��O r  �PQP I ����R��
�� .sysoexecTEXT���     TEXTR b  ��STS b  ��UVU b  ��WXW b  ��YZY b  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc m  ��ee  
	cd    d o  ������ $0 unixoutputfolder UnixOutputFolderb m  ��ff  
	echo "   ` o  ������ "0 thepythonscript thePythonScript^ m  ��gg ' !" |
		python - -o 1,2,3,4,5,6 -v    \ o  ������  0 telbookversion TelbookVersionZ 1  ����
�� 
spacX o  ������ 0 unixcsvfile UnixCsvFileV m  ��hh = 7 |
		sed -n 's/.* saved with \([0-9]*\).*/\1/p'
	rm -f    T o  ������ 0 unixcsvfile UnixCsvFile��  Q o      ���� 0 contactcount ContactCount��  N iji l     ������  ��  j klk l     ��m��  m   We're done, show report   l non l Sp��p I S��qr
�� .sysodlogaskr        TEXTq l ?s��s b  ?tut b  ;vwv b  7xyx b  3z{z b  /|}| b  +~~ b  '��� b  #��� b  ��� b  ��� b  ��� b  ��� b  ��� b  ��� b  ��� o  ���� 0 
scriptname 
ScriptName� o  ��
�� 
ret � o  
��
�� 
ret � m  �� 8 2Done! The contacts file was saved to your Desktop:   � o  ��
�� 
ret � o  ��
�� 
ret � m  ��       � o  ���� 0 filename FileName� m  "��   (   � o  #&���� 0 contactcount ContactCount m  '*��   contacts, v   } o  +.����  0 telbookversion TelbookVersion{ m  /2��  )   y o  36��
�� 
ret w o  7:��
�� 
ret u m  ;>�� : 4Now just copy this file to the player and import it.   ��  r ����
�� 
btns� J  @E�� ���� m  @C��  OK   ��  � ����
�� 
dflt� m  HI���� � �����
�� 
disp� m  LM���� ��  ��  o ���� l     ������  ��  ��       
�������������  � ������������������ 0 unaccent unAccent�� 0 listtocsvline ListToCsvLine�� 0 
formatdate 
FormatDate�� 0 fixit FixIt�� 0 replacestring replaceString�� 0 
ascii_sort 
ASCII_Sort�� 0 	writefile 	WriteFile
�� .aevtoappnull  �   � ****� �� D���������� 0 unaccent unAccent�� ����� �  ���� 0 thetext theText��  � �������������� 0 thetext theText�� 0 thetable theTable�� 0 thisitem thisItem�� 0 cfrom cFrom�� 
0 cto cTo�� 0 thischar thisChar�  R T Z \ b d j l r t z | � � � � � � � � � � � ������������� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacestring replaceString�� ���lv��lv��lv��lv��lv��lv��lv��lva a lva a lva a lva a lva vE�O P�[a a l kh �E[a k/E�Z[a l/E�ZO "�[a a l kh )���m+ E�[OY��[OY��O�� �� ����������� 0 listtocsvline ListToCsvLine�� ����� �  ���� 0 thelist theList��  � ������ 0 thelist theList�� 0 csvline CsvLine�  ����� ��� ��� �
�� 
ascr
�� 
txdl
�� 
ctxt
�� 
ret �� ���,FO�%�&�%�%E�O���,FO�� �� ����������� 0 
formatdate 
FormatDate�� ����� �  �� 0 thedate theDate��  � �~�}�|�{�~ 0 thedate theDate�} 0 d  �| 0 m  �{ 0 y  � 	�z	�y�x�w�v�u45
�z 
msng
�y 
day 
�x 
ctxt
�w 
mnth
�v 
cobj
�u 
year�� <��  �Y hO��,�&E�O��,�&[�\[Zk\Zm2�&E�O��,�&E�O��%�%�%�%� �t>�s�r���q�t 0 fixit FixIt�s �p��p �  �o�o 0 thevalue theValue�r  � �n�m�n 0 thevalue theValue�m 
0 foo FOO� �l�kN�jY�i�hpvx�g�l  �k  
�j 
msng
�i 
pcls
�h 
ctxt�g 0 replacestring replaceString�q H �E�W 
X   �E�O��  �E�Y hO��,� 
��&E�Y hO�� *���m+ 
Y hO�� �f��e�d���c�f 0 replacestring replaceString�e �b��b �  �a�`�_�a 0 thetext theText�` 0 	oldstring 	oldString�_ 0 	newstring 	newString�d  � �^�]�\�[�^ 0 thetext theText�] 0 	oldstring 	oldString�\ 0 	newstring 	newString�[ 0 templist tempList� �Z�Y�X�W�
�Z 
ascr
�Y 
txdl
�X 
citm
�W 
TEXT�c !���,FO��-E�O���,FO��&E�O���,FO�� �V��U�T���S�V 0 
ascii_sort 
ASCII_Sort�U �R��R �  �Q�Q 0 my_list  �T  � �P�O�N�M�L�K�J�P 0 my_list  �O 0 
index_list  �N 0 sorted_list  �M 0 low_item  �L 0 i  �K 0 	this_item  �J 0 low_item_index  � �I�H��G�
�I 
cobj
�H 
nmbr
�G 
ctxt�S vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� �F+�E�D���C�F 0 	writefile 	WriteFile�E �B��B �  �A�@�A 0 filedata FileData�@ 0 filepath FilePath�D  � �?�>�=�<�;�? 0 filedata FileData�> 0 filepath FilePath�= 0 fd  �< 0 unixtmpfile UnixTmpFile�; 0 unixfilepath UnixFilePath� �:�9�8�7�6�5�4�3�2�1W�0�/�.lm�-w�,�+�*
�: 
file
�9 
ctxt
�8 
perm
�7 .rdwropenshor       file
�6 
refn
�5 
as  
�4 
utxt�3 
�2 .rdwrwritnull���     ****
�1 .rdwrclosnull���     ****�0 0 
scriptname 
ScriptName
�/ 
strq
�. 
psxp
�- .sysoexecTEXT���     TEXT
�, 
spac�+  �*  �C r T*��&/�el E�O����� O�j 	O�)�,%�,E�O��,�,E�O�%�%�%j Oa �%_ %�%j OeW X   *�/j 	W X  hOf� �)��(�'���&
�) .aevtoappnull  �   � ****� k    S��  
��  ��  ��  ��  #��  )�� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� .�� 9�� C�� M�� n�%�%  �(  �'  � �$�$ 0 thiscontact thisContact� f �# �"�!�  (������������������������������
�	����������� �����������6����=K������w�����������������������#3����������efg��h������������# 0 
scriptname 
ScriptName�" 0 scriptversion scriptVersion�! 0 removeaccents RemoveAccents�  0 allcontacts AllContacts�  0 allgroupslabel AllGroupsLabel
� afdmdesk
� 
rtyp
� 
ctxt
� .earsffdralis        afdr� 0 outputfolder OutputFolder
� 
btns
� 
dflt
� 
disp� 
� .sysodlogaskr        TEXT
� 
rslt
� 
bhit
� 
cha ����  0 telbookversion TelbookVersion� 0 filename FileName� 0 diskfile DiskFile
� 
azf5
� 
pnam� 0 
ascii_sort 
ASCII_Sort�
 0 	allgroups 	allGroups
�	 
prmp
� 
okbt� 
� .gtqpchltTEXT  @   @ TEXT� 0 	usergroup 	UserGroup
� 
azf4� 0 thecontacts theContacts
� kfrmname
� 
kocl
�  
cobj
�� .corecnte****       ****�� 0 contactinfo ContactInfo
�� 
az21
�� 
az17�  
�� 
az18�� 0 fixit FixIt�� 0 theemail theEmail�� 0 thename theName�� 0 unaccent unAccent
�� 
az20
�� 
az11�� 0 
formatdate 
FormatDate�� 0 listtocsvline ListToCsvLine�� 0 csvfile CsvFile�� 0 	writefile 	WriteFile�� 0 saveok SaveOk
�� 
ret �� "0 thepythonscript thePythonScript
�� 
psxp
�� 
strq�� $0 unixoutputfolder UnixOutputFolder�� 0 unixcsvfile UnixCsvFile
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 contactcount ContactCount�&T�E�O�E�OfE�OjvE�O�E�O���l E�O��%��a a mva ma ka  O_ a ,[a \[Za \Zi2�&E` O_ a   a E` Y 	a E` O�_ %E` Oa  ��kv)*a !-a ",k+ #%E` $O_ $a %�a &%a 'a (a ) *E` +O_ +f  hY hO_ +�&�  *a ,-E` -Y *a !_ +a .0a ,-E` -O<_ -[a /a 0l 1kh  jvE` 2O�)*a 3k/a 4,a 5[a 6,\Za 781k+ 8E` 9O_ 9a :  ')*a 3k/a 4,a 5[a 6,\Za ;91k+ 8E` 9Y hO*a ",E` <O� )_ <k+ =E` <Y hO)_ <k+ 8_ 26FO)*a >k/a 4,a 5[a 6,\Za ?81k+ 8_ 26FO)*a >k/a 4,a 5[a 6,\Za @81k+ 8_ 26FO_ 9_ 26FO))*a A,k+ Bk+ 8_ 26FO)*a >k/a 4,a 5[a 6,\Za C81k+ 8_ 26FUO)_ 2k+ D�6G[OY��UO*�k+ #E�O*a Ea Fa Ga Ha Ia Ja vk+ D�5GO_ a K%E` LO*��&_ Ll+ ME` NO_ N 1�_ O%_ O%a P%_ O%_ O%_ L%�a Qkva la ) OhY hOa RE` SO�a T,a U,E` VO_ La T,a U,E` WOa X_ V%a Y%_ S%a Z%_ %_ [%_ W%a \%_ W%j ]E` ^O�_ O%_ O%a _%_ O%_ O%a `%_ %a a%_ ^%a b%_ %a c%_ O%_ O%a d%�a ekva ka ka  ascr  ��ޭ