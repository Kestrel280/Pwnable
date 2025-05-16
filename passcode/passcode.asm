
passcode:     file format elf32-i386


Disassembly of section .interp:

08048194 <.interp>:
 8048194:	2f                   	das
 8048195:	6c                   	ins    BYTE PTR es:[edi],dx
 8048196:	69 62 2f 6c 64 2d 6c 	imul   esp,DWORD PTR [edx+0x2f],0x6c2d646c
 804819d:	69 6e 75 78 2e 73 6f 	imul   ebp,DWORD PTR [esi+0x75],0x6f732e78
 80481a4:	2e 32 00             	xor    al,BYTE PTR cs:[eax]

Disassembly of section .note.gnu.build-id:

080481a8 <.note.gnu.build-id>:
 80481a8:	04 00                	add    al,0x0
 80481aa:	00 00                	add    BYTE PTR [eax],al
 80481ac:	14 00                	adc    al,0x0
 80481ae:	00 00                	add    BYTE PTR [eax],al
 80481b0:	03 00                	add    eax,DWORD PTR [eax]
 80481b2:	00 00                	add    BYTE PTR [eax],al
 80481b4:	47                   	inc    edi
 80481b5:	4e                   	dec    esi
 80481b6:	55                   	push   ebp
 80481b7:	00 e2                	add    dl,ah
 80481b9:	4d                   	dec    ebp
 80481ba:	23 d6                	and    edx,esi
 80481bc:	ba bb fa 73 1a       	mov    edx,0x1a73fabb
 80481c1:	aa                   	stos   BYTE PTR es:[edi],al
 80481c2:	e3 d5                	jecxz  8048199 <__abi_tag-0x33>
 80481c4:	0c 6b                	or     al,0x6b
 80481c6:	b1 c3                	mov    cl,0xc3
 80481c8:	7d c9                	jge    8048193 <__abi_tag-0x39>
 80481ca:	b0 af                	mov    al,0xaf

Disassembly of section .note.ABI-tag:

080481cc <__abi_tag>:
 80481cc:	04 00                	add    al,0x0
 80481ce:	00 00                	add    BYTE PTR [eax],al
 80481d0:	10 00                	adc    BYTE PTR [eax],al
 80481d2:	00 00                	add    BYTE PTR [eax],al
 80481d4:	01 00                	add    DWORD PTR [eax],eax
 80481d6:	00 00                	add    BYTE PTR [eax],al
 80481d8:	47                   	inc    edi
 80481d9:	4e                   	dec    esi
 80481da:	55                   	push   ebp
 80481db:	00 00                	add    BYTE PTR [eax],al
 80481dd:	00 00                	add    BYTE PTR [eax],al
 80481df:	00 03                	add    BYTE PTR [ebx],al
 80481e1:	00 00                	add    BYTE PTR [eax],al
 80481e3:	00 02                	add    BYTE PTR [edx],al
 80481e5:	00 00                	add    BYTE PTR [eax],al
 80481e7:	00 00                	add    BYTE PTR [eax],al
 80481e9:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .gnu.hash:

080481ec <.gnu.hash>:
 80481ec:	02 00                	add    al,BYTE PTR [eax]
 80481ee:	00 00                	add    BYTE PTR [eax],al
 80481f0:	0d 00 00 00 01       	or     eax,0x1000000
 80481f5:	00 00                	add    BYTE PTR [eax],al
 80481f7:	00 05 00 00 00 20    	add    BYTE PTR ds:0x20000000,al
 80481fd:	20 00                	and    BYTE PTR [eax],al
 80481ff:	60                   	pusha
 8048200:	0d 00 00 00 0e       	or     eax,0xe000000
 8048205:	00 00                	add    BYTE PTR [eax],al
 8048207:	00 bf f8 df 0f ad    	add    BYTE PTR [edi-0x52f02008],bh
 804820d:	4b                   	dec    ebx
 804820e:	e3 c0                	jecxz  80481d0 <__abi_tag+0x4>

Disassembly of section .dynsym:

08048210 <.dynsym>:
	...
 8048220:	24 00                	and    al,0x0
	...
 804822a:	00 00                	add    BYTE PTR [eax],al
 804822c:	12 00                	adc    al,BYTE PTR [eax]
 804822e:	00 00                	add    BYTE PTR [eax],al
 8048230:	41                   	inc    ecx
	...
 8048239:	00 00                	add    BYTE PTR [eax],al
 804823b:	00 12                	add    BYTE PTR [edx],dl
 804823d:	00 00                	add    BYTE PTR [eax],al
 804823f:	00 5d 00             	add    BYTE PTR [ebp+0x0],bl
	...
 804824a:	00 00                	add    BYTE PTR [eax],al
 804824c:	12 00                	adc    al,BYTE PTR [eax]
 804824e:	00 00                	add    BYTE PTR [eax],al
 8048250:	6d                   	ins    DWORD PTR es:[edi],dx
	...
 8048259:	00 00                	add    BYTE PTR [eax],al
 804825b:	00 12                	add    BYTE PTR [edx],dl
 804825d:	00 00                	add    BYTE PTR [eax],al
 804825f:	00 55 00             	add    BYTE PTR [ebp+0x0],dl
	...
 804826a:	00 00                	add    BYTE PTR [eax],al
 804826c:	12 00                	adc    al,BYTE PTR [eax]
 804826e:	00 00                	add    BYTE PTR [eax],al
 8048270:	36 00 00             	add    BYTE PTR ss:[eax],al
	...
 804827b:	00 12                	add    BYTE PTR [edx],dl
 804827d:	00 00                	add    BYTE PTR [eax],al
 804827f:	00 4e 00             	add    BYTE PTR [esi+0x0],cl
	...
 804828a:	00 00                	add    BYTE PTR [eax],al
 804828c:	12 00                	adc    al,BYTE PTR [eax]
 804828e:	00 00                	add    BYTE PTR [eax],al
 8048290:	b1 00                	mov    cl,0x0
	...
 804829a:	00 00                	add    BYTE PTR [eax],al
 804829c:	20 00                	and    BYTE PTR [eax],al
 804829e:	00 00                	add    BYTE PTR [eax],al
 80482a0:	1f                   	pop    ds
	...
 80482a9:	00 00                	add    BYTE PTR [eax],al
 80482ab:	00 12                	add    BYTE PTR [edx],dl
 80482ad:	00 00                	add    BYTE PTR [eax],al
 80482af:	00 48 00             	add    BYTE PTR [eax+0x0],cl
	...
 80482ba:	00 00                	add    BYTE PTR [eax],al
 80482bc:	11 00                	adc    DWORD PTR [eax],eax
 80482be:	00 00                	add    BYTE PTR [eax],al
 80482c0:	64 00 00             	add    BYTE PTR fs:[eax],al
	...
 80482cb:	00 12                	add    BYTE PTR [edx],dl
 80482cd:	00 00                	add    BYTE PTR [eax],al
 80482cf:	00 10                	add    BYTE PTR [eax],dl
	...
 80482d9:	00 00                	add    BYTE PTR [eax],al
 80482db:	00 12                	add    BYTE PTR [edx],dl
 80482dd:	00 00                	add    BYTE PTR [eax],al
 80482df:	00 3b                	add    BYTE PTR [ebx],bh
 80482e1:	00 00                	add    BYTE PTR [eax],al
 80482e3:	00 f6                	add    dh,dh
 80482e5:	91                   	xchg   ecx,eax
 80482e6:	04 08                	add    al,0x8
 80482e8:	fc                   	cld
 80482e9:	00 00                	add    BYTE PTR [eax],al
 80482eb:	00 12                	add    BYTE PTR [edx],dl
 80482ed:	00 0d 00 01 00 00    	add    BYTE PTR ds:0x100,cl
 80482f3:	00 04 a0             	add    BYTE PTR [eax+eiz*4],al
 80482f6:	04 08                	add    al,0x8
 80482f8:	04 00                	add    al,0x0
 80482fa:	00 00                	add    BYTE PTR [eax],al
 80482fc:	11 00                	adc    DWORD PTR [eax],eax
 80482fe:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

