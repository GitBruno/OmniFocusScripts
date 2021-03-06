FasdUAS 1.101.10   ��   ��    k             l      ��  ��   	�	�
	This script marks the selected actions as complete and creates new actions in a "Waiting For" context to track replies.
	
	by Curt Clifton
	
	Copyright � 2007-2017 Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	version 1.2: Added feature fo make new "waiting for" tasks have a defer date relative to today's date.
	version 1.1: Added feature to make new "waiting for" tasks have a due date relative to the original tasks date, rather than relative to today's date.
	version 1.0.2: Fixed to not lose links in note of item
	version 1.0.1: Fixed to work with Mac App Store version of OmniFocus 2 Pro
	version 1.0: Lots of improvements:
		� Updated for OmniFocus 2. 
		� Uses Notification Center instead of Growl. 
		� Handles a Waiting context that is a sub-context, instead of just top-level contexts. 
		� Added a property to allow adjusting due date of created task, but made the default be no due date.
		� Adds an paragraph to the new action�s note indicating when the �waiting for� task was created.
		� If the selected task is already a �waiting for� task, the new task won�t have the �Reply on:� prefix added twice, but it will get another paragraph indicating when the follow-up was sent.
	version 0.2: Removed Growl support
	version 0.1: Original release
     � 	 	� 
 	 T h i s   s c r i p t   m a r k s   t h e   s e l e c t e d   a c t i o n s   a s   c o m p l e t e   a n d   c r e a t e s   n e w   a c t i o n s   i n   a   " W a i t i n g   F o r "   c o n t e x t   t o   t r a c k   r e p l i e s . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7 - 2 0 1 7   C u r t i s   C l i f t o n 
 	 
 	 A l l   r i g h t s   r e s e r v e d . 
 	 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 	 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 	 
 	 v e r s i o n   1 . 2 :   A d d e d   f e a t u r e   f o   m a k e   n e w   " w a i t i n g   f o r "   t a s k s   h a v e   a   d e f e r   d a t e   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 	 v e r s i o n   1 . 1 :   A d d e d   f e a t u r e   t o   m a k e   n e w   " w a i t i n g   f o r "   t a s k s   h a v e   a   d u e   d a t e   r e l a t i v e   t o   t h e   o r i g i n a l   t a s k s   d a t e ,   r a t h e r   t h a n   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 	 v e r s i o n   1 . 0 . 2 :   F i x e d   t o   n o t   l o s e   l i n k s   i n   n o t e   o f   i t e m 
 	 v e r s i o n   1 . 0 . 1 :   F i x e d   t o   w o r k   w i t h   M a c   A p p   S t o r e   v e r s i o n   o f   O m n i F o c u s   2   P r o 
 	 v e r s i o n   1 . 0 :   L o t s   o f   i m p r o v e m e n t s : 
 	 	 "   U p d a t e d   f o r   O m n i F o c u s   2 .   
 	 	 "   U s e s   N o t i f i c a t i o n   C e n t e r   i n s t e a d   o f   G r o w l .   
 	 	 "   H a n d l e s   a   W a i t i n g   c o n t e x t   t h a t   i s   a   s u b - c o n t e x t ,   i n s t e a d   o f   j u s t   t o p - l e v e l   c o n t e x t s .   
 	 	 "   A d d e d   a   p r o p e r t y   t o   a l l o w   a d j u s t i n g   d u e   d a t e   o f   c r e a t e d   t a s k ,   b u t   m a d e   t h e   d e f a u l t   b e   n o   d u e   d a t e . 
 	 	 "   A d d s   a n   p a r a g r a p h   t o   t h e   n e w   a c t i o n  s   n o t e   i n d i c a t i n g   w h e n   t h e    w a i t i n g   f o r    t a s k   w a s   c r e a t e d . 
 	 	 "   I f   t h e   s e l e c t e d   t a s k   i s   a l r e a d y   a    w a i t i n g   f o r    t a s k ,   t h e   n e w   t a s k   w o n  t   h a v e   t h e    R e p l y   o n :    p r e f i x   a d d e d   t w i c e ,   b u t   i t   w i l l   g e t   a n o t h e r   p a r a g r a p h   i n d i c a t i n g   w h e n   t h e   f o l l o w - u p   w a s   s e n t . 
 	 v e r s i o n   0 . 2 :   R e m o v e d   G r o w l   s u p p o r t 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
	This string is matched against your contexts to find a context in which to place the new "waiting-for" action.  The matching is the same as in the context column in OmniFocus, so you don't need the entire contexxt name, just a unique fragment.
     �  � 
 	 T h i s   s t r i n g   i s   m a t c h e d   a g a i n s t   y o u r   c o n t e x t s   t o   f i n d   a   c o n t e x t   i n   w h i c h   t o   p l a c e   t h e   n e w   " w a i t i n g - f o r "   a c t i o n .     T h e   m a t c h i n g   i s   t h e   s a m e   a s   i n   t h e   c o n t e x t   c o l u m n   i n   O m n i F o c u s ,   s o   y o u   d o n ' t   n e e d   t h e   e n t i r e   c o n t e x x t   n a m e ,   j u s t   a   u n i q u e   f r a g m e n t . 
      j     �� �� &0 waitingforcontext waitingForContext  m        �    w a i t      l     ��������  ��  ��        l      ��  ��    k e
	This string is used as a prefix on the original item title when creating the "waiting-for" action.
     �   � 
 	 T h i s   s t r i n g   i s   u s e d   a s   a   p r e f i x   o n   t h e   o r i g i n a l   i t e m   t i t l e   w h e n   c r e a t i n g   t h e   " w a i t i n g - f o r "   a c t i o n . 
      j    �� �� 0 waitingprefix waitingPrefix  m         � ! !  R e p l y   o n :     " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � �
	This string is used as a prefix for a paragraph added to the new item�s note that indicates when the original action was completed.
    ' � ( ( 
 	 T h i s   s t r i n g   i s   u s e d   a s   a   p r e f i x   f o r   a   p a r a g r a p h   a d d e d   t o   t h e   n e w   i t e m  s   n o t e   t h a t   i n d i c a t e s   w h e n   t h e   o r i g i n a l   a c t i o n   w a s   c o m p l e t e d . 
 %  ) * ) j    �� +�� 0 
