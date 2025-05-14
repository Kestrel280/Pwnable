
horcruxes:     file format elf32-i386


Disassembly of section .init:

08041000 <_init>:
 8041000:	endbr32
 8041004:	push   ebx
 8041005:	sub    esp,0x8
 8041008:	call   80411a0 <__x86.get_pc_thunk.bx>
 804100d:	add    ebx,0x2f83
 8041013:	mov    eax,DWORD PTR [ebx+0x5c]
 8041019:	test   eax,eax
 804101b:	je     804101f <_init+0x1f>
 804101d:	call   eax
 804101f:	add    esp,0x8
 8041022:	pop    ebx
 8041023:	ret

Disassembly of section .plt:

08041030 <seccomp_init@plt-0x10>:
 8041030:	push   DWORD PTR [ebx+0x4]
 8041036:	jmp    DWORD PTR [ebx+0x8]
 804103c:	add    BYTE PTR [eax],al
	...

08041040 <seccomp_init@plt>:
 8041040:	jmp    DWORD PTR [ebx+0xc]
 8041046:	push   0x0
 804104b:	jmp    8041030 <_init+0x30>

08041050 <__libc_start_main@plt>:
 8041050:	jmp    DWORD PTR [ebx+0x10]
 8041056:	push   0x8
 804105b:	jmp    8041030 <_init+0x30>

08041060 <read@plt>:
 8041060:	jmp    DWORD PTR [ebx+0x14]
 8041066:	push   0x10
 804106b:	jmp    8041030 <_init+0x30>

08041070 <printf@plt>:
 8041070:	jmp    DWORD PTR [ebx+0x18]
 8041076:	push   0x18
 804107b:	jmp    8041030 <_init+0x30>

08041080 <gets@plt>:
 8041080:	jmp    DWORD PTR [ebx+0x1c]
 8041086:	push   0x20
 804108b:	jmp    8041030 <_init+0x30>

08041090 <seccomp_rule_add@plt>:
 8041090:	jmp    DWORD PTR [ebx+0x20]
 8041096:	push   0x28
 804109b:	jmp    8041030 <_init+0x30>

080410a0 <getchar@plt>:
 80410a0:	jmp    DWORD PTR [ebx+0x24]
 80410a6:	push   0x30
 80410ab:	jmp    8041030 <_init+0x30>

080410b0 <seccomp_load@plt>:
 80410b0:	jmp    DWORD PTR [ebx+0x28]
 80410b6:	push   0x38
 80410bb:	jmp    8041030 <_init+0x30>

080410c0 <alarm@plt>:
 80410c0:	jmp    DWORD PTR [ebx+0x2c]
 80410c6:	push   0x40
 80410cb:	jmp    8041030 <_init+0x30>

080410d0 <puts@plt>:
 80410d0:	jmp    DWORD PTR [ebx+0x30]
 80410d6:	push   0x48
 80410db:	jmp    8041030 <_init+0x30>

080410e0 <exit@plt>:
 80410e0:	jmp    DWORD PTR [ebx+0x34]
 80410e6:	push   0x50
 80410eb:	jmp    8041030 <_init+0x30>

080410f0 <open@plt>:
 80410f0:	jmp    DWORD PTR [ebx+0x38]
 80410f6:	push   0x58
 80410fb:	jmp    8041030 <_init+0x30>

08041100 <srand@plt>:
 8041100:	jmp    DWORD PTR [ebx+0x3c]
 8041106:	push   0x60
 804110b:	jmp    8041030 <_init+0x30>

08041110 <setvbuf@plt>:
 8041110:	jmp    DWORD PTR [ebx+0x40]
 8041116:	push   0x68
 804111b:	jmp    8041030 <_init+0x30>

08041120 <rand@plt>:
 8041120:	jmp    DWORD PTR [ebx+0x44]
 8041126:	push   0x70
 804112b:	jmp    8041030 <_init+0x30>

08041130 <__isoc99_scanf@plt>:
 8041130:	jmp    DWORD PTR [ebx+0x48]
 8041136:	push   0x78
 804113b:	jmp    8041030 <_init+0x30>