08048300 <.dynstr>:
 8048300:	00 5f 49             	add    BYTE PTR [edi+0x49],bl
 8048303:	4f                   	dec    edi
 8048304:	5f                   	pop    edi
 8048305:	73 74                	jae    804837b <__abi_tag+0x1af>
 8048307:	64 69 6e 5f 75 73 65 	imul   ebp,DWORD PTR fs:[esi+0x5f],0x64657375
 804830e:	64 
 804830f:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 8048312:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [ebx+0x6f],0x5f393963
 8048319:	73 63                	jae    804837e <__abi_tag+0x1b2>
 804831b:	61                   	popa
 804831c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804831d:	66 00 65 78          	data16 add BYTE PTR [ebp+0x78],ah
 8048321:	69 74 00 5f 5f 6c 69 	imul   esi,DWORD PTR [eax+eax*1+0x5f],0x62696c5f
 8048328:	62 
 8048329:	63 5f 73             	arpl   WORD PTR [edi+0x73],ebx
 804832c:	74 61                	je     804838f <__abi_tag+0x1c3>
 804832e:	72 74                	jb     80483a4 <__abi_tag+0x1d8>
 8048330:	5f                   	pop    edi
 8048331:	6d                   	ins    DWORD PTR es:[edi],dx
 8048332:	61                   	popa
 8048333:	69 6e 00 70 75 74 73 	imul   ebp,DWORD PTR [esi+0x0],0x73747570
 804833a:	00 6c 6f 67          	add    BYTE PTR [edi+ebp*2+0x67],ch
 804833e:	69 6e 00 70 72 69 6e 	imul   ebp,DWORD PTR [esi+0x0],0x6e697270
 8048345:	74 66                	je     80483ad <__abi_tag+0x1e1>
 8048347:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 804834a:	64 69 6e 00 73 79 73 	imul   ebp,DWORD PTR fs:[esi+0x0],0x74737973
 8048351:	74 
 8048352:	65 6d                	gs ins DWORD PTR es:[edi],dx
 8048354:	00 67 65             	add    BYTE PTR [edi+0x65],ah
 8048357:	74 65                	je     80483be <__abi_tag+0x1f2>
 8048359:	67 69 64 00 66 66 6c 	imul   esp,DWORD PTR [si+0x0],0x756c6666
 8048360:	75 
 8048361:	73 68                	jae    80483cb <__abi_tag+0x1ff>
 8048363:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
 8048366:	74 72                	je     80483da <__abi_tag+0x20e>
 8048368:	65 67 69 64 00 5f 5f 	imul   esp,DWORD PTR gs:[si+0x0],0x74735f5f
 804836f:	73 74 
 8048371:	61                   	popa
 8048372:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],ebp
 8048375:	63 68 6b             	arpl   WORD PTR [eax+0x6b],ebp
 8048378:	5f                   	pop    edi
 8048379:	66 61                	popaw
 804837b:	69 6c 00 6c 69 62 63 	imul   ebp,DWORD PTR [eax+eax*1+0x6c],0x2e636269
 8048382:	2e 
 8048383:	73 6f                	jae    80483f4 <__abi_tag+0x228>
 8048385:	2e 36 00 47 4c       	cs add BYTE PTR ss:[edi+0x4c],al
 804838a:	49                   	dec    ecx
 804838b:	42                   	inc    edx
 804838c:	43                   	inc    ebx
 804838d:	5f                   	pop    edi
 804838e:	32 2e                	xor    ch,BYTE PTR [esi]
 8048390:	37                   	aaa
 8048391:	00 47 4c             	add    BYTE PTR [edi+0x4c],al
 8048394:	49                   	dec    ecx
 8048395:	42                   	inc    edx
 8048396:	43                   	inc    ebx
 8048397:	5f                   	pop    edi
 8048398:	32 2e                	xor    ch,BYTE PTR [esi]
 804839a:	34 00                	xor    al,0x0
 804839c:	47                   	inc    edi
 804839d:	4c                   	dec    esp
 804839e:	49                   	dec    ecx
 804839f:	42                   	inc    edx
 80483a0:	43                   	inc    ebx
 80483a1:	5f                   	pop    edi
 80483a2:	32 2e                	xor    ch,BYTE PTR [esi]
 80483a4:	30 00                	xor    BYTE PTR [eax],al
 80483a6:	47                   	inc    edi
 80483a7:	4c                   	dec    esp
 80483a8:	49                   	dec    ecx
 80483a9:	42                   	inc    edx
 80483aa:	43                   	inc    ebx
 80483ab:	5f                   	pop    edi
 80483ac:	32 2e                	xor    ch,BYTE PTR [esi]
 80483ae:	33 34 00             	xor    esi,DWORD PTR [eax+eax*1]
 80483b1:	5f                   	pop    edi
 80483b2:	5f                   	pop    edi
 80483b3:	67 6d                	ins    DWORD PTR es:[di],dx
 80483b5:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80483b6:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80483b7:	5f                   	pop    edi
 80483b8:	73 74                	jae    804842e <__abi_tag+0x262>
 80483ba:	61                   	popa
 80483bb:	72 74                	jb     8048431 <__abi_tag+0x265>
 80483bd:	5f                   	pop    edi
 80483be:	5f                   	pop    edi
	...

Disassembly of section .gnu.version:

080483c0 <.gnu.version>:
 80483c0:	00 00                	add    BYTE PTR [eax],al
 80483c2:	02 00                	add    al,BYTE PTR [eax]
 80483c4:	03 00                	add    eax,DWORD PTR [eax]
 80483c6:	03 00                	add    eax,DWORD PTR [eax]
 80483c8:	04 00                	add    al,0x0
 80483ca:	03 00                	add    eax,DWORD PTR [eax]
 80483cc:	03 00                	add    eax,DWORD PTR [eax]
 80483ce:	03 00                	add    eax,DWORD PTR [eax]
 80483d0:	01 00                	add    DWORD PTR [eax],eax
 80483d2:	03 00                	add    eax,DWORD PTR [eax]
 80483d4:	03 00                	add    eax,DWORD PTR [eax]
 80483d6:	03 00                	add    eax,DWORD PTR [eax]
 80483d8:	05 00 01 00 01       	add    eax,0x1000100
	...

Disassembly of section .gnu.version_r:

080483e0 <.gnu.version_r>:
 80483e0:	01 00                	add    DWORD PTR [eax],eax
 80483e2:	04 00                	add    al,0x0
 80483e4:	7e 00                	jle    80483e6 <__abi_tag+0x21a>
 80483e6:	00 00                	add    BYTE PTR [eax],al
 80483e8:	10 00                	adc    BYTE PTR [eax],al
 80483ea:	00 00                	add    BYTE PTR [eax],al
 80483ec:	00 00                	add    BYTE PTR [eax],al
 80483ee:	00 00                	add    BYTE PTR [eax],al
 80483f0:	17                   	pop    ss
 80483f1:	69 69 0d 00 00 05 00 	imul   ebp,DWORD PTR [ecx+0xd],0x50000
 80483f8:	88 00                	mov    BYTE PTR [eax],al
 80483fa:	00 00                	add    BYTE PTR [eax],al
 80483fc:	10 00                	adc    BYTE PTR [eax],al
 80483fe:	00 00                	add    BYTE PTR [eax],al
 8048400:	14 69                	adc    al,0x69
 8048402:	69 0d 00 00 04 00 92 	imul   ecx,DWORD PTR ds:0x40000,0x92
 8048409:	00 00 00 
 804840c:	10 00                	adc    BYTE PTR [eax],al
 804840e:	00 00                	add    BYTE PTR [eax],al
 8048410:	10 69 69             	adc    BYTE PTR [ecx+0x69],ch
 8048413:	0d 00 00 03 00       	or     eax,0x30000
 8048418:	9c                   	pushf
 8048419:	00 00                	add    BYTE PTR [eax],al
 804841b:	00 10                	add    BYTE PTR [eax],dl
 804841d:	00 00                	add    BYTE PTR [eax],al
 804841f:	00 b4 91 96 06 00 00 	add    BYTE PTR [ecx+edx*4+0x696],dh
 8048426:	02 00                	add    al,BYTE PTR [eax]
 8048428:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
 8048429:	00 00                	add    BYTE PTR [eax],al
 804842b:	00 00                	add    BYTE PTR [eax],al
 804842d:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .rel.dyn:

