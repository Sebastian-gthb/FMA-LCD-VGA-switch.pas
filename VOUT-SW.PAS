begin
asm


{
this programm switch between LCD and CRT output on graphic carsd with the CirusLogic GD610/620 Chiptset

vidoutsw cl-vos  vout-sw

Read the current video output display.
AH=12h BL=84h return user option config words --> pdf page 276
return AX and BX 
AX bit 8 = CRT Options 0=LCD 1=CRT
}
   mov ah,12h
   mov bl,84h
   int 10h
   
   
{set AL oposit to AH first bit (bh=1 --> al=0)}
   or ah,0FEh      {10101010 or 11111110 --> 11111110 LCD is activ}
   not ah         {11111110 --> 00000001 CRT should be active}
   mov al,ah      {00h = activate LCD output, 01h activate CRT output}
   

{CRT/LCD --> pdf Seite 294}
   mov ah,12h
   mov bl,92h
   {mov al,00h   {enable LCD Flat Panel for display}
   {mov al,01h   {enable CRT for display}
   int 10h

end;
end.
