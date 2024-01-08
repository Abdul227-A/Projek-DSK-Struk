.model small 
.code
.org 100h 


data:
 
jmp mulai
home    DB  "======Selamat datang di program struk======",10d,10d,13d,'$' 
home1   DB    "Silahkan memasukkan barang bawaan anda",10d,13d,'$'
home2   DB 10,"========================================",'$' 
input1  DB 10,13,"|| Nama Barang  :",'$'
input2  DB 10,13,"|| Harga Barang :",'$'
input3  DB 13,10,"|| Jumlah       :",'$'
home3   DB 13,10,"====================================",13,'$'
makasih DB 13,10,"         Struk Telah Jadi",'$'  
penutup DB 13,10,"   Terima kasih sudah menginput",'$'
 
kata DB 20,?,20 DUP(?)
  

mulai:
mov ah,09h 
mov dx,offset home
int 21h  

mov ah,09h 
mov dx,offset home1
int 21h 
         
mov ah,09h 
mov dx,offset home2
int 21h 

mulai1:
  
mov ah,09h
mov dx,offset input1
int 21h

mov ah,0ah
lea dx,kata
int 21h 

mov ah,09h
mov dx,offset input2
int 21h     

mov ah,0ah
lea dx,kata
int 21h 
         
mov ah,09h
mov dx,offset input3
int 21h     

mov ah,0ah
lea dx,kata
int 21h

mov ah,09h
mov dx,offset home3
int 21h 

mov ah,01h
lea dx,kata
int 21h

cmp al,'='
je mulai1

cmp al,'-'
je tutup
    
tutup: 
mov ah,09h
lea dx,makasih
int 21h

mov ah,09h
lea dx,penutup
int 21h



   

end