08048430 <.rel.dyn>:
 8048430:	f8                   	clc
 8048431:	bf 04 08 06 08       	mov    edi,0x8060804
 8048436:	00 00                	add    BYTE PTR [eax],al
 8048438:	fc                   	cld
 8048439:	bf 04 08 06 0a       	mov    edi,0xa060804
	...

Disassembly of section .rel.plt:

08048440 <.rel.plt>:
 8048440:	0c c0                	or     al,0xc0
 8048442:	04 08                	add    al,0x8
 8048444:	07                   	pop    es
 8048445:	01 00                	add    DWORD PTR [eax],eax
 8048447:	00 10                	add    BYTE PTR [eax],dl
 8048449:	c0 04 08 07          	rol    BYTE PTR [eax+ecx*1],0x7
 804844d:	02 00                	add    al,BYTE PTR [eax]
 804844f:	00 14 c0             	add    BYTE PTR [eax+eax*8],dl
 8048452:	04 08                	add    al,0x8
 8048454:	07                   	pop    es
 8048455:	03 00                	add    eax,DWORD PTR [eax]
 8048457:	00 18                	add    BYTE PTR [eax],bl
 8048459:	c0 04 08 07          	rol    BYTE PTR [eax+ecx*1],0x7
 804845d:	04 00                	add    al,0x0
 804845f:	00 1c c0             	add    BYTE PTR [eax+eax*8],bl
 8048462:	04 08                	add    al,0x8
 8048464:	07                   	pop    es
 8048465:	05 00 00 20 c0       	add    eax,0xc0200000
 804846a:	04 08                	add    al,0x8
 804846c:	07                   	pop    es
 804846d:	06                   	push   es
 804846e:	00 00                	add    BYTE PTR [eax],al
 8048470:	24 c0                	and    al,0xc0
 8048472:	04 08                	add    al,0x8
 8048474:	07                   	pop    es
 8048475:	07                   	pop    es
 8048476:	00 00                	add    BYTE PTR [eax],al
 8048478:	28 c0                	sub    al,al
 804847a:	04 08                	add    al,0x8
 804847c:	07                   	pop    es
 804847d:	09 00                	or     DWORD PTR [eax],eax
 804847f:	00 2c c0             	add    BYTE PTR [eax+eax*8],ch
 8048482:	04 08                	add    al,0x8
 8048484:	07                   	pop    es
 8048485:	0b 00                	or     eax,DWORD PTR [eax]
 8048487:	00 30                	add    BYTE PTR [eax],dh
 8048489:	c0 04 08 07          	rol    BYTE PTR [eax+ecx*1],0x7
 804848d:	0c 00                	or     al,0x0
	...

Disassembly of section .init:

08049000 <_init>:
 8049000:	f3 0f 1e fb          	endbr32
 8049004:	53                   	push   ebx
 8049005:	83 ec 08             	sub    esp,0x8
 8049008:	e8 23 01 00 00       	call   8049130 <__x86.get_pc_thunk.bx>
 804900d:	81 c3 f3 2f 00 00    	add    ebx,0x2ff3
 8049013:	8b 83 f8 ff ff ff    	mov    eax,DWORD PTR [ebx-0x8]
 8049019:	85 c0                	test   eax,eax
 804901b:	74 02                	je     804901f <_init+0x1f>
 804901d:	ff d0                	call   eax
 804901f:	83 c4 08             	add    esp,0x8
 8049022:	5b                   	pop    ebx
 8049023:	c3                   	ret

Disassembly of section .plt:

08049030 <__libc_start_main@plt-0x10>:
 8049030:	ff 35 04 c0 04 08    	push   DWORD PTR ds:0x804c004
 8049036:	ff 25 08 c0 04 08    	jmp    DWORD PTR ds:0x804c008
 804903c:	00 00                	add    BYTE PTR [eax],al
	...

08049040 <__libc_start_main@plt>:
 8049040:	ff 25 0c c0 04 08    	jmp    DWORD PTR ds:0x804c00c
 8049046:	68 00 00 00 00       	push   0x0
 804904b:	e9 e0 ff ff ff       	jmp    8049030 <_init+0x30>

08049050 <printf@plt>:
 8049050:	ff 25 10 c0 04 08    	jmp    DWORD PTR ds:0x804c010
 8049056:	68 08 00 00 00       	push   0x8
 804905b:	e9 d0 ff ff ff       	jmp    8049030 <_init+0x30>

08049060 <fflush@plt>:
 8049060:	ff 25 14 c0 04 08    	jmp    DWORD PTR ds:0x804c014
 8049066:	68 10 00 00 00       	push   0x10
 804906b:	e9 c0 ff ff ff       	jmp    8049030 <_init+0x30>

08049070 <__stack_chk_fail@plt>:
 8049070:	ff 25 18 c0 04 08    	jmp    DWORD PTR ds:0x804c018
 8049076:	68 18 00 00 00       	push   0x18
 804907b:	e9 b0 ff ff ff       	jmp    8049030 <_init+0x30>

08049080 <getegid@plt>:
 8049080:	ff 25 1c c0 04 08    	jmp    DWORD PTR ds:0x804c01c
 8049086:	68 20 00 00 00       	push   0x20
 804908b:	e9 a0 ff ff ff       	jmp    8049030 <_init+0x30>

08049090 <puts@plt>:
 8049090:	ff 25 20 c0 04 08    	jmp    DWORD PTR ds:0x804c020
 8049096:	68 28 00 00 00       	push   0x28
 804909b:	e9 90 ff ff ff       	jmp    8049030 <_init+0x30>

080490a0 <system@plt>:
 80490a0:	ff 25 24 c0 04 08    	jmp    DWORD PTR ds:0x804c024
 80490a6:	68 30 00 00 00       	push   0x30
 80490ab:	e9 80 ff ff ff       	jmp    8049030 <_init+0x30>

080490b0 <exit@plt>:
 80490b0:	ff 25 28 c0 04 08    	jmp    DWORD PTR ds:0x804c028
 80490b6:	68 38 00 00 00       	push   0x38
 80490bb:	e9 70 ff ff ff       	jmp    8049030 <_init+0x30>

080490c0 <setregid@plt>:
 80490c0:	ff 25 2c c0 04 08    	jmp    DWORD PTR ds:0x804c02c
 80490c6:	68 40 00 00 00       	push   0x40
 80490cb:	e9 60 ff ff ff       	jmp    8049030 <_init+0x30>

080490d0 <__isoc99_scanf@plt>:
 80490d0:	ff 25 30 c0 04 08    	jmp    DWORD PTR ds:0x804c030
 80490d6:	68 48 00 00 00       	push   0x48
 80490db:	e9 50 ff ff ff       	jmp    8049030 <_init+0x30>

Disassembly of section .text:

080490e0 <_start>:
 80490e0:	f3 0f 1e fb          	endbr32
 80490e4:	31 ed                	xor    ebp,ebp
 80490e6:	5e                   	pop    esi
 80490e7:	89 e1                	mov    ecx,esp
 80490e9:	83 e4 f0             	and    esp,0xfffffff0
 80490ec:	50                   	push   eax
 80490ed:	54                   	push   esp
 80490ee:	52                   	push   edx
 80490ef:	e8 19 00 00 00       	call   804910d <_start+0x2d>
 80490f4:	81 c3 0c 2f 00 00    	add    ebx,0x2f0c
 80490fa:	6a 00                	push   0x0
 80490fc:	6a 00                	push   0x0
 80490fe:	51                   	push   ecx
 80490ff:	56                   	push   esi
 8049100:	c7 c0 64 93 04 08    	mov    eax,0x8049364
 8049106:	50                   	push   eax
 8049107:	e8 34 ff ff ff       	call   8049040 <__libc_start_main@plt>
 804910c:	f4                   	hlt
 804910d:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8049110:	c3                   	ret
 8049111:	66 90                	xchg   ax,ax
 8049113:	66 90                	xchg   ax,ax
 8049115:	66 90                	xchg   ax,ax
 8049117:	66 90                	xchg   ax,ax
 8049119:	66 90                	xchg   ax,ax
 804911b:	66 90                	xchg   ax,ax
 804911d:	66 90                	xchg   ax,ax
 804911f:	90                   	nop