noteprefix 
notePrefix + m     , , � - - " R e m i n d e r   s e n t   o n   *  . / . l     ��������  ��  ��   /  0 1 0 l      �� 2 3��   2 � �
	The number of days from base date that the newly created "waiting-for" action will be due. Set to a negative number to put no due date on the new action.
    3 � 4 48 
 	 T h e   n u m b e r   o f   d a y s   f r o m   b a s e   d a t e   t h a t   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   w i l l   b e   d u e .   S e t   t o   a   n e g a t i v e   n u m b e r   t o   p u t   n o   d u e   d a t e   o n   t h e   n e w   a c t i o n . 
 1  5 6 5 j   	 �� 7�� 0 daysuntildue daysUntilDue 7 m   	 
������ 6  8 9 8 l     ��������  ��  ��   9  : ; : l      �� < =��   < � �
	If daysUntilDue is not negative, then this controls whether the date of the newly created "waiting-for" action is set relative to the original task's due date or relative to today's date.
    = � > >| 
 	 I f   d a y s U n t i l D u e   i s   n o t   n e g a t i v e ,   t h e n   t h i s   c o n t r o l s   w h e t h e r   t h e   d a t e   o f   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   i s   s e t   r e l a t i v e   t o   t h e   o r i g i n a l   t a s k ' s   d u e   d a t e   o r   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 ;  ? @ ? j    �� A�� .0 usetaskdateasbasedate useTaskDateAsBaseDate A m    ��
�� boovtrue @  B C B l     ��������  ��  ��   C  D E D l      �� F G��   F � �
	The number of days from now until the newly created "waiting-for" action will be available. Set to a negative number to put no defer date on the new action. The defer time is based on the OmniFocus Date & Time preference.
    G � H H� 
 	 T h e   n u m b e r   o f   d a y s   f r o m   n o w   u n t i l   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   w i l l   b e   a v a i l a b l e .   S e t   t o   a   n e g a t i v e   n u m b e r   t o   p u t   n o   d e f e r   d a t e   o n   t h e   n e w   a c t i o n .   T h e   d e f e r   t i m e   i s   b a s e d   o n   t h e   O m n i F o c u s   D a t e   &   T i m e   p r e f e r e n c e . 
 E  I J I j    �� K�� 0 deferfordays deferForDays K m    ������ J  L M L l     ��������  ��  ��   M  N O N l      �� P Q��   P � z 
	This string is used in notifications if multiple items are processed. For single items, we use the actual item title. 
    Q � R R �   
 	 T h i s   s t r i n g   i s   u s e d   i n   n o t i f i c a t i o n s   i f   m u l t i p l e   i t e m s   a r e   p r o c e s s e d .   F o r   s i n g l e   i t e m s ,   w e   u s e   t h e   a c t u a l   i t e m   t i t l e .   
 O  S T S j    �� U�� 00 multipleitemscompleted multipleItemsCompleted U m     V V � W W  M u l t i p l e   I t e m s T  X Y X l     ��������  ��  ��   Y  Z [ Z l      �� \ ]��   \ D >
	The following properties are used for script notifications.
    ] � ^ ^ | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
 [  _ ` _ j    �� a�� "0 scriptsuitename scriptSuiteName a m     b b � c c  C u r t  s   S c r i p t s `  d e d l     ��������  ��  ��   e  f g f l     h���� h r      i j i m     ��
�� 
msng j o      ���� 0 	itemtitle 	itemTitle��  ��   g  k l k l  � m���� m O   � n o n O   � p q p k   � r r  s t s l   �� u v��   u   Gets target context    v � w w (   G e t s   t a r g e t   c o n t e x t t  x y x Q    N z { | z k    4 } }  ~  ~ r    $ � � � n    " � � � 1     "��
�� 
ID   � n      � � � 4     �� �
�� 
cobj � m    ����  � l    ����� � I   �� � �
�� .OFOCFCCmnull���     ctxt � o    ���� &0 waitingforcontext waitingForContext � �� ���
�� 
kocl � m    ��
�� 
FCct��  ��  ��   � o      ���� 0 thecontextid theContextID   ��� � r   % 4 � � � 6  % 2 � � � 4  % )�� �
�� 
FCfc � m   ' (����  � =  * 1 � � � 1   + -��
�� 
ID   � o   . 0���� 0 thecontextid theContextID � o      ���� ,0 thewaitingforcontext theWaitingForContext��   { R      ������
�� .ascrerr ****      � ****��  ��   | k   < N � �  � � � I  < K�� ���
�� .sysodisAaleR        TEXT � b   < G � � � b   < C � � � m   < = � � � � � L N o   c o n t e x t   f o u n d   w h o s e   n a m e   c o n t a i n s    � o   = B���� &0 waitingforcontext waitingForContext � m   C F � � � � �  ��   �  ��� � L   L N����  ��   y  ��� � O   O� � � � l  \� � � � � k   \� � �  � � � r   \ i � � � n   \ e � � � 1   a e��
�� 
valL � 2   \ a��
�� 
OTst � o      ���� $0 theselecteditems theSelectedItems �  � � � Z   j � � ����� � l  j s ����� � A   j s � � � l  j q ����� � I  j q�� ���
�� .corecnte****       **** � o   j m���� $0 theselecteditems theSelectedItems��  ��  ��   � m   q r���� ��  ��   � k   v � � �  � � � I  v ��� � �
�� .sysodisAaleR        TEXT � m   v y � � � � � T Y o u   m u s t   f i r s t   s e l e c t   a n   i t e m   t o   c o m p l e t e . � �� ���
�� 
as A � m   | ��
�� EAlTwarN��   �  ��� � L   � �����  ��  ��  ��   �  � � � X   �� ��� � � k   �� � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 anitem anItem � o      ���� 0 	itemtitle 	itemTitle �  � � � r   � � � � � I  � ��� � �
�� .coreclon****      � **** � o   � ����� 0 anitem anItem � �� ���
�� 
insh � n   � � � � � 9   � ���
�� 
insl � o   � ����� 0 anitem anItem��   � o      ���� 0 thedupe theDupe �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCDd � o   � ����� 0 anitem anItem � o      ���� "0 originalduedate originalDueDate �  � � � r   � � � � � m   � ���
�� boovtrue � n       � � � 1   � ���
�� 
FCcd � o   � ����� 0 anitem anItem �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � #  Configure the duplicate item    � � � � :   C o n f i g u r e   t h e   d u p l i c a t e   i t e m �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thedupe theDupe � o      ���� 0 oldname oldName �  � � � Z   � � � ����� � l  � � ����� � H   � � � � C   � � � � � o   � ��� 0 oldname oldName � o   � ��~�~ 0 waitingprefix waitingPrefix��  ��   � r   � � � � � b   � � � � � o   � ��}�} 0 waitingprefix waitingPrefix � o   � ��|�| 0 oldname oldName � n       � � � 1   � ��{
�{ 
pnam � o   � ��z�z 0 thedupe theDupe��  ��   �  � � � r   � � � � b   � � � � b   �   o   � ��y�y 0 
noteprefix 
notePrefix l  ��x�w c   � l  ��v�u I  ��t�s�r
�t .misccurdldt    ��� null�s  �r  �v  �u   m  �q
�q 
ctxt�x  �w   � o  
�p
�p 
ret  � o      �o�o 0 texttoinsert textToInsert �  I *�n	
�n .TEXTOSinnull���     ctxt o  �m�m 0 texttoinsert textToInsert	 �l
�k
�l 
insh
 n  & 8  "&�j
�j 
insl n  " 4 "�i
�i 
cha  m   !�h�h  n   1  �g
�g 
FCno o  �f�f 0 thedupe theDupe�k    r  +2 o  +,�e�e ,0 thewaitingforcontext theWaitingForContext n       m  /1�d
�d 
FCct o  ,/�c�c 0 thedupe theDupe  r  3< m  34�b
�b 
msng n       1  7;�a
�a 
FCRp o  47�`�` 0 thedupe theDupe  l ==�_�^�]�_  �^  �]    !  l ==�\"#�\  "   Set due date   # �$$    S e t   d u e   d a t e! %&% Z  =�'(�[)' l =D*�Z�Y* A  =D+,+ o  =B�X�X 0 daysuntildue daysUntilDue, m  BC�W�W  �Z  �Y  ( r  GP-.- m  GH�V
�V 
msng. n      /0/ 1  KO�U
�U 
FCDd0 o  HK�T�T 0 thedupe theDupe�[  ) k  S�11 232 Z  S{45�S64 G  Se787 l SY9�R�Q9 H  SY:: o  SX�P�P .0 usetaskdateasbasedate useTaskDateAsBaseDate�R  �Q  8 = \a;<; o  \_�O�O "0 originalduedate originalDueDate< m  _`�N
�N 
msng5 r  hq=>= I hm�M�L�K
�M .misccurdldt    ��� null�L  �K  > o      �J�J 0 basedate baseDate�S  6 r  t{?@? o  tw�I�I "0 originalduedate originalDueDate@ o      �H�H 0 basedate baseDate3 A�GA r  |�BCB [  |�DED l |F�F�EF o  |�D�D 0 basedate baseDate�F  �E  E ]  �GHG o  ��C�C 0 daysuntildue daysUntilDueH 1  ���B
�B 
daysC n      IJI 1  ���A
�A 
FCDdJ o  ���@�@ 0 thedupe theDupe�G  & KLK l ���?�>�=�?  �>  �=  L MNM l ���<OP�<  O   Set defer date   P �QQ    S e t   d e f e r   d a t eN R�;R Z  ��ST�:US l ��V�9�8V A  ��WXW o  ���7�7 0 deferfordays deferForDaysX m  ���6�6  �9  �8  T r  ��YZY m  ���5
�5 
msngZ n      [\[ 1  ���4
�4 
FCDs\ o  ���3�3 0 thedupe theDupe�:  U k  ��]] ^_^ l ���2`a�2  ` e _ TODO: should query user's default defer time, but that's broken in the shipping version of OF2   a �bb �   T O D O :   s h o u l d   q u e r y   u s e r ' s   d e f a u l t   d e f e r   t i m e ,   b u t   t h a t ' s   b r o k e n   i n   t h e   s h i p p i n g   v e r s i o n   o f   O F 2_ cdc r  ��efe I ���1�0�/
�1 .misccurdldt    ��� null�0  �/  f o      �.�.  0 deferuntildate deferUntilDated ghg r  ��iji m  ���-�-  j n      klk 1  ���,
�, 
timel o  ���+�+  0 deferuntildate deferUntilDateh mnm r  ��opo [  ��qrq l ��s�*�)s o  ���(�(  0 deferuntildate deferUntilDate�*  �)  r ]  ��tut o  ���'�' 0 deferfordays deferForDaysu 1  ���&
�& 
daysp o      �%�%  0 deferuntildate deferUntilDaten v�$v r  ��wxw o  ���#�#  0 deferuntildate deferUntilDatex n      yzy 1  ���"
�" 
FCDsz o  ���!�! 0 thedupe theDupe�$  �;  �� 0 anitem anItem � o   � �� �  $0 theselecteditems theSelectedItems � {�{ Z  ��|}��| ?  ��~~ l ������ I �����
� .corecnte****       ****� o  ���� $0 theselecteditems theSelectedItems�  �  �   m  ���� } r  ����� o  ���� 00 multipleitemscompleted multipleItemsCompleted� o      �� 0 	itemtitle 	itemTitle�  �  �   � / ) (first document window whose index is 1)    � ��� R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) � n   O Y��� 1   U Y�
� 
FCcn� 4   O U��
� 
FCdw� m   S T�� ��   q 4   ��
� 
docu� m   
 ��  o m    ���                                                                                  OFOC  alis    X  Macintosh HD               �/4�H+     GOmniFocus.app                                                   9y�ԧ��        ����  	                Applications    �/�Y      Ԩ        G  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   l ��� l     ����  �  �  � ��� l ����� Z  ����
�	� > ����� o  ���� 0 	itemtitle 	itemTitle� m  ���
� 
msng� n  	��� I  	���� 
0 notify  � ��� m  �� ��� 8 C o m p l e t e d   a n d   A w a i t i n g   R e p l y� ��� o  �� 0 	itemtitle 	itemTitle�  �  �  f   �
  �	  �  �  � ��� l     ��� �  �  �   � ��� l      ������  � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   � ���\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
� ��� i    ��� I      ������� 
0 notify  � ��� o      ���� 0 thetitle theTitle� ���� o      ����  0 thedescription theDescription��  ��  � I    ����
�� .sysonotfnull��� ��� TEXT� o     ����  0 thedescription theDescription� ����
�� 
appr� o    ���� "0 scriptsuitename scriptSuiteName� �����
�� 
subt� o    	���� 0 thetitle theTitle��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���    ,������ V b����  � 
���������������������� &0 waitingforcontext waitingForContext�� 0 waitingprefix waitingPrefix�� 0 
noteprefix 
notePrefix�� 0 daysuntildue daysUntilDue�� .0 usetaskdateasbasedate useTaskDateAsBaseDate�� 0 deferfordays deferForDays�� 00 multipleitemscompleted multipleItemsCompleted�� "0 scriptsuitename scriptSuiteName�� 
0 notify  
�� .aevtoappnull  �   � ****����
�� boovtrue����� ������������� 
0 notify  �� ����� �  ������ 0 thetitle theTitle��  0 thedescription theDescription��  � ������ 0 thetitle theTitle��  0 thedescription theDescription� ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ��b  �� � �����������
�� .aevtoappnull  �   � ****� k    ��  f��  k�� �����  ��  ��  � ���� 0 anitem anItem� 4���������������������������� � ��������������� ������������������������������������������������������
�� 
msng�� 0 	itemtitle 	itemTitle
�� 
docu
�� 
kocl
�� 
FCct
�� .OFOCFCCmnull���     ctxt
�� 
cobj
�� 
ID  �� 0 thecontextid theContextID
�� 
FCfc�  �� ,0 thewaitingforcontext theWaitingForContext��  ��  
�� .sysodisAaleR        TEXT
�� 
FCdw
�� 
FCcn
�� 
OTst
�� 
valL�� $0 theselecteditems theSelectedItems
�� .corecnte****       ****
�� 
as A
�� EAlTwarN
�� 
pnam
�� 
insh
�� 
insl
�� .coreclon****      � ****�� 0 thedupe theDupe
�� 
FCDd�� "0 originalduedate originalDueDate
�� 
FCcd�� 0 oldname oldName
�� .misccurdldt    ��� null
�� 
ctxt
�� 
ret �� 0 texttoinsert textToInsert
�� 
FCno
�� 
cha 
�� .TEXTOSinnull���     ctxt
�� 
FCRp
�� 
bool�� 0 basedate baseDate
�� 
days
�� 
FCDs��  0 deferuntildate deferUntilDate
�� 
time�� 
0 notify  ���E�O��*�k/� 'b   ��l �k/�,E�O*�k/�[�,\Z�81E�W X  �b   %a %j OhO*a k/a ,�*a -a ,E` O_ j k a a a l OhY hOR_ [��l kh  �a ,E�O�a �a 4l E` O�a  ,E` !Oe�a ",FO_ a ,E` #O_ #b   b  _ #%_ a ,FY hOb  *j $a %&%_ &%E` 'O_ 'a _ a (,a )k/a 3l *O�_ �,FO�_ a +,FOb  j �_ a  ,FY @b  
 _ !� a ,& *j $E` -Y 	_ !E` -O_ -b  _ . _ a  ,FOb  j �_ a /,FY 3*j $E` 0Oj_ 0a 1,FO_ 0b  _ . E` 0O_ 0_ a /,F[OY��O_ j k b  E�Y hUUUO�� )a 2�l+ 3Y h ascr  ��ޭ