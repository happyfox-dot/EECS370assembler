        lw      0       1       five    load reg1 with 5 (symbolic address)
        lw      0       2       neg1       load reg2 with -1 (numeric address)
        jalr    1       4               this should jail noop into reg4
        noop
        noop
        sw      0       2       five      store reg1 into memory at location 14
start   add     1       2       1       decrement reg1
        beq     0       1       2       goto end of program when reg1==0
        beq     0       0       start   go back to the beginning of the loop
        noop
done    halt                            end of program
five    .fill   5
neg1    .fill   -1
stAddr  .fill   start                   will contain the address of start (2)
