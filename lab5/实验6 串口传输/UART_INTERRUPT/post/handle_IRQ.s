   IMPORT  RTSR
   IMPORT  FFRBR
   IMPORT  FFTHR
   ;IMPORT  stack_myself
 

   EXPORT  handle_IRQ
   
   AREA handle_IRQ, CODE, READONLY
   
  ; sub lr,lr,#04
   
  ; ldr r1,=stack_myself
  ; mov sp, r1

   ;stmfd  sp!,{lr} 

   ldr  r0, =FFRBR
   ldr  r1, [r0]
   str  r1, [r0]
   
  ; ldmfd   sp!,{pc}^
   

   sub pc, lr,#4


   END