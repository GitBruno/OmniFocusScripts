FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	DoTomorrow.scpt
	By Bruno Herfst
	
	This script changes the due date to tomorrow
	For all the crap you don't want to do today.
	
     � 	 	 
 	 D o T o m o r r o w . s c p t 
 	 B y   B r u n o   H e r f s t 
 	 
 	 T h i s   s c r i p t   c h a n g e s   t h e   d u e   d a t e   t o   t o m o r r o w 
 	 F o r   a l l   t h e   c r a p   y o u   d o n ' t   w a n t   t o   d o   t o d a y . 
 	 
   
  
 l     ��������  ��  ��        l          j     �� �� $0 defaultstarttime defaultStartTime  m     ����   1 +default time to use (in hours, 24-hr clock)     �   V d e f a u l t   t i m e   t o   u s e   ( i n   h o u r s ,   2 4 - h r   c l o c k )      l     ��������  ��  ��        l    ����  O        O       k          l   ��   ��     Get selection      � ! !  G e t   s e l e c t i o n   " # " r    . $ % $ n    , & ' & 1   * ,��
�� 
valL ' l   * (���� ( 6  * ) * ) 2   ��
�� 
OTst * F    ) + , + >    - . - n     / 0 / m    ��
�� 
pcls 0 n    1 2 1 1    ��
�� 
valL 2  g     . m    ��
�� 
cobj , >   ( 3 4 3 n     $ 5 6 5 m   " $��
�� 
pcls 6 n    " 7 8 7 1     "��
�� 
valL 8  g       4 m   % '��
�� 
FCAr��  ��   % o      ���� 00 validselecteditemslist validSelectedItemsList #  9 : 9 r   / 6 ; < ; I  / 4�� =��
�� .corecnte****       **** = o   / 0���� 00 validselecteditemslist validSelectedItemsList��   < o      ���� 0 
totalitems 
totalItems :  > ? > Z   7 C @ A���� @ =  7 : B C B o   7 8���� 0 
totalitems 
totalItems C m   8 9����   A L   = ?����  ��  ��   ?  D E D l  D D��������  ��  ��   E  F G F r   D W H I H [   D S J K J \   D Q L M L l  D I N���� N I  D I������
�� .misccurdldt    ��� null��  ��  ��  ��   M l  I P O���� O n   I P P Q P 1   N P��
�� 
time Q l  I N R���� R I  I N������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   K m   Q R����  Q� I o      ���� 0 newdate newDate G  S T S l  X X��������  ��  ��   T  U V U X   X W�� X W Q   j � Y Z�� Y k   m � [ [  \ ] \ r   m v ^ _ ^ n   m r ` a ` 1   n r��
�� 
FCDd a o   m n���� 0 selecteditem selectedItem _ o      ���� *0 originalduedatetime originalDueDateTime ]  b�� b Z   w � c d�� e c l  w ~ f���� f >  w ~ g h g o   w z���� *0 originalduedatetime originalDueDateTime h m   z }��
�� 
msng��  ��   d k   � � i i  j k j l  � ��� l m��   l - 'Set new due date with original due time    m � n n N S e t   n e w   d u e   d a t e   w i t h   o r i g i n a l   d u e   t i m e k  o p o r   � � q r q \   � � s t s o   � ����� *0 originalduedatetime originalDueDateTime t l  � � u���� u n   � � v w v 1   � ���
�� 
time w o   � ����� *0 originalduedatetime originalDueDateTime��  ��   r o      ���� ,0 originalduestartdate originalDueStartDate p  x y x r   � � z { z ^   � � | } | l  � � ~���� ~ \   � �  �  o   � ����� 0 newdate newDate � o   � ����� ,0 originalduestartdate originalDueStartDate��  ��   } m   � �����  Q� { o      ���� 0 thedelta theDelta y  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� *0 originalduedatetime originalDueDateTime � l  � � ����� � ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   � o      ����  0 newduedatetime newDueDateTime �  � � � r   � � � � � o   � �����  0 newduedatetime newDueDateTime � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem � o      ���� .0 originalstartdatetime originalStartDateTime �  ��� � Z   � � � ����� � l  � � ����� � >  � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � m   � ���
�� 
msng��  ��   � k   � � � �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � l  � � ����� � ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   � o      ���� $0 newstartdatetime newStartDateTime �  ��� � r   � � � � � o   � ����� $0 newstartdatetime newStartDateTime � n       � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem��  ��  ��  ��  ��   e r   � � � � � l  � � ����� � o   � ����� 0 newdate newDate��  ��   � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem��   Z R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 selecteditem selectedItem X o   [ \���� 00 validselecteditemslist validSelectedItemsList V  ��� � l ��������  ��  ��  ��    n     � � � 1    ��
�� 
FCcn � n     � � � 4   �� �
�� 
FCdw � m   	 
����  � 4   �� �
�� 
docu � m    ��   m      � ��                                                                                  OFOC  alis    J  PBHD480                    љ(8H+     �OmniFocus.app                                                   �g�҇6�        ����  	                Applications    ј��      ҆�8       �  #PBHD480:Applications: OmniFocus.app     O m n i F o c u s . a p p    P B H D 4 8 0  Applications/OmniFocus.app  / ��  ��  ��     � � � l     �~�}�|�~  �}  �|   �  ��{ � l     �z�y�x�z  �y  �x  �{       �w ��v ��w   � �u�t�u $0 defaultstarttime defaultStartTime
�t .aevtoappnull  �   � ****�v  � �s ��r�q � ��p
�s .aevtoappnull  �   � **** � k     � �  �o�o  �r  �q   � �n�n 0 selecteditem selectedItem �  ��m�l�k�j ��i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R
�m 
docu
�l 
FCdw
�k 
FCcn
�j 
OTst �  
�i 
valL
�h 
pcls
�g 
cobj
�f 
FCAr�e 00 validselecteditemslist validSelectedItemsList
�d .corecnte****       ****�c 0 
totalitems 
totalItems
�b .misccurdldt    ��� null
�a 
time�`  Q��_ 0 newdate newDate
�^ 
kocl
�] 
FCDd�\ *0 originalduedatetime originalDueDateTime
�[ 
msng�Z ,0 originalduestartdate originalDueStartDate�Y 0 thedelta theDelta
�X 
days�W  0 newduedatetime newDueDateTime
�V 
FCDs�U .0 originalstartdatetime originalStartDateTime�T $0 newstartdatetime newStartDateTime�S  �R  �p�*�k/�k/�, �*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j E�O�j  hY hO*j *j �,�E` O ��[a �l kh   ��a ,E` O_ a  l_ _ �,E` O_ _ �!E` O_ _ _  E` O_ �a ,FO�a ,E` O_ a  _ _ _  E` O_ �a ,FY hY _ �a ,FW X  h[OY�gOPUUascr  ��ޭ