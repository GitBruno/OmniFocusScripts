FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Tomorrow.scpt
	By Bruno Herfst
	
	This script changes the due date to tomorrow
	For all the crap you don't want to do today.
	
     � 	 	 
 	 T o m o r r o w . s c p t 
 	 B y   B r u n o   H e r f s t 
 	 
 	 T h i s   s c r i p t   c h a n g e s   t h e   d u e   d a t e   t o   t o m o r r o w 
 	 F o r   a l l   t h e   c r a p   y o u   d o n ' t   w a n t   t o   d o   t o d a y . 
 	 
   
  
 l     ��������  ��  ��        l    ����  O        O       k          l   ��  ��     Get selection     �    G e t   s e l e c t i o n      r    .    n    ,    1   * ,��
�� 
valL  l   * ����  6  *   !   2   ��
�� 
OTst ! F    ) " # " >    $ % $ n     & ' & m    ��
�� 
pcls ' n    ( ) ( 1    ��
�� 
valL )  g     % m    ��
�� 
cobj # >   ( * + * n     $ , - , m   " $��
�� 
pcls - n    " . / . 1     "��
�� 
valL /  g       + m   % '��
�� 
FCAr��  ��    o      ���� 00 validselecteditemslist validSelectedItemsList   0 1 0 r   / 6 2 3 2 I  / 4�� 4��
�� .corecnte****       **** 4 o   / 0���� 00 validselecteditemslist validSelectedItemsList��   3 o      ���� 0 
totalitems 
totalItems 1  5 6 5 Z   7 C 7 8���� 7 =  7 : 9 : 9 o   7 8���� 0 
totalitems 
totalItems : m   8 9����   8 L   = ?����  ��  ��   6  ; < ; l  D D��������  ��  ��   <  = > = r   D W ? @ ? [   D S A B A \   D Q C D C l  D I E���� E I  D I������
�� .misccurdldt    ��� null��  ��  ��  ��   D l  I P F���� F n   I P G H G 1   N P��
�� 
time H l  I N I���� I I  I N������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   B m   Q R����  Q� @ o      ���� 0 newdate newDate >  J K J l  X X��������  ��  ��   K  L M L X   X N�� O N Q   j � P Q�� P k   m � R R  S T S r   m v U V U n   m r W X W 1   n r��
�� 
FCDd X o   m n���� 0 selecteditem selectedItem V o      ���� *0 originalduedatetime originalDueDateTime T  Y�� Y Z   w � Z [�� \ Z l  w ~ ]���� ] >  w ~ ^ _ ^ o   w z���� *0 originalduedatetime originalDueDateTime _ m   z }��
�� 
msng��  ��   [ k   � � ` `  a b a l  � ��� c d��   c - 'Set new due date with original due time    d � e e N S e t   n e w   d u e   d a t e   w i t h   o r i g i n a l   d u e   t i m e b  f g f r   � � h i h \   � � j k j o   � ����� *0 originalduedatetime originalDueDateTime k l  � � l���� l n   � � m n m 1   � ���
�� 
time n o   � ����� *0 originalduedatetime originalDueDateTime��  ��   i o      ���� ,0 originalduestartdate originalDueStartDate g  o p o r   � � q r q ^   � � s t s l  � � u���� u \   � � v w v o   � ����� 0 newdate newDate w o   � ����� ,0 originalduestartdate originalDueStartDate��  ��   t m   � �����  Q� r o      ���� 0 thedelta theDelta p  x y x r   � � z { z l  � � |���� | [   � � } ~ } o   � ����� *0 originalduedatetime originalDueDateTime ~ l  � � ����  ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   { o      ����  0 newduedatetime newDueDateTime y  � � � r   � � � � � o   � �����  0 newduedatetime newDueDateTime � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem � o      ���� .0 originalstartdatetime originalStartDateTime �  ��� � Z   � � � ����� � l  � � ����� � >  � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � m   � ���
�� 
msng��  ��   � k   � � � �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � l  � � ����� � ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   � o      ���� $0 newstartdatetime newStartDateTime �  ��� � r   � � � � � o   � ����� $0 newstartdatetime newStartDateTime � n       � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem��  ��  ��  ��  ��   \ r   � � � � � l  � � ����� � o   � ����� 0 newdate newDate��  ��   � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem��   Q R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 selecteditem selectedItem O o   [ \���� 00 validselecteditemslist validSelectedItemsList M  ��� � l ��������  ��  ��  ��    n     � � � 1    ��
�� 
FCcn � n     � � � 4   �� �
�� 
FCdw � m   	 
����  � 4   �� �
�� 
docu � m    ����   m      � ��                                                                                  OFOC  alis    X  Macintosh HD               ���H+     �OmniFocus.app                                                   ԣ�֧�        ����  	                Applications    ��Y      ���       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��     � � � l     ��������  ��  ��   �  ��� � l     ��~�}�  �~  �}  ��       �| � ��|   � �{
�{ .aevtoappnull  �   � **** � �z ��y�x � ��w
�z .aevtoappnull  �   � **** � k     � �  �v�v  �y  �x   � �u�u 0 selecteditem selectedItem �  ��t�s�r�q ��p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y
�t 
docu
�s 
FCdw
�r 
FCcn
�q 
OTst �  
�p 
valL
�o 
pcls
�n 
cobj
�m 
FCAr�l 00 validselecteditemslist validSelectedItemsList
�k .corecnte****       ****�j 0 
totalitems 
totalItems
�i .misccurdldt    ��� null
�h 
time�g  Q��f 0 newdate newDate
�e 
kocl
�d 
FCDd�c *0 originalduedatetime originalDueDateTime
�b 
msng�a ,0 originalduestartdate originalDueStartDate�` 0 thedelta theDelta
�_ 
days�^  0 newduedatetime newDueDateTime
�] 
FCDs�\ .0 originalstartdatetime originalStartDateTime�[ $0 newstartdatetime newStartDateTime�Z  �Y  �w�*�k/�k/�, �*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j E�O�j  hY hO*j *j �,�E` O ��[a �l kh   ��a ,E` O_ a  l_ _ �,E` O_ _ �!E` O_ _ _  E` O_ �a ,FO�a ,E` O_ a  _ _ _  E` O_ �a ,FY hY _ �a ,FW X  h[OY�gOPUUascr  ��ޭ