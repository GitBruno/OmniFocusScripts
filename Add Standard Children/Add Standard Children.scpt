FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Add Standard Children

	This script adds a standard set of child actions to a selected action or project.
	
	by Curtis Clifton
	
	Version History:

		0.1, initial draft, Apr 12, 2015

     � 	 	t 
 	 A d d   S t a n d a r d   C h i l d r e n 
 
 	 T h i s   s c r i p t   a d d s   a   s t a n d a r d   s e t   o f   c h i l d   a c t i o n s   t o   a   s e l e c t e d   a c t i o n   o r   p r o j e c t . 
 	 
 	 b y   C u r t i s   C l i f t o n 
 	 
 	 V e r s i o n   H i s t o r y : 
 
 	 	 0 . 1 ,   i n i t i a l   d r a f t ,   A p r   1 2 ,   2 0 1 5 
 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
	Configuration:
	� childrenTitles is a list of the titles for the child tasks that will be added
	� includeParentTitle controls whether the child tasks will be named like �Parent Name: Child Name� or just �Child Name�
     �  � 
 	 C o n f i g u r a t i o n : 
 	 "   c h i l d r e n T i t l e s   i s   a   l i s t   o f   t h e   t i t l e s   f o r   t h e   c h i l d   t a s k s   t h a t   w i l l   b e   a d d e d 
 	 "   i n c l u d e P a r e n t T i t l e   c o n t r o l s   w h e t h e r   t h e   c h i l d   t a s k s   w i l l   b e   n a m e d   l i k e    P a r e n t   N a m e :   C h i l d   N a m e    o r   j u s t    C h i l d   N a m e  
      l     ��������  ��  ��        j     �� ��  0 childrentitles childrenTitles  J            m        �    A L X      m       �    C A L       m     ! ! � " "  C H C    # $ # m     % % � & &  M M M $  '�� ' m     ( ( � ) )  S I B��     * + * j   	 �� ,�� (0 includeparenttitle includeParentTitle , m   	 
��
�� boovfals +  - . - l     ��������  ��  ��   .  / 0 / l      �� 1 2��   1 D >
	The following properties are used for script notifications.
    2 � 3 3 | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
 0  4 5 4 j    �� 6�� "0 scriptsuitename scriptSuiteName 6 m     7 7 � 8 8  C u r t  s   S c r i p t s 5  9 : 9 l     ��������  ��  ��   :  ; < ; l   ( =���� = O    ( > ? > O   ' @ A @ k   & B B  C D C O    5 E F E l   4 G H I G k    4 J J  K L K r     M N M n     O P O 2   ��
