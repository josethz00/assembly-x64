; rsi <- address of label 'codes', a number
mov rsi, codes			

; rsi <- memory contents starting at 'codes' address
; 8 consecutive bytes are taken because rsi is 8 bytes long
; 8 bytes = 64 bits
mov rsi, [codes]		

; rsi <- address of 'codes'
; in this case it is equivalent of mov rsi, codes
; in general the address can contain several components
lea rsi, [codes]        

; rsi <- memory contents starting at (codes+rax)
mov rsi, [codes + rax]	

; rsi <- codes + rax
; equivalent of combination:
; -- mov rsi, codes
; -- add rsi, rax
; Can't do it with a single mov!
; will sum the address of 'codes' and rax
lea rsi, [codes + rax]  