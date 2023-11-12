# compile c code into assembly
Param(
    $FilePath
)
gcc -S -fverbose-asm -masm=intel -O0 $FilePath