08041140 <atoi@plt>:
 8041140:	jmp    DWORD PTR [ebx+0x4c]
 8041146:	push   0x80
 804114b:	jmp    8041030 <_init+0x30>

08041150 <close@plt>:
 8041150:	jmp    DWORD PTR [ebx+0x50]
 8041156:	push   0x88
 804115b:	jmp    8041030 <_init+0x30>

Disassembly of section .plt.got:

08041160 <__cxa_finalize@plt>:
 8041160:	jmp    DWORD PTR [ebx+0x58]
 8041166:	xchg   ax,ax

Disassembly of section .text:

08041170 <_start>:
 8041170:	endbr32
 8041174:	xor    ebp,ebp
 8041176:	pop    esi
 8041177:	mov    ecx,esp
 8041179:	and    esp,0xfffffff0
 804117c:	push   eax
 804117d:	push   esp
 804117e:	push   edx
 804117f:	call   804119c <_start+0x2c>
 8041184:	add    ebx,0x2e0c
 804118a:	push   0x0
 804118c:	push   0x0
 804118e:	push   ecx
 804118f:	push   esi
 8041190:	push   DWORD PTR [ebx+0x68]
 8041196:	call   8041050 <__libc_start_main@plt>
 804119b:	hlt
 804119c:	mov    ebx,DWORD PTR [esp]
 804119f:	ret

080411a0 <__x86.get_pc_thunk.bx>:
 80411a0:	mov    ebx,DWORD PTR [esp]
 80411a3:	ret
 80411a4:	xchg   ax,ax
 80411a6:	xchg   ax,ax
 80411a8:	xchg   ax,ax
 80411aa:	xchg   ax,ax
 80411ac:	xchg   ax,ax
 80411ae:	xchg   ax,ax

080411b0 <deregister_tm_clones>:
 80411b0:	call   8041299 <__x86.get_pc_thunk.dx>
 80411b5:	add    edx,0x2ddb
 80411bb:	lea    ecx,[edx+0x78]
 80411c1:	lea    eax,[edx+0x78]
 80411c7:	cmp    eax,ecx
 80411c9:	je     80411e8 <deregister_tm_clones+0x38>
 80411cb:	mov    eax,DWORD PTR [edx+0x54]
 80411d1:	test   eax,eax
 80411d3:	je     80411e8 <deregister_tm_clones+0x38>
 80411d5:	push   ebp
 80411d6:	mov    ebp,esp
 80411d8:	sub    esp,0x14
 80411db:	push   ecx
 80411dc:	call   eax
 80411de:	add    esp,0x10
 80411e1:	leave
 80411e2:	ret
 80411e3:	lea    esi,[esi+eiz*1+0x0]
 80411e7:	nop
 80411e8:	ret
 80411e9:	lea    esi,[esi+eiz*1+0x0]

080411f0 <register_tm_clones>:
 80411f0:	call   8041299 <__x86.get_pc_thunk.dx>
 80411f5:	add    edx,0x2d9b
 80411fb:	push   ebp
 80411fc:	mov    ebp,esp
 80411fe:	push   ebx
 80411ff:	lea    ecx,[edx+0x78]
 8041205:	lea    eax,[edx+0x78]
 804120b:	sub    esp,0x4
 804120e:	sub    eax,ecx
 8041210:	mov    ebx,eax
 8041212:	shr    eax,0x1f
 8041215:	sar    ebx,0x2
 8041218:	add    eax,ebx
 804121a:	sar    eax,1
 804121c:	je     8041232 <register_tm_clones+0x42>
 804121e:	mov    edx,DWORD PTR [edx+0x6c]
 8041224:	test   edx,edx
 8041226:	je     8041232 <register_tm_clones+0x42>
 8041228:	sub    esp,0x8
 804122b:	push   eax
 804122c:	push   ecx
 804122d:	call   edx
 804122f:	add    esp,0x10
 8041232:	mov    ebx,DWORD PTR [ebp-0x4]
 8041235:	leave
 8041236:	ret
 8041237:	lea    esi,[esi+eiz*1+0x0]
 804123e:	xchg   ax,ax

