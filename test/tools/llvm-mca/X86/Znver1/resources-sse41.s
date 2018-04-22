# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver1 -instruction-tables < %s | FileCheck %s

blendpd     $11, %xmm0, %xmm2
blendpd     $11, (%rax), %xmm2

blendps     $11, %xmm0, %xmm2
blendps     $11, (%rax), %xmm2

blendvpd    %xmm0, %xmm2
blendvpd    (%rax), %xmm2

blendvps    %xmm0, %xmm2
blendvps    (%rax), %xmm2

dppd        $22, %xmm0, %xmm2
dppd        $22, (%rax), %xmm2

dpps        $22, %xmm0, %xmm2
dpps        $22, (%rax), %xmm2

extractps   $1, %xmm0, %rcx
extractps   $1, %xmm0, (%rax)

insertps    $1, %xmm0, %xmm2
insertps    $1, (%rax), %xmm2

movntdqa    (%rax), %xmm2

mpsadbw     $1, %xmm0, %xmm2
mpsadbw     $1, (%rax), %xmm2

packusdw    %xmm0, %xmm2
packusdw    (%rax), %xmm2

pblendvb    %xmm0, %xmm2
pblendvb    (%rax), %xmm2

pblendw     $11, %xmm0, %xmm2
pblendw     $11, (%rax), %xmm2

pcmpeqq     %xmm0, %xmm2
pcmpeqq     (%rax), %xmm2

pextrb      $1, %xmm0, %ecx
pextrb      $1, %xmm0, (%rax)

pextrd      $1, %xmm0, %ecx
pextrd      $1, %xmm0, (%rax)

pextrq      $1, %xmm0, %rcx
pextrq      $1, %xmm0, (%rax)

pextrw      $1, %xmm0, (%rax)

phminposuw  %xmm0, %xmm2
phminposuw  (%rax), %xmm2

pinsrb      $1, %eax, %xmm1
pinsrb      $1, (%rax), %xmm1

pinsrd      $1, %eax, %xmm1
pinsrd      $1, (%rax), %xmm1

pinsrq      $1, %rax, %xmm1
pinsrq      $1, (%rax), %xmm1

pmaxsb      %xmm0, %xmm2
pmaxsb      (%rax), %xmm2

pmaxsd      %xmm0, %xmm2
pmaxsd      (%rax), %xmm2

pmaxud      %xmm0, %xmm2
pmaxud      (%rax), %xmm2

pmaxuw      %xmm0, %xmm2
pmaxuw      (%rax), %xmm2

pminsb      %xmm0, %xmm2
pminsb      (%rax), %xmm2

pminsd      %xmm0, %xmm2
pminsd      (%rax), %xmm2

pminud      %xmm0, %xmm2
pminud      (%rax), %xmm2

pminuw      %xmm0, %xmm2
pminuw      (%rax), %xmm2

pmovsxbd    %xmm0, %xmm2
pmovsxbd    (%rax), %xmm2

pmovsxbq    %xmm0, %xmm2
pmovsxbq    (%rax), %xmm2

pmovsxbw    %xmm0, %xmm2
pmovsxbw    (%rax), %xmm2

pmovsxdq    %xmm0, %xmm2
pmovsxdq    (%rax), %xmm2

pmovsxwd    %xmm0, %xmm2
pmovsxwd    (%rax), %xmm2

pmovsxwq    %xmm0, %xmm2
pmovsxwq    (%rax), %xmm2

pmovzxbd    %xmm0, %xmm2
pmovzxbd    (%rax), %xmm2

pmovzxbq    %xmm0, %xmm2
pmovzxbq    (%rax), %xmm2

pmovzxbw    %xmm0, %xmm2
pmovzxbw    (%rax), %xmm2

pmovzxdq    %xmm0, %xmm2
pmovzxdq    (%rax), %xmm2

pmovzxwd    %xmm0, %xmm2
pmovzxwd    (%rax), %xmm2

pmovzxwq    %xmm0, %xmm2
pmovzxwq    (%rax), %xmm2

pmuldq      %xmm0, %xmm2
pmuldq      (%rax), %xmm2

pmulld      %xmm0, %xmm2
pmulld      (%rax), %xmm2

ptest       %xmm0, %xmm1
ptest       (%rax), %xmm1

roundpd     $1, %xmm0, %xmm2
roundpd     $1, (%rax), %xmm2

roundps     $1, %xmm0, %xmm2
roundps     $1, (%rax), %xmm2

