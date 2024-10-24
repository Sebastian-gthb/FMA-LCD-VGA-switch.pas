begin
asm

   mov ah,12h
   mov bl,92h
   {mov al,00h   {enable LCD Flat Panel for display}
   mov al,01h   {enable CRT for display}
   int 10h

end;
end.