08041240 <__do_global_dtors_aux>:
 8041240:	endbr32
 8041244:	push   ebp
 8041245:	mov    ebp,esp
 8041247:	push   ebx
 8041248:	call   80411a0 <__x86.get_pc_thunk.bx>
 804124d:	add    ebx,0x2d43
 8041253:	sub    esp,0x4
 8041256:	cmp    BYTE PTR [ebx+0x78],0x0
 804125d:	jne    8041286 <__do_global_dtors_aux+0x46>
 804125f:	mov    eax,DWORD PTR [ebx+0x58]
 8041265:	test   eax,eax
 8041267:	je     804127a <__do_global_dtors_aux+0x3a>
 8041269:	sub    esp,0xc
 804126c:	push   DWORD PTR [ebx+0x74]
 8041272:	call   8041160 <__cxa_finalize@plt>
 8041277:	add    esp,0x10
 804127a:	call   80411b0 <deregister_tm_clones>
 804127f:	mov    BYTE PTR [ebx+0x78],0x1
 8041286:	mov    ebx,DWORD PTR [ebp-0x4]
 8041289:	leave
 804128a:	ret
 804128b:	lea    esi,[esi+eiz*1+0x0]
 804128f:	nop

08041290 <frame_dummy>:
 8041290:	endbr32
 8041294:	jmp    80411f0 <register_tm_clones>

08041299 <__x86.get_pc_thunk.dx>:
 8041299:	mov    edx,DWORD PTR [esp]
 804129c:	ret

0804129d <A>:
 804129d:	push   ebp
 804129e:	mov    ebp,esp
 80412a0:	push   ebx
 80412a1:	sub    esp,0x4
 80412a4:	call   80418a2 <__x86.get_pc_thunk.ax>
 80412a9:	add    eax,0x2ce7
 80412ae:	mov    edx,DWORD PTR [eax+0x7c]
 80412b4:	sub    esp,0x8
 80412b7:	push   edx
 80412b8:	lea    edx,[eax-0x1f88]
 80412be:	push   edx
 80412bf:	mov    ebx,eax
 80412c1:	call   8041070 <printf@plt>
 80412c6:	add    esp,0x10
 80412c9:	nop
 80412ca:	mov    ebx,DWORD PTR [ebp-0x4]
 80412cd:	leave
 80412ce:	ret

080412cf <B>:
 80412cf:	push   ebp
 80412d0:	mov    ebp,esp
 80412d2:	push   ebx
 80412d3:	sub    esp,0x4
 80412d6:	call   80418a2 <__x86.get_pc_thunk.ax>
 80412db:	add    eax,0x2cb5
 80412e0:	mov    edx,DWORD PTR [eax+0x80]
 80412e6:	sub    esp,0x8
 80412e9:	push   edx
 80412ea:	lea    edx,[eax-0x1f5c]
 80412f0:	push   edx
 80412f1:	mov    ebx,eax
 80412f3:	call   8041070 <printf@plt>
 80412f8:	add    esp,0x10
 80412fb:	nop
 80412fc:	mov    ebx,DWORD PTR [ebp-0x4]
 80412ff:	leave
 8041300:	ret

08041301 <C>:
 8041301:	push   ebp
 8041302:	mov    ebp,esp
 8041304:	push   ebx
 8041305:	sub    esp,0x4
 8041308:	call   80418a2 <__x86.get_pc_thunk.ax>
 804130d:	add    eax,0x2c83
 8041312:	mov    edx,DWORD PTR [eax+0x84]
 8041318:	sub    esp,0x8
 804131b:	push   edx
 804131c:	lea    edx,[eax-0x1f30]
 8041322:	push   edx
 8041323:	mov    ebx,eax
 8041325:	call   8041070 <printf@plt>
 804132a:	add    esp,0x10
 804132d:	nop
 804132e:	mov    ebx,DWORD PTR [ebp-0x4]
 8041331:	leave
 8041332:	ret

