// hello world program
_start:
 r0=1
 r1=&message
 r2=12
 r7=4
 svc 0
 r0=0
 r7=1
 svc 0

message:
 byte 'h'
 byte 'e'
 byte 'l'
 byte 'l'
 byte 'o'
 byte 32
 byte 'w'
 byte 'o'
 byte 'r'
 byte 'l'
 byte 'd'
 byte 10
 