08049120 <_dl_relocate_static_pie>:
 8049120:	f3 0f 1e fb          	endbr32
 8049124:	c3                   	ret
 8049125:	66 90                	xchg   ax,ax
 8049127:	66 90                	xchg   ax,ax
 8049129:	66 90                	xchg   ax,ax
 804912b:	66 90                	xchg   ax,ax
 804912d:	66 90                	xchg   ax,ax
 804912f:	90                   	nop

08049130 <__x86.get_pc_thunk.bx>:
 8049130:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8049133:	c3                   	ret
 8049134:	66 90                	xchg   ax,ax
 8049136:	66 90                	xchg   ax,ax
 8049138:	66 90                	xchg   ax,ax
 804913a:	66 90                	xchg   ax,ax
 804913c:	66 90                	xchg   ax,ax
 804913e:	66 90                	xchg   ax,ax

08049140 <deregister_tm_clones>:
 8049140:	b8 3c c0 04 08       	mov    eax,0x804c03c
 8049145:	3d 3c c0 04 08       	cmp    eax,0x804c03c
 804914a:	74 24                	je     8049170 <deregister_tm_clones+0x30>
 804914c:	b8 00 00 00 00       	mov    eax,0x0
 8049151:	85 c0                	test   eax,eax
 8049153:	74 1b                	je     8049170 <deregister_tm_clones+0x30>
 8049155:	55                   	push   ebp
 8049156:	89 e5                	mov    ebp,esp
 8049158:	83 ec 14             	sub    esp,0x14
 804915b:	68 3c c0 04 08       	push   0x804c03c
 8049160:	ff d0                	call   eax
 8049162:	83 c4 10             	add    esp,0x10
 8049165:	c9                   	leave
 8049166:	c3                   	ret
 8049167:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 804916e:	66 90                	xchg   ax,ax
 8049170:	c3                   	ret
 8049171:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 8049178:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 804917f:	90                   	nop

08049180 <register_tm_clones>:
 8049180:	b8 3c c0 04 08       	mov    eax,0x804c03c
 8049185:	2d 3c c0 04 08       	sub    eax,0x804c03c
 804918a:	89 c2                	mov    edx,eax
 804918c:	c1 e8 1f             	shr    eax,0x1f
 804918f:	c1 fa 02             	sar    edx,0x2
 8049192:	01 d0                	add    eax,edx
 8049194:	d1 f8                	sar    eax,1
 8049196:	74 20                	je     80491b8 <register_tm_clones+0x38>
 8049198:	ba 00 00 00 00       	mov    edx,0x0
 804919d:	85 d2                	test   edx,edx
 804919f:	74 17                	je     80491b8 <register_tm_clones+0x38>
 80491a1:	55                   	push   ebp
 80491a2:	89 e5                	mov    ebp,esp
 80491a4:	83 ec 10             	sub    esp,0x10
 80491a7:	50                   	push   eax
 80491a8:	68 3c c0 04 08       	push   0x804c03c
 80491ad:	ff d2                	call   edx
 80491af:	83 c4 10             	add    esp,0x10
 80491b2:	c9                   	leave
 80491b3:	c3                   	ret
 80491b4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80491b8:	c3                   	ret
 80491b9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

080491c0 <__do_global_dtors_aux>:
 80491c0:	f3 0f 1e fb          	endbr32
 80491c4:	80 3d 3c c0 04 08 00 	cmp    BYTE PTR ds:0x804c03c,0x0
 80491cb:	75 1b                	jne    80491e8 <__do_global_dtors_aux+0x28>
 80491cd:	55                   	push   ebp
 80491ce:	89 e5                	mov    ebp,esp
 80491d0:	83 ec 08             	sub    esp,0x8
 80491d3:	e8 68 ff ff ff       	call   8049140 <deregister_tm_clones>
 80491d8:	c6 05 3c c0 04 08 01 	mov    BYTE PTR ds:0x804c03c,0x1
 80491df:	c9                   	leave
 80491e0:	c3                   	ret
 80491e1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 80491e8:	c3                   	ret
 80491e9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

080491f0 <frame_dummy>:
 80491f0:	f3 0f 1e fb          	endbr32
 80491f4:	eb 8a                	jmp    8049180 <register_tm_clones>

080491f6 <login>:
 80491f6:	55                   	push   ebp
 80491f7:	89 e5                	mov    ebp,esp
 80491f9:	56                   	push   esi
 80491fa:	53                   	push   ebx
 80491fb:	83 ec 10             	sub    esp,0x10
 80491fe:	e8 2d ff ff ff       	call   8049130 <__x86.get_pc_thunk.bx>
 8049203:	81 c3 fd 2d 00 00    	add    ebx,0x2dfd
 8049209:	83 ec 0c             	sub    esp,0xc
 804920c:	8d 83 08 e0 ff ff    	lea    eax,[ebx-0x1ff8]
 8049212:	50                   	push   eax
 8049213:	e8 38 fe ff ff       	call   8049050 <printf@plt>
 8049218:	83 c4 10             	add    esp,0x10
 804921b:	83 ec 08             	sub    esp,0x8
 804921e:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
 8049221:	8d 83 1b e0 ff ff    	lea    eax,[ebx-0x1fe5]
 8049227:	50                   	push   eax
 8049228:	e8 a3 fe ff ff       	call   80490d0 <__isoc99_scanf@plt>
 804922d:	83 c4 10             	add    esp,0x10
 8049230:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8049236:	8b 00                	mov    eax,DWORD PTR [eax]
 8049238:	83 ec 0c             	sub    esp,0xc
 804923b:	50                   	push   eax
 804923c:	e8 1f fe ff ff       	call   8049060 <fflush@plt>
 8049241:	83 c4 10             	add    esp,0x10
 8049244:	83 ec 0c             	sub    esp,0xc
 8049247:	8d 83 1e e0 ff ff    	lea    eax,[ebx-0x1fe2]
 804924d:	50                   	push   eax
 804924e:	e8 fd fd ff ff       	call   8049050 <printf@plt>
 8049253:	83 c4 10             	add    esp,0x10
 8049256:	83 ec 08             	sub    esp,0x8
 8049259:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 804925c:	8d 83 1b e0 ff ff    	lea    eax,[ebx-0x1fe5]
 8049262:	50                   	push   eax
 8049263:	e8 68 fe ff ff       	call   80490d0 <__isoc99_scanf@plt>
 8049268:	83 c4 10             	add    esp,0x10
 804926b:	83 ec 0c             	sub    esp,0xc
 804926e:	8d 83 31 e0 ff ff    	lea    eax,[ebx-0x1fcf]
 8049274:	50                   	push   eax
 8049275:	e8 16 fe ff ff       	call   8049090 <puts@plt>
 804927a:	83 c4 10             	add    esp,0x10
 804927d:	81 7d f0 40 e2 01 00 	cmp    DWORD PTR [ebp-0x10],0x1e240
 8049284:	75 48                	jne    80492ce <login+0xd8>
 8049286:	81 7d f4 c9 07 cc 00 	cmp    DWORD PTR [ebp-0xc],0xcc07c9
 804928d:	75 3f                	jne    80492ce <login+0xd8>
 804928f:	83 ec 0c             	sub    esp,0xc
 8049292:	8d 83 3d e0 ff ff    	lea    eax,[ebx-0x1fc3]
 8049298:	50                   	push   eax
 8049299:	e8 f2 fd ff ff       	call   8049090 <puts@plt>
 804929e:	83 c4 10             	add    esp,0x10
 80492a1:	e8 da fd ff ff       	call   8049080 <getegid@plt>
 80492a6:	89 c6                	mov    esi,eax
 80492a8:	e8 d3 fd ff ff       	call   8049080 <getegid@plt>
 80492ad:	83 ec 08             	sub    esp,0x8
 80492b0:	56                   	push   esi
 80492b1:	50                   	push   eax
 80492b2:	e8 09 fe ff ff       	call   80490c0 <setregid@plt>
 80492b7:	83 c4 10             	add    esp,0x10
 80492ba:	83 ec 0c             	sub    esp,0xc
 80492bd:	8d 83 47 e0 ff ff    	lea    eax,[ebx-0x1fb9]
 80492c3:	50                   	push   eax
 80492c4:	e8 d7 fd ff ff       	call   80490a0 <system@plt>
 80492c9:	83 c4 10             	add    esp,0x10
 80492cc:	eb 1c                	jmp    80492ea <login+0xf4>
 80492ce:	83 ec 0c             	sub    esp,0xc
 80492d1:	8d 83 55 e0 ff ff    	lea    eax,[ebx-0x1fab]
 80492d7:	50                   	push   eax
 80492d8:	e8 b3 fd ff ff       	call   8049090 <puts@plt>
 80492dd:	83 c4 10             	add    esp,0x10
 80492e0:	83 ec 0c             	sub    esp,0xc
 80492e3:	6a 00                	push   0x0
 80492e5:	e8 c6 fd ff ff       	call   80490b0 <exit@plt>
 80492ea:	90                   	nop
 80492eb:	8d 65 f8             	lea    esp,[ebp-0x8]
 80492ee:	5b                   	pop    ebx
 80492ef:	5e                   	pop    esi
 80492f0:	5d                   	pop    ebp
 80492f1:	c3                   	ret