08041333 <D>:
 8041333:	push   ebp
 8041334:	mov    ebp,esp
 8041336:	push   ebx
 8041337:	sub    esp,0x4
 804133a:	call   80418a2 <__x86.get_pc_thunk.ax>
 804133f:	add    eax,0x2c51
 8041344:	mov    edx,DWORD PTR [eax+0x88]
 804134a:	sub    esp,0x8
 804134d:	push   edx
 804134e:	lea    edx,[eax-0x1f00]
 8041354:	push   edx
 8041355:	mov    ebx,eax
 8041357:	call   8041070 <printf@plt>
 804135c:	add    esp,0x10
 804135f:	nop
 8041360:	mov    ebx,DWORD PTR [ebp-0x4]
 8041363:	leave
 8041364:	ret

08041365 <E>:
 8041365:	push   ebp
 8041366:	mov    ebp,esp
 8041368:	push   ebx
 8041369:	sub    esp,0x4
 804136c:	call   80418a2 <__x86.get_pc_thunk.ax>
 8041371:	add    eax,0x2c1f
 8041376:	mov    edx,DWORD PTR [eax+0x8c]
 804137c:	sub    esp,0x8
 804137f:	push   edx
 8041380:	lea    edx,[eax-0x1ecc]
 8041386:	push   edx
 8041387:	mov    ebx,eax
 8041389:	call   8041070 <printf@plt>
 804138e:	add    esp,0x10
 8041391:	nop
 8041392:	mov    ebx,DWORD PTR [ebp-0x4]
 8041395:	leave
 8041396:	ret

08041397 <F>:
 8041397:	push   ebp
 8041398:	mov    ebp,esp
 804139a:	push   ebx
 804139b:	sub    esp,0x4
 804139e:	call   80418a2 <__x86.get_pc_thunk.ax>
 80413a3:	add    eax,0x2bed
 80413a8:	mov    edx,DWORD PTR [eax+0x90]
 80413ae:	sub    esp,0x8
 80413b1:	push   edx
 80413b2:	lea    edx,[eax-0x1e98]
 80413b8:	push   edx
 80413b9:	mov    ebx,eax
 80413bb:	call   8041070 <printf@plt>
 80413c0:	add    esp,0x10
 80413c3:	nop
 80413c4:	mov    ebx,DWORD PTR [ebp-0x4]
 80413c7:	leave
 80413c8:	ret

080413c9 <G>:
 80413c9:	push   ebp
 80413ca:	mov    ebp,esp
 80413cc:	push   ebx
 80413cd:	sub    esp,0x4
 80413d0:	call   80418a2 <__x86.get_pc_thunk.ax>
 80413d5:	add    eax,0x2bbb
 80413da:	mov    edx,DWORD PTR [eax+0x94]
 80413e0:	sub    esp,0x8
 80413e3:	push   edx
 80413e4:	lea    edx,[eax-0x1e70]
 80413ea:	push   edx
 80413eb:	mov    ebx,eax
 80413ed:	call   8041070 <printf@plt>
 80413f2:	add    esp,0x10
 80413f5:	nop
 80413f6:	mov    ebx,DWORD PTR [ebp-0x4]
 80413f9:	leave
 80413fa:	ret

