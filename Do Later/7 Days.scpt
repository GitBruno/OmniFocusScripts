FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	DoNextWeek.scpt
	By Bruno Herfst
	
	This script changes the due date to tomorrow
	For all the crap you don't want to do this week.
	
     � 	 	 
 	 D o N e x t W e e k . s c p t 
 	 B y   B r u n o   H e r f s t 
 	 
 	 T h i s   s c r i p t   c h a n g e s   t h e   d u e   d a t e   t o   t o m o r r o w 
 	 F o r   a l l   t h e   c r a p   y o u   d o n ' t   w a n t   t o   d o   t h i s   w e e k . 
 	 
   
  
 l     ��������  ��  ��        l   
 ����  O    
    O   	    k          l   ��  ��     Get selection     �    G e t   s e l e c t i o n      r    .    n    ,    1   * ,��
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
totalItems : m   8 9����   8 L   = ?����  ��  ��   6  ; < ; l  D D��������  ��  ��   <  = > = r   D [ ? @ ? [   D W A B A \   D Q C D C l  D I E���� E I  D I������
�� .misccurdldt    ��� null��  ��  ��  ��   D l  I P F���� F n   I P G H G 1   N P��
�� 
time H l  I N I���� I I  I N������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   B l  Q V J���� J ]   Q V K L K m   Q R����  Q� L m   R U���� ��  ��   @ o      ���� 0 newdate newDate >  M N M l  \ \��������  ��  ��   N  O P O X   \ Q�� R Q Q   n S T�� S k   q � U U  V W V r   q z X Y X n   q v Z [ Z 1   r v��
�� 
FCDd [ o   q r���� 0 selecteditem selectedItem Y o      ���� *0 originalduedatetime originalDueDateTime W  \�� \ Z   { � ] ^�� _ ] l  { � `���� ` >  { � a b a o   { ~���� *0 originalduedatetime originalDueDateTime b m   ~ ���
�� 
msng��  ��   ^ k   � � c c  d e d l  � ��� f g��   f - 'Set new due date with original due time    g � h h N S e t   n e w   d u e   d a t e   w i t h   o r i g i n a l   d u e   t i m e e  i j i r   � � k l k \   � � m n m o   � ����� *0 originalduedatetime originalDueDateTime n l  � � o���� o n   � � p q p 1   � ���
�� 
time q o   � ����� *0 originalduedatetime originalDueDateTime��  ��   l o      ���� ,0 originalduestartdate originalDueStartDate j  r s r r   � � t u t ^   � � v w v l  � � x���� x \   � � y z y o   � ����� 0 newdate newDate z o   � ����� ,0 originalduestartdate originalDueStartDate��  ��   w m   � �����  Q� u o      ���� 0 thedelta theDelta s  { | { r   � � } ~ } l  � � ����  [   � � � � � o   � ����� *0 originalduedatetime originalDueDateTime � l  � � ����� � ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   ~ o      ����  0 newduedatetime newDueDateTime |  � � � r   � � � � � o   � �����  0 newduedatetime newDueDateTime � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem � o      ���� .0 originalstartdatetime originalStartDateTime �  ��� � Z   � � � ����� � l  � � ����� � >  � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � m   � ���
�� 
msng��  ��   � k   � � � �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� .0 originalstartdatetime originalStartDateTime � l  � � ����� � ]   � � � � � o   � ����� 0 thedelta theDelta � 1   � ���
�� 
days��  ��  ��  ��   � o      ���� $0 newstartdatetime newStartDateTime �  ��� � r   � � � � � o   � ����� $0 newstartdatetime newStartDateTime � n       � � � 1   � ���
�� 
FCDs � o   � ����� 0 selecteditem selectedItem��  ��  ��  ��  ��   _ r   � � � � � l  � � ����� � o   � ����� 0 newdate newDate��  ��   � n       � � � 1   � ���
�� 
FCDd � o   � ����� 0 selecteditem selectedItem��   T R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 selecteditem selectedItem R o   _ `���� 00 validselecteditemslist validSelectedItemsList P  ��� � l ��������  ��  ��  ��    n     � � � 1    ��
�� 
FCcn � n     � � � 4   �� �
�� 
FCdw � m   	 
����  � 4   �� �
�� 
docu � m    ����   m      � ��                                                                                  OFOC  alis    J  PBHD480                    љ(8H+     �OmniFocus.app                                                   �g�҇6�        ����  	                Applications    ј��      ҆�8       �  #PBHD480:Applications: OmniFocus.app     O m n i F o c u s . a p p    P B H D 4 8 0  Applications/OmniFocus.app  / ��  ��  ��     � � � l     ����~��  �  �~   �  ��} � l     �|�{�z�|  �{  �z  �}       �y � � ��x � � � � ��w�v�u�t�s�r�q�p�y   � �o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`
�o .aevtoappnull  �   � ****�n 00 validselecteditemslist validSelectedItemsList�m 0 
totalitems 
totalItems�l 0 newdate newDate�k *0 originalduedatetime originalDueDateTime�j ,0 originalduestartdate originalDueStartDate�i 0 thedelta theDelta�h  0 newduedatetime newDueDateTime�g .0 originalstartdatetime originalStartDateTime�f  �e  �d  �c  �b  �a  �`   � �_ ��^�] � ��\
�_ .aevtoappnull  �   � **** � k    
 � �  �[�[  �^  �]   � �Z�Z 0 selecteditem selectedItem �  ��Y�X�W�V ��U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=
�Y 
docu
�X 
FCdw
�W 
FCcn
�V 
OTst �  
�U 
valL
�T 
pcls
�S 
cobj
�R 
FCAr�Q 00 validselecteditemslist validSelectedItemsList
�P .corecnte****       ****�O 0 
totalitems 
totalItems
�N .misccurdldt    ��� null
�M 
time�L  Q��K �J 0 newdate newDate
�I 
kocl
�H 
FCDd�G *0 originalduedatetime originalDueDateTime
�F 
msng�E ,0 originalduestartdate originalDueStartDate�D 0 thedelta theDelta
�C 
days�B  0 newduedatetime newDueDateTime
�A 
FCDs�@ .0 originalstartdatetime originalStartDateTime�? $0 newstartdatetime newStartDateTime�>  �=  �\�*�k/�k/�, �*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j E�O�j  hY hO*j *j �,�a  E` O ��[a �l kh   ��a ,E` O_ a  l_ _ �,E` O_ _ �!E` O_ _ _  E` O_ �a ,FO�a ,E` O_ a  _ _ _  E` O_ �a ,FY hY _ �a ,FW X  h[OY�gOPUU � �< ��<  �   � �  � �  ��; ��: �  ��9 ��8
�9 
docu � � � �  g R o 6 s V K v p E -
�8 kfrmID  
�; 
FCac � � � �  g S u a O z A O M I X
�: kfrmID  �x  � ldt     ���  � ldt     ҽ�� � ldt     Ҽ�� � @       � ldt     ��p
�w 
msng�v  �u  �t  �s  �r  �q  �p   ascr  ��ޭ