080492f2 <welcome>:
 80492f2:	55                   	push   ebp
 80492f3:	89 e5                	mov    ebp,esp
 80492f5:	53                   	push   ebx
 80492f6:	83 ec 74             	sub    esp,0x74
 80492f9:	e8 32 fe ff ff       	call   8049130 <__x86.get_pc_thunk.bx>
 80492fe:	81 c3 02 2d 00 00    	add    ebx,0x2d02
 8049304:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 804930a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 804930d:	31 c0                	xor    eax,eax
 804930f:	83 ec 0c             	sub    esp,0xc
 8049312:	8d 83 63 e0 ff ff    	lea    eax,[ebx-0x1f9d]
 8049318:	50                   	push   eax
 8049319:	e8 32 fd ff ff       	call   8049050 <printf@plt>
 804931e:	83 c4 10             	add    esp,0x10
 8049321:	83 ec 08             	sub    esp,0x8
 8049324:	8d 45 90             	lea    eax,[ebp-0x70]
 8049327:	50                   	push   eax
 8049328:	8d 83 75 e0 ff ff    	lea    eax,[ebx-0x1f8b]
 804932e:	50                   	push   eax
 804932f:	e8 9c fd ff ff       	call   80490d0 <__isoc99_scanf@plt>
 8049334:	83 c4 10             	add    esp,0x10
 8049337:	83 ec 08             	sub    esp,0x8
 804933a:	8d 45 90             	lea    eax,[ebp-0x70]
 804933d:	50                   	push   eax
 804933e:	8d 83 7b e0 ff ff    	lea    eax,[ebx-0x1f85]
 8049344:	50                   	push   eax
 8049345:	e8 06 fd ff ff       	call   8049050 <printf@plt>
 804934a:	83 c4 10             	add    esp,0x10
 804934d:	90                   	nop
 804934e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8049351:	65 2b 05 14 00 00 00 	sub    eax,DWORD PTR gs:0x14
 8049358:	74 05                	je     804935f <welcome+0x6d>
 804935a:	e8 61 00 00 00       	call   80493c0 <__stack_chk_fail_local>
 804935f:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 8049362:	c9                   	leave
 8049363:	c3                   	ret

08049364 <main>:
 8049364:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 8049368:	83 e4 f0             	and    esp,0xfffffff0
 804936b:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 804936e:	55                   	push   ebp
 804936f:	89 e5                	mov    ebp,esp
 8049371:	53                   	push   ebx
 8049372:	51                   	push   ecx
 8049373:	e8 b8 fd ff ff       	call   8049130 <__x86.get_pc_thunk.bx>
 8049378:	81 c3 88 2c 00 00    	add    ebx,0x2c88
 804937e:	83 ec 0c             	sub    esp,0xc
 8049381:	8d 83 88 e0 ff ff    	lea    eax,[ebx-0x1f78]
 8049387:	50                   	push   eax
 8049388:	e8 03 fd ff ff       	call   8049090 <puts@plt>
 804938d:	83 c4 10             	add    esp,0x10
 8049390:	e8 5d ff ff ff       	call   80492f2 <welcome>
 8049395:	e8 5c fe ff ff       	call   80491f6 <login>
 804939a:	83 ec 0c             	sub    esp,0xc
 804939d:	8d 83 b0 e0 ff ff    	lea    eax,[ebx-0x1f50]
 80493a3:	50                   	push   eax
 80493a4:	e8 e7 fc ff ff       	call   8049090 <puts@plt>
 80493a9:	83 c4 10             	add    esp,0x10
 80493ac:	b8 00 00 00 00       	mov    eax,0x0
 80493b1:	8d 65 f8             	lea    esp,[ebp-0x8]
 80493b4:	59                   	pop    ecx
 80493b5:	5b                   	pop    ebx
 80493b6:	5d                   	pop    ebp
 80493b7:	8d 61 fc             	lea    esp,[ecx-0x4]
 80493ba:	c3                   	ret
 80493bb:	66 90                	xchg   ax,ax
 80493bd:	66 90                	xchg   ax,ax
 80493bf:	90                   	nop

080493c0 <__stack_chk_fail_local>:
 80493c0:	f3 0f 1e fb          	endbr32
 80493c4:	53                   	push   ebx
 80493c5:	e8 66 fd ff ff       	call   8049130 <__x86.get_pc_thunk.bx>
 80493ca:	81 c3 36 2c 00 00    	add    ebx,0x2c36
 80493d0:	83 ec 08             	sub    esp,0x8
 80493d3:	e8 98 fc ff ff       	call   8049070 <__stack_chk_fail@plt>

Disassembly of section .fini:

080493d8 <_fini>:
 80493d8:	f3 0f 1e fb          	endbr32
 80493dc:	53                   	push   ebx
 80493dd:	83 ec 08             	sub    esp,0x8
 80493e0:	e8 4b fd ff ff       	call   8049130 <__x86.get_pc_thunk.bx>
 80493e5:	81 c3 1b 2c 00 00    	add    ebx,0x2c1b
 80493eb:	83 c4 08             	add    esp,0x8
 80493ee:	5b                   	pop    ebx
 80493ef:	c3                   	ret

Disassembly of section .rodata:

0804a000 <_fp_hw>:
 804a000:	03 00                	add    eax,DWORD PTR [eax]
	...