080413fb <main>:
 80413fb:	lea    ecx,[esp+0x4]
 80413ff:	and    esp,0xfffffff0
 8041402:	push   DWORD PTR [ecx-0x4]
 8041405:	push   ebp
 8041406:	mov    ebp,esp
 8041408:	push   ebx
 8041409:	push   ecx
 804140a:	sub    esp,0x10
 804140d:	call   80411a0 <__x86.get_pc_thunk.bx>
 8041412:	add    ebx,0x2b7e
 8041418:	mov    eax,DWORD PTR [ebx+0x64]
 804141e:	mov    eax,DWORD PTR [eax]
 8041420:	push   0x0
 8041422:	push   0x2
 8041424:	push   0x0
 8041426:	push   eax
 8041427:	call   8041110 <setvbuf@plt>
 804142c:	add    esp,0x10
 804142f:	mov    eax,DWORD PTR [ebx+0x60]
 8041435:	mov    eax,DWORD PTR [eax]
 8041437:	push   0x0
 8041439:	push   0x2
 804143b:	push   0x0
 804143d:	push   eax
 804143e:	call   8041110 <setvbuf@plt>
 8041443:	add    esp,0x10
 8041446:	sub    esp,0xc
 8041449:	push   0x3c
 804144b:	call   80410c0 <alarm@plt>
 8041450:	add    esp,0x10
 8041453:	call   8041866 <hint>
 8041458:	call   8041698 <init_ABCDEFG>
 804145d:	sub    esp,0xc
 8041460:	push   0x0
 8041462:	call   8041040 <seccomp_init@plt>
 8041467:	add    esp,0x10
 804146a:	mov    DWORD PTR [ebp-0xc],eax
 804146d:	push   0x0
 804146f:	push   0xad
 8041474:	push   0x7fff0000
 8041479:	push   DWORD PTR [ebp-0xc]
 804147c:	call   8041090 <seccomp_rule_add@plt>
 8041481:	add    esp,0x10
 8041484:	push   0x0
 8041486:	push   0x5
 8041488:	push   0x7fff0000
 804148d:	push   DWORD PTR [ebp-0xc]
 8041490:	call   8041090 <seccomp_rule_add@plt>
 8041495:	add    esp,0x10
 8041498:	push   0x0
 804149a:	push   0x127
 804149f:	push   0x7fff0000
 80414a4:	push   DWORD PTR [ebp-0xc]
 80414a7:	call   8041090 <seccomp_rule_add@plt>
 80414ac:	add    esp,0x10
 80414af:	push   0x0
 80414b1:	push   0x3
 80414b3:	push   0x7fff0000
 80414b8:	push   DWORD PTR [ebp-0xc]
 80414bb:	call   8041090 <seccomp_rule_add@plt>
 80414c0:	add    esp,0x10
 80414c3:	push   0x0
 80414c5:	push   0x4
 80414c7:	push   0x7fff0000
 80414cc:	push   DWORD PTR [ebp-0xc]
 80414cf:	call   8041090 <seccomp_rule_add@plt>
 80414d4:	add    esp,0x10
 80414d7:	push   0x0
 80414d9:	push   0xfc
 80414de:	push   0x7fff0000
 80414e3:	push   DWORD PTR [ebp-0xc]
 80414e6:	call   8041090 <seccomp_rule_add@plt>
 80414eb:	add    esp,0x10
 80414ee:	sub    esp,0xc
 80414f1:	push   DWORD PTR [ebp-0xc]
 80414f4:	call   80410b0 <seccomp_load@plt>
 80414f9:	add    esp,0x10
 80414fc:	call   804150b <ropme>
 8041501:	lea    esp,[ebp-0x8]
 8041504:	pop    ecx
 8041505:	pop    ebx
 8041506:	pop    ebp
 8041507:	lea    esp,[ecx-0x4]
 804150a:	ret

