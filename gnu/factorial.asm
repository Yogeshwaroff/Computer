LXI H,8000  
MOV C,M      
MVI B,00     
INX H        
MOV B,M      
CMA          
MOV E,A      
MVI D,00FH   
MOV A,B      
CMA          
MOV D,A      
INX D        
LXI H,0000   
NEXT: DAD B  
SHLD 8010    
LOOP: DAD D  
JNC SKIP     
MOV A,H      
ORA L        
JZ EXIT      
JMP LOOP     
SKIP: LHLD 8010  
JMP NEXT     
EXIT: LHLD 8010  
HLT          