roundsd     $1, %xmm0, %xmm2
roundsd     $1, (%rax), %xmm2

roundss     $1, %xmm0, %xmm2
roundss     $1, (%rax), %xmm2

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]	Instructions:
# CHECK-NEXT:  1      1     0.50                    	blendpd	$11, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	blendpd	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                    	blendps	$11, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	blendps	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                    	blendvpd	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	blendvpd	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                    	blendvps	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	blendvps	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  1      100    -                      	dppd	$22, %xmm0, %xmm2
# CHECK-NEXT:  1      100    -      *               	dppd	$22, (%rax), %xmm2
# CHECK-NEXT:  1      100    -                      	dpps	$22, %xmm0, %xmm2
# CHECK-NEXT:  1      100    -      *               	dpps	$22, (%rax), %xmm2
# CHECK-NEXT:  2      2     2.00                    	extractps	$1, %xmm0, %ecx
# CHECK-NEXT:  2      5     2.50           *        	extractps	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      1     0.50                    	insertps	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	insertps	$1, (%rax), %xmm2
# CHECK-NEXT:  1      8     0.50    *               	movntdqa	(%rax), %xmm2
# CHECK-NEXT:  1      100    -                      	mpsadbw	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      100    -      *               	mpsadbw	$1, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	packusdw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	packusdw	(%rax), %xmm2
# CHECK-NEXT:  1      1     1.00                    	pblendvb	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     1.00    *               	pblendvb	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.33                    	pblendw	$11, %xmm0, %xmm2
# CHECK-NEXT:  2      8     0.50    *               	pblendw	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pcmpeqq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pcmpeqq	(%rax), %xmm2
# CHECK-NEXT:  1      2     2.00                    	pextrb	$1, %xmm0, %ecx
# CHECK-NEXT:  2      5     3.00           *        	pextrb	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      2     2.00                    	pextrd	$1, %xmm0, %ecx
# CHECK-NEXT:  2      5     3.00           *        	pextrd	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      2     2.00                    	pextrq	$1, %xmm0, %rcx
# CHECK-NEXT:  2      5     3.00           *        	pextrq	$1, %xmm0, (%rax)
# CHECK-NEXT:  2      5     3.00           *        	pextrw	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      4     1.00                    	phminposuw	%xmm0, %xmm2
# CHECK-NEXT:  1      11    1.00    *               	phminposuw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pinsrb	$1, %eax, %xmm1
# CHECK-NEXT:  1      8     0.50    *               	pinsrb	$1, (%rax), %xmm1
# CHECK-NEXT:  1      1     0.25                    	pinsrd	$1, %eax, %xmm1
# CHECK-NEXT:  1      8     0.50    *               	pinsrd	$1, (%rax), %xmm1
# CHECK-NEXT:  1      1     0.25                    	pinsrq	$1, %rax, %xmm1
# CHECK-NEXT:  1      8     0.50    *               	pinsrq	$1, (%rax), %xmm1
# CHECK-NEXT:  1      1     0.25                    	pmaxsb	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmaxsb	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmaxsd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmaxsd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmaxud	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmaxud	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmaxuw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmaxuw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pminsb	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pminsb	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pminsd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pminsd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pminud	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pminud	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pminuw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pminuw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxbd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxbd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxbq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxbq	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxbw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxbw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxdq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxdq	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxwd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxwd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovsxwq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovsxwq	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxbd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxbd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxbq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxbq	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxbw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxbw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxdq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxdq	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxwd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxwd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                    	pmovzxwq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *               	pmovzxwq	(%rax), %xmm2
# CHECK-NEXT:  1      4     1.00                    	pmuldq	%xmm0, %xmm2
# CHECK-NEXT:  1      11    1.00    *               	pmuldq	(%rax), %xmm2
# CHECK-NEXT:  1      4     1.00                    	pmulld	%xmm0, %xmm2
# CHECK-NEXT:  2      11    1.00    *               	pmulld	(%rax), %xmm2
# CHECK-NEXT:  1      1     1.00                    	ptest	%xmm0, %xmm1
# CHECK-NEXT:  2      8     1.00    *               	ptest	(%rax), %xmm1
# CHECK-NEXT:  1      4     1.00                    	roundpd	$1, %xmm0, %xmm2
# CHECK-NEXT:  2      11    1.00    *               	roundpd	$1, (%rax), %xmm2
# CHECK-NEXT:  1      4     1.00                    	roundps	$1, %xmm0, %xmm2
# CHECK-NEXT:  2      11    1.00    *               	roundps	$1, (%rax), %xmm2
# CHECK-NEXT:  1      4     1.00                    	roundsd	$1, %xmm0, %xmm2
# CHECK-NEXT:  2      11    1.00    *               	roundsd	$1, (%rax), %xmm2
# CHECK-NEXT:  1      4     1.00                    	roundss	$1, %xmm0, %xmm2
# CHECK-NEXT:  2      11    1.00    *               	roundss	$1, (%rax), %xmm2