0804150b <ropme>:
 804150b:	push   ebp
 804150c:	mov    ebp,esp
 804150e:	push   ebx
 804150f:	sub    esp,0x74
 8041512:	call   80411a0 <__x86.get_pc_thunk.bx>
 8041517:	add    ebx,0x2a79
 804151d:	sub    esp,0xc
 8041520:	lea    eax,[ebx-0x1e4c]
 8041526:	push   eax
 8041527:	call   8041070 <printf@plt>
 804152c:	add    esp,0x10
 804152f:	sub    esp,0x8
 8041532:	lea    eax,[ebp-0x10]
 8041535:	push   eax
 8041536:	lea    eax,[ebx-0x1e3f]
 804153c:	push   eax
 804153d:	call   8041130 <__isoc99_scanf@plt>
 8041542:	add    esp,0x10
 8041545:	call   80410a0 <getchar@plt>
 804154a:	mov    edx,DWORD PTR [ebp-0x10]
 804154d:	mov    eax,DWORD PTR [ebx+0x7c]
 8041553:	cmp    edx,eax
 8041555:	jne    8041561 <ropme+0x56>
 8041557:	call   804129d <A>
 804155c:	jmp    804168e <ropme+0x183>
 8041561:	mov    edx,DWORD PTR [ebp-0x10]
 8041564:	mov    eax,DWORD PTR [ebx+0x80]
 804156a:	cmp    edx,eax
 804156c:	jne    8041578 <ropme+0x6d>
 804156e:	call   80412cf <B>
 8041573:	jmp    804168e <ropme+0x183>
 8041578:	mov    edx,DWORD PTR [ebp-0x10]
 804157b:	mov    eax,DWORD PTR [ebx+0x84]
 8041581:	cmp    edx,eax
 8041583:	jne    804158f <ropme+0x84>
 8041585:	call   8041301 <C>
 804158a:	jmp    804168e <ropme+0x183>
 804158f:	mov    edx,DWORD PTR [ebp-0x10]
 8041592:	mov    eax,DWORD PTR [ebx+0x88]
 8041598:	cmp    edx,eax
 804159a:	jne    80415a6 <ropme+0x9b>
 804159c:	call   8041333 <D>
 80415a1:	jmp    804168e <ropme+0x183>
 80415a6:	mov    edx,DWORD PTR [ebp-0x10]
 80415a9:	mov    eax,DWORD PTR [ebx+0x8c]
 80415af:	cmp    edx,eax
 80415b1:	jne    80415bd <ropme+0xb2>
 80415b3:	call   8041365 <E>
 80415b8:	jmp    804168e <ropme+0x183>
 80415bd:	mov    edx,DWORD PTR [ebp-0x10]
 80415c0:	mov    eax,DWORD PTR [ebx+0x90]
 80415c6:	cmp    edx,eax
 80415c8:	jne    80415d4 <ropme+0xc9>
 80415ca:	call   8041397 <F>
 80415cf:	jmp    804168e <ropme+0x183>
 80415d4:	mov    edx,DWORD PTR [ebp-0x10]
 80415d7:	mov    eax,DWORD PTR [ebx+0x94]
 80415dd:	cmp    edx,eax
 80415df:	jne    80415eb <ropme+0xe0>
 80415e1:	call   80413c9 <G>
 80415e6:	jmp    804168e <ropme+0x183>
 80415eb:	sub    esp,0xc
 80415ee:	lea    eax,[ebx-0x1e3c]
 80415f4:	push   eax
 80415f5:	call   8041070 <printf@plt>
 80415fa:	add    esp,0x10
 80415fd:	sub    esp,0xc
 8041600:	lea    eax,[ebp-0x74]
 8041603:	push   eax
 8041604:	call   8041080 <gets@plt>
 8041609:	add    esp,0x10
 804160c:	sub    esp,0xc
 804160f:	lea    eax,[ebp-0x74]
 8041612:	push   eax
 8041613:	call   8041140 <atoi@plt>
 8041618:	add    esp,0x10
 804161b:	mov    edx,DWORD PTR [ebx+0x98]
 8041621:	cmp    eax,edx
 8041623:	jne    804167c <ropme+0x171>
 8041625:	sub    esp,0x8
 8041628:	push   0x0
 804162a:	lea    eax,[ebx-0x1e1c]
 8041630:	push   eax
 8041631:	call   80410f0 <open@plt>
 8041636:	add    esp,0x10
 8041639:	mov    DWORD PTR [ebp-0xc],eax
 804163c:	sub    esp,0x4
 804163f:	push   0x64
 8041641:	lea    eax,[ebp-0x74]
 8041644:	push   eax
 8041645:	push   DWORD PTR [ebp-0xc]
 8041648:	call   8041060 <read@plt>
 804164d:	add    esp,0x10
 8041650:	mov    BYTE PTR [ebp+eax*1-0x74],0x0
 8041655:	sub    esp,0xc
 8041658:	lea    eax,[ebp-0x74]
 804165b:	push   eax
 804165c:	call   80410d0 <puts@plt>
 8041661:	add    esp,0x10
 8041664:	sub    esp,0xc
 8041667:	push   DWORD PTR [ebp-0xc]
 804166a:	call   8041150 <close@plt>
 804166f:	add    esp,0x10
 8041672:	sub    esp,0xc
 8041675:	push   0x0
 8041677:	call   80410e0 <exit@plt>
 804167c:	sub    esp,0xc
 804167f:	lea    eax,[ebx-0x1e00]
 8041685:	push   eax
 8041686:	call   80410d0 <puts@plt>
 804168b:	add    esp,0x10
 804168e:	mov    eax,0x0
 8041693:	mov    ebx,DWORD PTR [ebp-0x4]
 8041696:	leave
 8041697:	ret

