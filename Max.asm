// Given two numbers stored in the registers R0 and R1,
// compute the maximum between them and store it in the R2 register.
// Source: https://github.com/aalhour/Assembler.hack

  @R0
  D=M              // D = first number
  @R1
  D=D-M            // D = first number - second number
  @OUTPUT_FIRST
  D;JGT            // if D>0 (first is greater) goto output_first
  @R1
  D=M              // D = second number
  @OUTPUT_D
  0;JMP            // goto output_d

(OUTPUT_FIRST)
  @R0             
  D=M              // D = first number

(OUTPUT_D)
  @R2
  M=D              // M[2] = D (greatest number)

(INFINITE_LOOP)    // possibly add in some indication when the loop ends, like all bars flash green
  @INFINITE_LOOP
  0;JMP            // infinite loop