# CHECK:      Resources:
# CHECK-NEXT: [0] - ZnAGU0
# CHECK-NEXT: [1] - ZnAGU1
# CHECK-NEXT: [2] - ZnALU0
# CHECK-NEXT: [3] - ZnALU1
# CHECK-NEXT: [4] - ZnALU2
# CHECK-NEXT: [5] - ZnALU3
# CHECK-NEXT: [6] - ZnDivider
# CHECK-NEXT: [7] - ZnFPU0
# CHECK-NEXT: [8] - ZnFPU1
# CHECK-NEXT: [9] - ZnFPU2
# CHECK-NEXT: [10] - ZnFPU3
# CHECK-NEXT: [11] - ZnMultiplier

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]
# CHECK-NEXT: 25.00  25.00   -      -      -      -      -     25.17  26.67  44.00  21.17   -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   	Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     0.50   0.50    -      -      -     	blendpd	$11, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.50   0.50    -      -      -     	blendpd	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.50   0.50    -      -      -     	blendps	$11, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.50   0.50    -      -      -     	blendps	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.50   0.50    -      -      -     	blendvpd	%xmm0, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.50   0.50    -      -      -     	blendvpd	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.50   0.50    -      -      -     	blendvps	%xmm0, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.50   0.50    -      -      -     	blendvps	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	dppd	$22, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	dppd	$22, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	dpps	$22, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	dpps	$22, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   2.50    -      -     	extractps	$1, %xmm0, %ecx
# CHECK-NEXT: 2.50   2.50    -      -      -      -      -      -     0.50   2.50    -      -     	extractps	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     	insertps	$1, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     0.50   0.50    -      -     	insertps	$1, (%rax), %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -      -      -      -      -     	movntdqa	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	mpsadbw	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     	mpsadbw	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	packusdw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	packusdw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00    -      -      -      -     	pblendvb	%xmm0, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     1.00    -      -      -      -     	pblendvb	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.33   0.33    -     0.33    -     	pblendw	$11, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.33   0.33    -     0.33    -     	pblendw	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pcmpeqq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pcmpeqq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   2.50    -      -     	pextrb	$1, %xmm0, %ecx
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     1.00   4.00    -      -     	pextrb	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   2.50    -      -     	pextrd	$1, %xmm0, %ecx
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     1.00   4.00    -      -     	pextrd	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   2.50    -      -     	pextrq	$1, %xmm0, %rcx
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     1.00   4.00    -      -     	pextrq	$1, %xmm0, (%rax)
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     1.00   4.00    -      -     	pextrw	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00    -      -      -      -     	phminposuw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     1.00    -      -      -      -     	phminposuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrb	$1, %eax, %xmm1
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrb	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrd	$1, %eax, %xmm1
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrd	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrq	$1, %rax, %xmm1
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pinsrq	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxsb	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxsb	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxsd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxsd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxud	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxud	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxuw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmaxuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminsb	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminsb	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminsd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminsd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminud	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminud	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminuw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pminuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxbw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxdq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxdq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxwd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxwd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxwq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovsxwq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbw	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxbw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxdq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxdq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxwd	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxwd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxwq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     0.25   0.25   0.25   0.25    -     	pmovzxwq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00    -      -      -      -     	pmuldq	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     1.00    -      -      -      -     	pmuldq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00    -      -      -      -     	pmulld	%xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -     1.00    -      -      -      -     	pmulld	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -     	ptest	%xmm0, %xmm1
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -     1.00   1.00    -      -     	ptest	(%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     1.00    -     	roundpd	$1, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -      -      -     1.00    -     	roundpd	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     1.00    -     	roundps	$1, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -      -      -     1.00    -     	roundps	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     1.00    -     	roundsd	$1, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -      -      -     1.00    -     	roundsd	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     1.00    -     	roundss	$1, %xmm0, %xmm2
# CHECK-NEXT: 0.50   0.50    -      -      -      -      -      -      -      -     1.00    -     	roundss	$1, (%rax), %xmm2