08041698 <init_ABCDEFG>:
 8041698:	push   ebp
 8041699:	mov    ebp,esp
 804169b:	push   ebx
 804169c:	sub    esp,0x14
 804169f:	call   80411a0 <__x86.get_pc_thunk.bx>
 80416a4:	add    ebx,0x28ec
 80416aa:	sub    esp,0x8
 80416ad:	push   0x0
 80416af:	lea    eax,[ebx-0x1dcd]
 80416b5:	push   eax
 80416b6:	call   80410f0 <open@plt>
 80416bb:	add    esp,0x10
 80416be:	mov    DWORD PTR [ebp-0xc],eax
 80416c1:	sub    esp,0x4
 80416c4:	push   0x4
 80416c6:	lea    eax,[ebp-0x10]
 80416c9:	push   eax
 80416ca:	push   DWORD PTR [ebp-0xc]
 80416cd:	call   8041060 <read@plt>
 80416d2:	add    esp,0x10
 80416d5:	cmp    eax,0x4
 80416d8:	je     80416f6 <init_ABCDEFG+0x5e>
 80416da:	sub    esp,0xc
 80416dd:	lea    eax,[ebx-0x1dc0]
 80416e3:	push   eax
 80416e4:	call   80410d0 <puts@plt>
 80416e9:	add    esp,0x10
 80416ec:	sub    esp,0xc
 80416ef:	push   0x0
 80416f1:	call   80410e0 <exit@plt>
 80416f6:	sub    esp,0xc
 80416f9:	push   DWORD PTR [ebp-0xc]
 80416fc:	call   8041150 <close@plt>
 8041701:	add    esp,0x10
 8041704:	mov    eax,DWORD PTR [ebp-0x10]
 8041707:	sub    esp,0xc
 804170a:	push   eax
 804170b:	call   8041100 <srand@plt>
 8041710:	add    esp,0x10
 8041713:	call   8041120 <rand@plt>
 8041718:	imul   edx,eax,0xdeadbeef
 804171e:	cmp    edx,0xcafebabe
 8041724:	setae  al
 8041727:	movzx  eax,al
 804172a:	imul   ecx,eax,0xcafebabe
 8041730:	mov    eax,edx
 8041732:	sub    eax,ecx
 8041734:	mov    DWORD PTR [ebx+0x7c],eax
 804173a:	call   8041120 <rand@plt>
 804173f:	imul   edx,eax,0xdeadbeef
 8041745:	cmp    edx,0xcafebabe
 804174b:	setae  al
 804174e:	movzx  eax,al
 8041751:	imul   ecx,eax,0xcafebabe
 8041757:	mov    eax,edx
 8041759:	sub    eax,ecx
 804175b:	mov    DWORD PTR [ebx+0x80],eax
 8041761:	call   8041120 <rand@plt>
 8041766:	imul   edx,eax,0xdeadbeef
 804176c:	cmp    edx,0xcafebabe
 8041772:	setae  al
 8041775:	movzx  eax,al
 8041778:	imul   ecx,eax,0xcafebabe
 804177e:	mov    eax,edx
 8041780:	sub    eax,ecx
 8041782:	mov    DWORD PTR [ebx+0x84],eax
 8041788:	call   8041120 <rand@plt>
 804178d:	imul   edx,eax,0xdeadbeef
 8041793:	cmp    edx,0xcafebabe
 8041799:	setae  al
 804179c:	movzx  eax,al
 804179f:	imul   ecx,eax,0xcafebabe
 80417a5:	mov    eax,edx
 80417a7:	sub    eax,ecx
 80417a9:	mov    DWORD PTR [ebx+0x88],eax
 80417af:	call   8041120 <rand@plt>
 80417b4:	imul   edx,eax,0xdeadbeef
 80417ba:	cmp    edx,0xcafebabe
 80417c0:	setae  al
 80417c3:	movzx  eax,al
 80417c6:	imul   ecx,eax,0xcafebabe
 80417cc:	mov    eax,edx
 80417ce:	sub    eax,ecx
 80417d0:	mov    DWORD PTR [ebx+0x8c],eax
 80417d6:	call   8041120 <rand@plt>
 80417db:	imul   edx,eax,0xdeadbeef
 80417e1:	cmp    edx,0xcafebabe
 80417e7:	setae  al
 80417ea:	movzx  eax,al
 80417ed:	imul   ecx,eax,0xcafebabe
 80417f3:	mov    eax,edx
 80417f5:	sub    eax,ecx
 80417f7:	mov    DWORD PTR [ebx+0x90],eax
 80417fd:	call   8041120 <rand@plt>
 8041802:	imul   edx,eax,0xdeadbeef
 8041808:	cmp    edx,0xcafebabe
 804180e:	setae  al
 8041811:	movzx  eax,al
 8041814:	imul   ecx,eax,0xcafebabe
 804181a:	mov    eax,edx
 804181c:	sub    eax,ecx
 804181e:	mov    DWORD PTR [ebx+0x94],eax
 8041824:	mov    edx,DWORD PTR [ebx+0x7c]
 804182a:	mov    eax,DWORD PTR [ebx+0x80]
 8041830:	add    edx,eax
 8041832:	mov    eax,DWORD PTR [ebx+0x84]
 8041838:	add    edx,eax
 804183a:	mov    eax,DWORD PTR [ebx+0x88]
 8041840:	add    edx,eax
 8041842:	mov    eax,DWORD PTR [ebx+0x8c]
 8041848:	add    edx,eax
 804184a:	mov    eax,DWORD PTR [ebx+0x90]
 8041850:	add    edx,eax
 8041852:	mov    eax,DWORD PTR [ebx+0x94]
 8041858:	add    eax,edx
 804185a:	mov    DWORD PTR [ebx+0x98],eax
 8041860:	nop
 8041861:	mov    ebx,DWORD PTR [ebp-0x4]
 8041864:	leave
 8041865:	ret

