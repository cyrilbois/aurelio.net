FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Feb 2006, by Aurelio Marinho Jargas (http://aurelio.net/bin/as/)
	
	This script performs a text search in the lyrics of the tracks on the selected playlist.
	The found tracks are saved to the "Lyrics Search Results" playlist.
	
	License: Open Source, "as is".
	Install: Save this script under the "Library/iTunes/Scripts" folder.

	This script is useful for you? Consider making a PayPal donation to verde@aurelio.net.
       	  l     ������  ��   	  
  
 l     ��  r         m         iTunes Search in Lyrics     o      ���� 0 
scriptname 
ScriptName��        l    ��  r        m       	 1.0     o      ���� 0 scriptversion scriptVersion��        l    ��  r        m    	    Lyrics Search Results     o      ���� *0 resultsplaylistname resultsPlaylistName��        l     ������  ��     ��  l   � ��  O    �   !   k    � " "  # $ # l   ������  ��   $  % & % r     ' ( ' n     ) * ) 1    ��
�� 
pPly * 4   �� +
�� 
cwin + m    ����  ( o      ���� $0 selectedplaylist selectedPlaylist &  , - , l   ������  ��   -  . / . l   �� 0��   0 &   Prompt user for the search text    /  1 2 1 I   2�� 3 4
�� .sysodlogaskr        TEXT 3 b    & 5 6 5 b    $ 7 8 7 b      9 : 9 b     ; < ; b     = > = o    ���� 0 
scriptname 
ScriptName > o    ��
�� 
ret  < o    ��
�� 
ret  : m     ? ?  Scan lyrics of "    8 n     # @ A @ 1   ! #��
�� 
pnam A o     !���� $0 selectedplaylist selectedPlaylist 6 m   $ % B B  " for:     4 �� C D
�� 
dtxt C m   ' ( E E       D �� F��
�� 
disp F m   + ,���� ��   2  G H G r   3 B I J I c   3 > K L K n   3 : M N M 1   6 :��
�� 
ttxt N 1   3 6��
�� 
rslt L m   : =��
�� 
TEXT J o      ���� 0 usertext userText H  O P O l  C C������  ��   P  Q R Q l  C C�� S��   S . ( Create the results playlist or clear it    R  T U T Q   C p V W X V I  F T�� Y��
�� .coredeloobj        obj  Y n   F P Z [ Z 2  L P��
�� 
cTrk [ 4   F L�� \
�� 
cPly \ o   J K���� *0 resultsplaylistname resultsPlaylistName��   W R      ������
�� .ascrerr ****      � ****��  ��   X I  \ p���� ]
�� .corecrel****      � null��   ] �� ^ _
�� 
kocl ^ m   ` c��
�� 
cPly _ �� `��
�� 
prdt ` K   f j a a �� b��
�� 
pnam b o   g h���� *0 resultsplaylistname resultsPlaylistName��  ��   U  c d c l  q q������  ��   d  e f e l  q q�� g��   g 4 . Search in lyrics and save results to playlist    f  h i h l  q q�� j��   j R L Note: The uncommon "set {,} to {,} of ..." statement is a speed accelerator    i  k l k r   q � m n m n   q � o p o J   v � q q  r s r 1   w {��
�� 
pLoc s  t�� t 1   } ���
�� 
pLyr��   p n   q v u v u 2  r v��
�� 
cFlT v o   q r���� $0 selectedplaylist selectedPlaylist n J       w w  x y x o      ���� 0 thelocations theLocations y  z�� z o      ���� 0 	thelyrics 	theLyrics��   l  { | { Y   � � }�� ~ �� } Z   � � � ����� � E  � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 	thelyrics 	theLyrics � o   � ����� 0 usertext userText � I  � ��� � �
�� .hookAdd cTrk      @ alis � J   � � � �  ��� � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 thelocations theLocations��   � �� ���
�� 
insh � 4   � ��� �
�� 
cPly � o   � ����� *0 resultsplaylistname resultsPlaylistName��  ��  ��  �� 0 i   ~ m   � �����   l  � � ��� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 thelocations theLocations��  ��  ��   |  � � � l  � ��� ���   � b \ This method is a little faster, but the results are incomplete, it misses some positives :/    �  � � � l  � ��� ���   � k eduplicate (tracks of selectedPlaylist whose lyrics contains userText) to playlist resultsPlaylistName    �  � � � l  � �������  ��   �  � � � l  � ��� ���   � "  Select the results playlist    �  � � � r   � � � � � 4   � ��� �
�� 
cPly � o   � ����� *0 resultsplaylistname resultsPlaylistName � n       � � � 1   � ���
�� 
pPly � 4  � ��� �
�� 
cwin � m   � �����  �  ��� � l  � �������  ��  ��   ! m     � ��null     ߀��  -
iTunes.app�ʠ    �]    ����   ~    )       �(�\�x�����hook   alis    2  mac                        ��v5H+    -
iTunes.app                                                      :��x�        ����  	                Applications    ��e      ��      -  mac:Applications:iTunes.app    
 i T u n e s . a p p    m a c  Applications/iTunes.app   / ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �   � �   � �  ����  ��  ��   � ���� 0 i   � ( �� �� �� ��������� ?�� B�� E����������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�� 0 
scriptname 
ScriptName�� 0 scriptversion scriptVersion�� *0 resultsplaylistname resultsPlaylistName
�� 
cwin
�� 
pPly�� $0 selectedplaylist selectedPlaylist
�� 
ret 
�� 
pnam
�� 
dtxt
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
TEXT�� 0 usertext userText
� 
cPly
�~ 
cTrk
�} .coredeloobj        obj �|  �{  
�z 
kocl
�y 
prdt
�x .corecrel****      � null
�w 
cFlT
�v 
pLoc
�u 
pLyr
�t 
cobj�s 0 thelocations theLocations�r 0 	thelyrics 	theLyrics
�q .corecnte****       ****
�p 
insh
�o .hookAdd cTrk      @ alis�� ��E�O�E�O�E�O� �*�k/�,E�O��%�%�%��,%�%��a ka  O_ a ,a &E` O *a �/a -j W X  *a a a ��la  O�a -[a  ,\[a !,\ZlvE[a "k/E` #Z[a "l/E` $ZO >k_ #j %kh  _ $a "�/_  _ #a "�/kva &*a �/l 'Y h[OY��O*a �/*�k/�,FOPU ascr  ��ޭ