0804a004 <_IO_stdin_used>:
 804a004:	01 00                	add    DWORD PTR [eax],eax
 804a006:	02 00                	add    al,BYTE PTR [eax]
 804a008:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 804a00a:	74 65                	je     804a071 <_IO_stdin_used+0x6d>
 804a00c:	72 20                	jb     804a02e <_IO_stdin_used+0x2a>
 804a00e:	70 61                	jo     804a071 <_IO_stdin_used+0x6d>
 804a010:	73 73                	jae    804a085 <_IO_stdin_used+0x81>
 804a012:	63 6f 64             	arpl   WORD PTR [edi+0x64],ebp
 804a015:	65 31 20             	xor    DWORD PTR gs:[eax],esp
 804a018:	3a 20                	cmp    ah,BYTE PTR [eax]
 804a01a:	00 25 64 00 65 6e    	add    BYTE PTR ds:0x6e650064,ah
 804a020:	74 65                	je     804a087 <_IO_stdin_used+0x83>
 804a022:	72 20                	jb     804a044 <_IO_stdin_used+0x40>
 804a024:	70 61                	jo     804a087 <_IO_stdin_used+0x83>
 804a026:	73 73                	jae    804a09b <_IO_stdin_used+0x97>
 804a028:	63 6f 64             	arpl   WORD PTR [edi+0x64],ebp
 804a02b:	65 32 20             	xor    ah,BYTE PTR gs:[eax]
 804a02e:	3a 20                	cmp    ah,BYTE PTR [eax]
 804a030:	00 63 68             	add    BYTE PTR [ebx+0x68],ah
 804a033:	65 63 6b 69          	arpl   WORD PTR gs:[ebx+0x69],ebp
 804a037:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804a038:	67 2e 2e 2e 00 4c 6f 	cs cs add BYTE PTR cs:[si+0x6f],cl
 804a03f:	67 69 6e 20 4f 4b 21 	imul   ebp,DWORD PTR [bp+0x20],0x214b4f
 804a046:	00 
 804a047:	2f                   	das
 804a048:	62 69 6e             	bound  ebp,QWORD PTR [ecx+0x6e]
 804a04b:	2f                   	das
 804a04c:	63 61 74             	arpl   WORD PTR [ecx+0x74],esp
 804a04f:	20 66 6c             	and    BYTE PTR [esi+0x6c],ah
 804a052:	61                   	popa
 804a053:	67 00 4c 6f          	add    BYTE PTR [si+0x6f],cl
 804a057:	67 69 6e 20 46 61 69 	imul   ebp,DWORD PTR [bp+0x20],0x6c696146
 804a05e:	6c 
 804a05f:	65 64 21 00          	gs and DWORD PTR fs:[eax],eax
 804a063:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 804a065:	74 65                	je     804a0cc <_IO_stdin_used+0xc8>
 804a067:	72 20                	jb     804a089 <_IO_stdin_used+0x85>
 804a069:	79 6f                	jns    804a0da <_IO_stdin_used+0xd6>
 804a06b:	75 20                	jne    804a08d <_IO_stdin_used+0x89>
 804a06d:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804a06e:	61                   	popa
 804a06f:	6d                   	ins    DWORD PTR es:[edi],dx
 804a070:	65 20 3a             	and    BYTE PTR gs:[edx],bh
 804a073:	20 00                	and    BYTE PTR [eax],al
 804a075:	25 31 30 30 73       	and    eax,0x73303031
 804a07a:	00 57 65             	add    BYTE PTR [edi+0x65],dl
 804a07d:	6c                   	ins    BYTE PTR es:[edi],dx
 804a07e:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
 804a081:	65 20 25 73 21 0a 00 	and    BYTE PTR gs:0xa2173,ah
 804a088:	54                   	push   esp
 804a089:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804a08a:	64 64 6c             	fs fs ins BYTE PTR es:[edi],dx
 804a08d:	65 72 27             	gs jb  804a0b7 <_IO_stdin_used+0xb3>
 804a090:	73 20                	jae    804a0b2 <_IO_stdin_used+0xae>
 804a092:	53                   	push   ebx
 804a093:	65 63 75 72          	arpl   WORD PTR gs:[ebp+0x72],esi
 804a097:	65 20 4c 6f 67       	and    BYTE PTR gs:[edi+ebp*2+0x67],cl
 804a09c:	69 6e 20 53 79 73 74 	imul   ebp,DWORD PTR [esi+0x20],0x74737953
 804a0a3:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804a0a5:	20 31                	and    BYTE PTR [ecx],dh
 804a0a7:	2e 31 20             	xor    DWORD PTR cs:[eax],esp
 804a0aa:	62 65 74             	bound  esp,QWORD PTR [ebp+0x74]
 804a0ad:	61                   	popa
 804a0ae:	2e 00 4e 6f          	add    BYTE PTR cs:[esi+0x6f],cl
 804a0b2:	77 20                	ja     804a0d4 <_IO_stdin_used+0xd0>
 804a0b4:	49                   	dec    ecx
 804a0b5:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 804a0b8:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804a0b9:	20 73 61             	and    BYTE PTR [ebx+0x61],dh
 804a0bc:	66 65 6c             	data16 gs ins BYTE PTR es:[edi],dx
 804a0bf:	79 20                	jns    804a0e1 <_IO_stdin_used+0xdd>
 804a0c1:	74 72                	je     804a135 <__GNU_EH_FRAME_HDR+0x4d>
 804a0c3:	75 73                	jne    804a138 <__GNU_EH_FRAME_HDR+0x50>
 804a0c5:	74 20                	je     804a0e7 <_IO_stdin_used+0xe3>
 804a0c7:	79 6f                	jns    804a138 <__GNU_EH_FRAME_HDR+0x50>
 804a0c9:	75 20                	jne    804a0eb <__GNU_EH_FRAME_HDR+0x3>
 804a0cb:	74 68                	je     804a135 <__GNU_EH_FRAME_HDR+0x4d>
 804a0cd:	61                   	popa
 804a0ce:	74 20                	je     804a0f0 <__GNU_EH_FRAME_HDR+0x8>
 804a0d0:	79 6f                	jns    804a141 <__GNU_EH_FRAME_HDR+0x59>
 804a0d2:	75 20                	jne    804a0f4 <__GNU_EH_FRAME_HDR+0xc>
 804a0d4:	68 61 76 65 20       	push   0x20657661
 804a0d9:	63 72 65             	arpl   WORD PTR [edx+0x65],esi
 804a0dc:	64 65 6e             	fs outs dx,BYTE PTR gs:[esi]
 804a0df:	74 69                	je     804a14a <__GNU_EH_FRAME_HDR+0x62>
 804a0e1:	61                   	popa
 804a0e2:	6c                   	ins    BYTE PTR es:[edi],dx
 804a0e3:	20 3a                	and    BYTE PTR [edx],bh
 804a0e5:	29 00                	sub    DWORD PTR [eax],eax

Disassembly of section .eh_frame_hdr:

0804a0e8 <__GNU_EH_FRAME_HDR>:
 804a0e8:	01 1b                	add    DWORD PTR [ebx],ebx
 804a0ea:	03 3b                	add    edi,DWORD PTR [ebx]
 804a0ec:	40                   	inc    eax
 804a0ed:	00 00                	add    BYTE PTR [eax],al
 804a0ef:	00 07                	add    BYTE PTR [edi],al
 804a0f1:	00 00                	add    BYTE PTR [eax],al
 804a0f3:	00 48 ef             	add    BYTE PTR [eax-0x11],cl
 804a0f6:	ff                   	(bad)
 804a0f7:	ff 84 00 00 00 f8 ef 	inc    DWORD PTR [eax+eax*1-0x10080000]
 804a0fe:	ff                   	(bad)
 804a0ff:	ff 5c 00 00          	call   FWORD PTR [eax+eax*1+0x0]
 804a103:	00 38                	add    BYTE PTR [eax],bh
 804a105:	f0 ff                	lock (bad)
 804a107:	ff 70 00             	push   DWORD PTR [eax+0x0]
 804a10a:	00 00                	add    BYTE PTR [eax],al
 804a10c:	0e                   	push   cs
 804a10d:	f1                   	int1
 804a10e:	ff                   	(bad)
 804a10f:	ff a8 00 00 00 0a    	jmp    FWORD PTR [eax+0xa000000]
 804a115:	f2 ff                	repnz (bad)
 804a117:	ff d0                	call   eax
 804a119:	00 00                	add    BYTE PTR [eax],al
 804a11b:	00 7c f2 ff          	add    BYTE PTR [edx+esi*8-0x1],bh
 804a11f:	ff f4                	push   esp
 804a121:	00 00                	add    BYTE PTR [eax],al
 804a123:	00 d8                	add    al,bl
 804a125:	f2 ff                	repnz (bad)
 804a127:	ff 28                	jmp    FWORD PTR [eax]
 804a129:	01 00                	add    DWORD PTR [eax],eax
	...