08041866 <hint>:
 8041866:	push   ebp
 8041867:	mov    ebp,esp
 8041869:	push   ebx
 804186a:	sub    esp,0x4
 804186d:	call   80411a0 <__x86.get_pc_thunk.bx>
 8041872:	add    ebx,0x271e
 8041878:	sub    esp,0xc
 804187b:	lea    eax,[ebx-0x1dac]
 8041881:	push   eax
 8041882:	call   80410d0 <puts@plt>
 8041887:	add    esp,0x10
 804188a:	sub    esp,0xc
 804188d:	lea    eax,[ebx-0x1d70]
 8041893:	push   eax
 8041894:	call   80410d0 <puts@plt>
 8041899:	add    esp,0x10
 804189c:	nop
 804189d:	mov    ebx,DWORD PTR [ebp-0x4]
 80418a0:	leave
 80418a1:	ret

080418a2 <__x86.get_pc_thunk.ax>:
 80418a2:	mov    eax,DWORD PTR [esp]
 80418a5:	ret

Disassembly of section .fini:

080418a8 <_fini>:
 80418a8:	endbr32
 80418ac:	push   ebx
 80418ad:	sub    esp,0x8
 80418b0:	call   80411a0 <__x86.get_pc_thunk.bx>
 80418b5:	add    ebx,0x26db
 80418bb:	add    esp,0x8
 80418be:	pop    ebx
 80418bf:	ret
