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
docu � m    ��   m      � �
                                                                                  OFOC  alis    �  MacinstoshX                ���H+   ��OmniFocus.app                                                   I4҇6�        ����  	                Apps    ��Y      ҆�8     �� �� �, W� W� �(  KMacinstoshX:Users: uherfbr: Documents: _WIP: _Projects: Apps: OmniFocus.app     O m n i F o c u s . a p p    M a c i n s t o s h X  9Users/uherfbr/Documents/_WIP/_Projects/Apps/OmniFocus.app   /    ��  ��  ��     � � � l     �~�}�|�~  �}  �|   �  ��{ � l     �z�y�x�z  �y  �x  �{       �w ��v � ��u � � � � ��t�s�r�q�p�o�n�w   � �m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�m $0 defaultstarttime defaultStartTime
�l .aevtoappnull  �   � ****�k 00 validselecteditemslist validSelectedItemsList�j 0 
totalitems 
totalItems�i 0 newdate newDate�h *0 originalduedatetime originalDueDateTime�g ,0 originalduestartdate originalDueStartDate�f 0 thedelta theDelta�e  0 newduedatetime newDueDateTime�d .0 originalstartdatetime originalStartDateTime�c  �b  �a  �`  �_  �^  �v  � �] ��\�[ � ��Z
�] .aevtoappnull  �   � **** � k     � �  �Y�Y  �\  �[   � �X�X 0 selecteditem selectedItem �  ��W�V�U�T ��S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<
�W 
docu
�V 
FCdw
�U 
FCcn
�T 
OTst �  
�S 
valL
�R 
pcls
�Q 
cobj
�P 
FCAr�O 00 validselecteditemslist validSelectedItemsList
�N .corecnte****       ****�M 0 
totalitems 
totalItems
�L .misccurdldt    ��� null
�K 
time�J  Q��I 0 newdate newDate
�H 
kocl
�G 
FCDd�F *0 originalduedatetime originalDueDateTime
�E 
msng�D ,0 originalduestartdate originalDueStartDate�C 0 thedelta theDelta
�B 
days�A  0 newduedatetime newDueDateTime
�@ 
FCDs�? .0 originalstartdatetime originalStartDateTime�> $0 newstartdatetime newStartDateTime�=  �<  �Z�*�k/�k/�, �*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O�j E�O�j  hY hO*j *j �,�E` O ��[a �l kh   ��a ,E` O_ a  l_ _ �,E` O_ _ �!E` O_ _ _  E` O_ �a ,FO�a ,E` O_ a  _ _ _  E` O_ �a ,FY hY _ �a ,FW X  h[OY�gOPUU � �; ��;  �   � �  � �  ��: ��9 �  ��8 ��7
�8 
docu � � � �  c x T f K - M U e 2 z
�7 kfrmID  
�: 
FCit � � � �  m T x 5 S 6 t n F W w
�9 kfrmID  �u  � ldt     һD  � ldt     Һq � ldt     ҹ� � ?�       � ldt     һ
�t 
msng�s  �r  �q  �p  �o  �n   ascr  ��ޭ