Disassembly of section .eh_frame:

0804a12c <__FRAME_END__-0x100>:
 804a12c:	14 00                	adc    al,0x0
 804a12e:	00 00                	add    BYTE PTR [eax],al
 804a130:	00 00                	add    BYTE PTR [eax],al
 804a132:	00 00                	add    BYTE PTR [eax],al
 804a134:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
 804a137:	00 01                	add    BYTE PTR [ecx],al
 804a139:	7c 08                	jl     804a143 <__GNU_EH_FRAME_HDR+0x5b>
 804a13b:	01 1b                	add    DWORD PTR [ebx],ebx
 804a13d:	0c 04                	or     al,0x4
 804a13f:	04 88                	add    al,0x88
 804a141:	01 00                	add    DWORD PTR [eax],eax
 804a143:	00 10                	add    BYTE PTR [eax],dl
 804a145:	00 00                	add    BYTE PTR [eax],al
 804a147:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 804a14a:	00 00                	add    BYTE PTR [eax],al
 804a14c:	94                   	xchg   esp,eax
 804a14d:	ef                   	out    dx,eax
 804a14e:	ff                   	(bad)
 804a14f:	ff 31                	push   DWORD PTR [ecx]
 804a151:	00 00                	add    BYTE PTR [eax],al
 804a153:	00 00                	add    BYTE PTR [eax],al
 804a155:	44                   	inc    esp
 804a156:	07                   	pop    es
 804a157:	08 10                	or     BYTE PTR [eax],dl
 804a159:	00 00                	add    BYTE PTR [eax],al
 804a15b:	00 30                	add    BYTE PTR [eax],dh
 804a15d:	00 00                	add    BYTE PTR [eax],al
 804a15f:	00 c0                	add    al,al
 804a161:	ef                   	out    dx,eax
 804a162:	ff                   	(bad)
 804a163:	ff 05 00 00 00 00    	inc    DWORD PTR ds:0x0
 804a169:	00 00                	add    BYTE PTR [eax],al
 804a16b:	00 20                	add    BYTE PTR [eax],ah
 804a16d:	00 00                	add    BYTE PTR [eax],al
 804a16f:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
 804a173:	00 bc ee ff ff b0 00 	add    BYTE PTR [esi+ebp*8+0xb0ffff],bh
 804a17a:	00 00                	add    BYTE PTR [eax],al
 804a17c:	00 0e                	add    BYTE PTR [esi],cl
 804a17e:	08 46 0e             	or     BYTE PTR [esi+0xe],al
 804a181:	0c 4a                	or     al,0x4a
 804a183:	0f 0b                	ud2
 804a185:	74 04                	je     804a18b <__GNU_EH_FRAME_HDR+0xa3>
 804a187:	78 00                	js     804a189 <__GNU_EH_FRAME_HDR+0xa1>
 804a189:	3f                   	aas
 804a18a:	1a 3b                	sbb    bh,BYTE PTR [ebx]
 804a18c:	2a 32                	sub    dh,BYTE PTR [edx]
 804a18e:	24 22                	and    al,0x22
 804a190:	24 00                	and    al,0x0
 804a192:	00 00                	add    BYTE PTR [eax],al
 804a194:	68 00 00 00 5e       	push   0x5e000000
 804a199:	f0 ff                	lock (bad)
 804a19b:	ff                   	(bad)
 804a19c:	fc                   	cld
 804a19d:	00 00                	add    BYTE PTR [eax],al
 804a19f:	00 00                	add    BYTE PTR [eax],al
 804a1a1:	41                   	inc    ecx
 804a1a2:	0e                   	push   cs
 804a1a3:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 804a1a9:	45                   	inc    ebp
 804a1aa:	86 03                	xchg   BYTE PTR [ebx],al
 804a1ac:	83 04 02 f1          	add    DWORD PTR [edx+eax*1],0xfffffff1
 804a1b0:	c3                   	ret
 804a1b1:	41                   	inc    ecx
 804a1b2:	c6 41 c5 0c          	mov    BYTE PTR [ecx-0x3b],0xc
 804a1b6:	04 04                	add    al,0x4
 804a1b8:	20 00                	and    BYTE PTR [eax],al
 804a1ba:	00 00                	add    BYTE PTR [eax],al
 804a1bc:	90                   	nop
 804a1bd:	00 00                	add    BYTE PTR [eax],al
 804a1bf:	00 32                	add    BYTE PTR [edx],dh
 804a1c1:	f1                   	int1
 804a1c2:	ff                   	(bad)
 804a1c3:	ff 72 00             	push   DWORD PTR [edx+0x0]
 804a1c6:	00 00                	add    BYTE PTR [eax],al
 804a1c8:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 804a1cb:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 804a1d1:	44                   	inc    esp
 804a1d2:	83 03 02             	add    DWORD PTR [ebx],0x2
 804a1d5:	6a c5                	push   0xffffffc5
 804a1d7:	c3                   	ret
 804a1d8:	0c 04                	or     al,0x4
 804a1da:	04 00                	add    al,0x0
 804a1dc:	30 00                	xor    BYTE PTR [eax],al
 804a1de:	00 00                	add    BYTE PTR [eax],al
 804a1e0:	b4 00                	mov    ah,0x0
 804a1e2:	00 00                	add    BYTE PTR [eax],al
 804a1e4:	80 f1 ff             	xor    cl,0xff
 804a1e7:	ff 57 00             	call   DWORD PTR [edi+0x0]
 804a1ea:	00 00                	add    BYTE PTR [eax],al
 804a1ec:	00 44 0c 01          	add    BYTE PTR [esp+ecx*1+0x1],al
 804a1f0:	00 49 10             	add    BYTE PTR [ecx+0x10],cl
 804a1f3:	05 02 75 00 42       	add    eax,0x42007502
 804a1f8:	0f 03 75 78          	lsl    esi,WORD PTR [ebp+0x78]
 804a1fc:	06                   	push   es
 804a1fd:	10 03                	adc    BYTE PTR [ebx],al
 804a1ff:	02 75 7c             	add    dh,BYTE PTR [ebp+0x7c]
 804a202:	02 42 c1             	add    al,BYTE PTR [edx-0x3f]
 804a205:	0c 01                	or     al,0x1
 804a207:	00 41 c3             	add    BYTE PTR [ecx-0x3d],al
 804a20a:	41                   	inc    ecx
 804a20b:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
 804a20e:	04 04                	add    al,0x4
 804a210:	18 00                	sbb    BYTE PTR [eax],al
 804a212:	00 00                	add    BYTE PTR [eax],al
 804a214:	e8 00 00 00 a8       	call   b004a219 <_end+0xa7ffe1d9>
 804a219:	f1                   	int1
 804a21a:	ff                   	(bad)
 804a21b:	ff 18                	call   FWORD PTR [eax]
 804a21d:	00 00                	add    BYTE PTR [eax],al
 804a21f:	00 00                	add    BYTE PTR [eax],al
 804a221:	45                   	inc    ebp
 804a222:	0e                   	push   cs
 804a223:	08 83 02 4e 0e 10    	or     BYTE PTR [ebx+0x100e4e02],al
 804a229:	00 00                	add    BYTE PTR [eax],al
	...

0804a22c <__FRAME_END__>:
 804a22c:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .init_array:

0804bf08 <__frame_dummy_init_array_entry>:
 804bf08:	f0 91                	lock xchg ecx,eax
 804bf0a:	04 08                	add    al,0x8

Disassembly of section .fini_array:

0804bf0c <__do_global_dtors_aux_fini_array_entry>:
 804bf0c:	c0                   	.byte 0xc0
 804bf0d:	91                   	xchg   ecx,eax
 804bf0e:	04 08                	add    al,0x8

Disassembly of section .dynamic:

0804bf10 <_DYNAMIC>:
 804bf10:	01 00                	add    DWORD PTR [eax],eax
 804bf12:	00 00                	add    BYTE PTR [eax],al
 804bf14:	7e 00                	jle    804bf16 <_DYNAMIC+0x6>
 804bf16:	00 00                	add    BYTE PTR [eax],al
 804bf18:	0c 00                	or     al,0x0
 804bf1a:	00 00                	add    BYTE PTR [eax],al
 804bf1c:	00 90 04 08 0d 00    	add    BYTE PTR [eax+0xd0804],dl
 804bf22:	00 00                	add    BYTE PTR [eax],al
 804bf24:	d8 93 04 08 19 00    	fcom   DWORD PTR [ebx+0x190804]
 804bf2a:	00 00                	add    BYTE PTR [eax],al
 804bf2c:	08 bf 04 08 1b 00    	or     BYTE PTR [edi+0x1b0804],bh
 804bf32:	00 00                	add    BYTE PTR [eax],al
 804bf34:	04 00                	add    al,0x0
 804bf36:	00 00                	add    BYTE PTR [eax],al
 804bf38:	1a 00                	sbb    al,BYTE PTR [eax]
 804bf3a:	00 00                	add    BYTE PTR [eax],al
 804bf3c:	0c bf                	or     al,0xbf
 804bf3e:	04 08                	add    al,0x8
 804bf40:	1c 00                	sbb    al,0x0
 804bf42:	00 00                	add    BYTE PTR [eax],al
 804bf44:	04 00                	add    al,0x0
 804bf46:	00 00                	add    BYTE PTR [eax],al
 804bf48:	f5                   	cmc
 804bf49:	fe                   	(bad)
 804bf4a:	ff 6f ec             	jmp    FWORD PTR [edi-0x14]
 804bf4d:	81 04 08 05 00 00 00 	add    DWORD PTR [eax+ecx*1],0x5
 804bf54:	00 83 04 08 06 00    	add    BYTE PTR [ebx+0x60804],al
 804bf5a:	00 00                	add    BYTE PTR [eax],al
 804bf5c:	10 82 04 08 0a 00    	adc    BYTE PTR [edx+0xa0804],al
 804bf62:	00 00                	add    BYTE PTR [eax],al
 804bf64:	c0 00 00             	rol    BYTE PTR [eax],0x0
 804bf67:	00 0b                	add    BYTE PTR [ebx],cl
 804bf69:	00 00                	add    BYTE PTR [eax],al
 804bf6b:	00 10                	add    BYTE PTR [eax],dl
 804bf6d:	00 00                	add    BYTE PTR [eax],al
 804bf6f:	00 15 00 00 00 00    	add    BYTE PTR ds:0x0,dl
 804bf75:	00 00                	add    BYTE PTR [eax],al
 804bf77:	00 03                	add    BYTE PTR [ebx],al
 804bf79:	00 00                	add    BYTE PTR [eax],al
 804bf7b:	00 00                	add    BYTE PTR [eax],al
 804bf7d:	c0 04 08 02          	rol    BYTE PTR [eax+ecx*1],0x2
 804bf81:	00 00                	add    BYTE PTR [eax],al
 804bf83:	00 50 00             	add    BYTE PTR [eax+0x0],dl
 804bf86:	00 00                	add    BYTE PTR [eax],al
 804bf88:	14 00                	adc    al,0x0
 804bf8a:	00 00                	add    BYTE PTR [eax],al
 804bf8c:	11 00                	adc    DWORD PTR [eax],eax
 804bf8e:	00 00                	add    BYTE PTR [eax],al
 804bf90:	17                   	pop    ss
 804bf91:	00 00                	add    BYTE PTR [eax],al
 804bf93:	00 40 84             	add    BYTE PTR [eax-0x7c],al
 804bf96:	04 08                	add    al,0x8
 804bf98:	11 00                	adc    DWORD PTR [eax],eax
 804bf9a:	00 00                	add    BYTE PTR [eax],al
 804bf9c:	30 84 04 08 12 00 00 	xor    BYTE PTR [esp+eax*1+0x1208],al
 804bfa3:	00 10                	add    BYTE PTR [eax],dl
 804bfa5:	00 00                	add    BYTE PTR [eax],al
 804bfa7:	00 13                	add    BYTE PTR [ebx],dl
 804bfa9:	00 00                	add    BYTE PTR [eax],al
 804bfab:	00 08                	add    BYTE PTR [eax],cl
 804bfad:	00 00                	add    BYTE PTR [eax],al
 804bfaf:	00 fe                	add    dh,bh
 804bfb1:	ff                   	(bad)
 804bfb2:	ff 6f e0             	jmp    FWORD PTR [edi-0x20]
 804bfb5:	83 04 08 ff          	add    DWORD PTR [eax+ecx*1],0xffffffff
 804bfb9:	ff                   	(bad)
 804bfba:	ff 6f 01             	jmp    FWORD PTR [edi+0x1]
 804bfbd:	00 00                	add    BYTE PTR [eax],al
 804bfbf:	00 f0                	add    al,dh
 804bfc1:	ff                   	(bad)
 804bfc2:	ff 6f c0             	jmp    FWORD PTR [edi-0x40]
 804bfc5:	83 04 08 00          	add    DWORD PTR [eax+ecx*1],0x0
	...

Disassembly of section .got:

0804bff8 <.got>:
	...

Disassembly of section .got.plt:

0804c000 <_GLOBAL_OFFSET_TABLE_>:
 804c000:	10 bf 04 08 00 00    	adc    BYTE PTR [edi+0x804],bh
 804c006:	00 00                	add    BYTE PTR [eax],al
 804c008:	00 00                	add    BYTE PTR [eax],al
 804c00a:	00 00                	add    BYTE PTR [eax],al
 804c00c:	46                   	inc    esi
 804c00d:	90                   	nop
 804c00e:	04 08                	add    al,0x8
 804c010:	56                   	push   esi
 804c011:	90                   	nop
 804c012:	04 08                	add    al,0x8
 804c014:	66 90                	xchg   ax,ax
 804c016:	04 08                	add    al,0x8
 804c018:	76 90                	jbe    804bfaa <_DYNAMIC+0x9a>
 804c01a:	04 08                	add    al,0x8
 804c01c:	86 90 04 08 96 90    	xchg   BYTE PTR [eax-0x6f69f7fc],dl
 804c022:	04 08                	add    al,0x8
 804c024:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
 804c025:	90                   	nop
 804c026:	04 08                	add    al,0x8
 804c028:	b6 90                	mov    dh,0x90
 804c02a:	04 08                	add    al,0x8
 804c02c:	c6                   	(bad)
 804c02d:	90                   	nop
 804c02e:	04 08                	add    al,0x8
 804c030:	d6                   	(bad)
 804c031:	90                   	nop
 804c032:	04 08                	add    al,0x8

Disassembly of section .data:

0804c034 <__data_start>:
 804c034:	00 00                	add    BYTE PTR [eax],al
	...

0804c038 <__dso_handle>:
 804c038:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 55 62             	sub    BYTE PTR [ebp+0x62],dl
   8:	75 6e                	jne    78 <__abi_tag-0x8048154>
   a:	74 75                	je     81 <__abi_tag-0x804814b>
   c:	20 31                	and    BYTE PTR [ecx],dh
   e:	31 2e                	xor    DWORD PTR [esi],ebp
  10:	34 2e                	xor    al,0x2e
  12:	30 2d 31 75 62 75    	xor    BYTE PTR ds:0x75627531,ch
  18:	6e                   	outs   dx,BYTE PTR ds:[esi]
  19:	74 75                	je     90 <__abi_tag-0x804813c>
  1b:	31 7e 32             	xor    DWORD PTR [esi+0x32],edi
  1e:	32 2e                	xor    ch,BYTE PTR [esi]
  20:	30 34 29             	xor    BYTE PTR [ecx+ebp*1],dh
  23:	20 31                	and    BYTE PTR [ecx],dh
  25:	31 2e                	xor    DWORD PTR [esi],ebp
  27:	34 2e                	xor    al,0x2e
  29:	30 00                	xor    BYTE PTR [eax],al