�� 
OTst P 1    ��
�� 
FCcn N o      ���� $0 theselecteditems theSelectedItems L  Q�� Q Z    4 R S���� R l   ! T���� T >    ! U V U l    W���� W I   �� X��
�� .corecnte****       **** X o    ���� $0 theselecteditems theSelectedItems��  ��  ��   V m     ���� ��  ��   S k   $ 0 Y Y  Z [ Z I  $ -�� \ ]
�� .sysodisAaleR        TEXT \ m   $ % ^ ^ � _ _ v Y o u   m u s t   f i r s t   s e l e c t   a   t a s k   o r   p r o j e c t   t o   a d d   c h i l d r e n   t o . ] �� ` a
�� 
mesS ` m   & ' b b � c c h S e l e c t   a   s i n g l e   t a s k   o r   p r o j e c t   i n   t h e   m a i n   o u t l i n e . a �� d��
�� 
as A d m   ( )��
�� EAlTwarN��   [  e�� e L   . 0����  ��  ��  ��  ��   H / ) (first document window whose index is 1)    I � f f R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) F 4    �� g
�� 
FCdw g m    ����  D  h i h l  6 6��������  ��  ��   i  j k j r   6 @ l m l n   6 < n o n 1   : <��
�� 
valL o n   6 : p q p 4   7 :�� r
�� 
cobj r m   8 9����  q o   6 7���� $0 theselecteditems theSelectedItems m o      ���� 0 selecteditem selectedItem k  s t s r   A M u v u n   A I w x w 1   E I��
�� 
pnam x n   A E y z y 4   B E�� {
�� 
cobj { m   C D����  z o   A B���� $0 theselecteditems theSelectedItems v o      ���� 0 theparentname theParentName t  | } | r   N U ~  ~ o   N Q���� 0 selecteditem selectedItem  o      ���� 0 roottask rootTask }  � � � Z   V s � ����� � l  V a ����� � =  V a � � � n   V ] � � � m   Y ]��
�� 
pcls � o   V Y���� 0 roottask rootTask � m   ] `��
�� 
FCpr��  ��   � r   d o � � � n   d k � � � 1   g k��
�� 
FCrt � o   d g���� 0 selecteditem selectedItem � o      ���� 0 roottask rootTask��  ��   �  � � � Z   t � � ����� � l  t  ����� � >  t  � � � n   t { � � � m   w {��
�� 
pcls � o   t w���� 0 roottask rootTask � m   { ~��
�� 
FCac��  ��   � k   � � � �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � m   � � � � � � � j Y o u   m u s t   s e l e c t   a   t a s k   o r   p r o j e c t   t o   a d d   c h i l d r e n   t o . � �� � �
�� 
mesS � m   � � � � � � � Z S e l e c t   a   t a s k   o r   p r o j e c t   i n   t h e   m a i n   o u t l i n e . � �� ���
�� 
as A � m   � ���
�� EAlTwarN��   �  ��� � L   � �����  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � ���
�� boovfals � 1   � ���
�� 
FCwa �  � � � Q   � � � � � X   �  ��� � � k   � � � �  � � � Z   � � � ����� � o   � ����� (0 includeparenttitle includeParentTitle � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 theparentname theParentName � m   � � � � � � �  :   � o   � ����� 0 
childtitle 
childTitle � o      ���� 0 
childtitle 
childTitle��  ��   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
FCac � �� � �
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 
childtitle 
childTitle��   � �� ���
�� 
insh � n   � � � � � 9   � ���
�� 
insl � n   � � � � � 4  � ��� �
�� 
FCac � m   � ������� � o   � ����� 0 roottask rootTask��   � o      ���� 0 newtask newTask �  ��� � l  � ��� � ���   �   HEREDAMMIT    � � � �    H E R E D A M M I T��  �� 0 
childtitle 
childTitle � o   � �����  0 childrentitles childrenTitles � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � k   � �  � � � r   � � � m  	��
�� boovtrue � 1  	��
�� 
FCwa �  ��� � R  �� � �
�� .ascrerr ****      � **** � o  ���� 0 errstr errStr � �� ���
�� 
errn � o  ���� 0 errornumber errorNumber��  ��   �  � � � l ��~�}�  �~  �}   �  � � � n $ � � � I  $�| ��{�| 
0 notify   �  � � � m   � � � � �  C h i l d r e n   A d d e d �  ��z � m    � � � � � n Y o u   m a y   n e e d   t o   g o   t o   P r o j e c t s   t o   s e e   t h e   n e w   c h i l d r e n .�z  �{   �  f   �  ��y � l %%�x�w�v�x  �w  �v  �y   A 4   �u �
�u 
docu � m    �t�t  ? m      � ��                                                                                  OFOC  alis    X  Macintosh HD               ���H+     �OmniFocus.app                                                   ԣ�֧�        ����  	                Applications    ��Y      ���       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   <  � � � l     �s�r�q�s  �r  �q   �  � � � l      �p � ��p   � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
    � � � �\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
 �  ��o � i     � � � I      �n ��m�n 
0 notify   �  � � � o      �l�l 0 thetitle theTitle �  ��k � o      �j�j  0 thedescription theDescription�k  �m   � I    �i � �
�i .sysonotfnull��� ��� TEXT � o     �h�h  0 thedescription theDescription � �g � 
�g 
appr � o    �f�f "0 scriptsuitename scriptSuiteName  �e�d
�e 
subt o    	�c�c 0 thetitle theTitle�d  �o       �b�a 7�b   �`�_�^�]�\�`  0 childrentitles childrenTitles�_ (0 includeparenttitle includeParentTitle�^ "0 scriptsuitename scriptSuiteName�] 
0 notify  
�\ .aevtoappnull  �   � **** �[�[      ! % (
�a boovfals �Z ��Y�X�W�Z 
0 notify  �Y �V	�V 	  �U�T�U 0 thetitle theTitle�T  0 thedescription theDescription�X   �S�R�S 0 thetitle theTitle�R  0 thedescription theDescription �Q�P�O�N
�Q 
appr
�P 
subt�O 
�N .sysonotfnull��� ��� TEXT�W ��b  ��  �M
�L�K�J
�M .aevtoappnull  �   � ****
 k    (  ;�I�I  �L  �K   �H�G�F�H 0 
childtitle 
childTitle�G 0 errstr errStr�F 0 errornumber errorNumber ) ��E�D�C�B�A�@ ^�? b�>�=�<�;�:�9�8�7�6�5�4�3�2�1 � ��0�/ ��.�-�,�+�*�)�(�' � ��&
�E 
docu
�D 
FCdw
�C 
FCcn
�B 
OTst�A $0 theselecteditems theSelectedItems
�@ .corecnte****       ****
�? 
mesS
�> 
as A
�= EAlTwarN�< 
�; .sysodisAaleR        TEXT
�: 
cobj
�9 
valL�8 0 selecteditem selectedItem
�7 
pnam�6 0 theparentname theParentName�5 0 roottask rootTask
�4 
pcls
�3 
FCpr
�2 
FCrt
�1 
FCac
�0 
FCwa
�/ 
kocl
�. 
prdt
�- 
insh
�, 
insl�+ 
�* .corecrel****      � null�) 0 newtask newTask�( 0 errstr errStr �%�$�#
�% 
errn�$ 0 errornumber errorNumber�#  
�' 
errn�& 
0 notify  �J)�%*�k/*�k/ $*�,�-E�O�j k ������ OhY hUO��k/�,E` O��k/a ,E` O_ E` O_ a ,a   _ a ,E` Y hO_ a ,a  a �a ��� OhY hOf*a ,FO c ]b   [a �l kh  b   _ a %�%E�Y hO*a a a a �la _ a i/a 4a   !E` "OP[OY��W X # $e*a ,FO)a %�l�O)a &a 'l+ (OPUU ascr  ��ޭ