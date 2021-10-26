void func_80086BB8();
void func_8000CDF4();
void func_8000D8D4();
void func_8000D2B4();

#ifdef NON_MATCHING
int main() {
    func_80086BB8();
    func_8000CDF4();
    
    while(1) {
        func_8000D8D4();
        func_8000D2B4();
    }
}
#else
asm void main() {
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mfcr r12
    stw r0, 0x14(r1)
    stw r12, 0xc(r1)
    bl func_80086BB8
    li r0, 0
    cmpwi cr4, r0, 0
    bl func_8000CDF4
lbl_8000F134:
    bl func_8000D8D4
    bl func_8000D2B4
    beq cr4, lbl_8000F134
    li r3, 0
    lwz r0, 0x14(r1)
    lwz r12, 0xc(r1)
    mtlr r0
    mtcrf 8, r12
    addi r1, r1, 0x10
    blr 
}
#endif