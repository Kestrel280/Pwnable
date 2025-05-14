
horcruxes:     file format elf32-i386


Disassembly of section .init:

1000 <_init>:
 1000:	endbr32
 1004:	push   ebx
 1005:	sub    esp,0x8
 1008:	call   80411a0 <__x86.get_pc_thunk.bx>
 100d:	add    ebx,0x2f83
 1013:	mov    eax,DWORD PTR [ebx+0x5c]
 1019:	test   eax,eax
 101b:	je     804101f <_init+0x1f>
 101d:	call   eax
 101f:	add    esp,0x8
 1022:	pop    ebx
 1023:	ret

Disassembly of section .plt:

1030 <seccomp_init@plt-0x10>:
 1030:	push   DWORD PTR [ebx+0x4]
 1036:	jmp    DWORD PTR [ebx+0x8]
 103c:	add    BYTE PTR [eax],al
	...

1040 <seccomp_init@plt>:
 1040:	jmp    DWORD PTR [ebx+0xc]
 1046:	push   0x0
 104b:	jmp    8041030 <_init+0x30>

1050 <__libc_start_main@plt>:
 1050:	jmp    DWORD PTR [ebx+0x10]
 1056:	push   0x8
 105b:	jmp    8041030 <_init+0x30>

1060 <read@plt>:
 1060:	jmp    DWORD PTR [ebx+0x14]
 1066:	push   0x10
 106b:	jmp    8041030 <_init+0x30>

1070 <printf@plt>:
 1070:	jmp    DWORD PTR [ebx+0x18]
 1076:	push   0x18
 107b:	jmp    8041030 <_init+0x30>

1080 <gets@plt>:
 1080:	jmp    DWORD PTR [ebx+0x1c]
 1086:	push   0x20
 108b:	jmp    8041030 <_init+0x30>

1090 <seccomp_rule_add@plt>:
 1090:	jmp    DWORD PTR [ebx+0x20]
 1096:	push   0x28
 109b:	jmp    8041030 <_init+0x30>

10a0 <getchar@plt>:
 10a0:	jmp    DWORD PTR [ebx+0x24]
 10a6:	push   0x30
 10ab:	jmp    8041030 <_init+0x30>

10b0 <seccomp_load@plt>:
 10b0:	jmp    DWORD PTR [ebx+0x28]
 10b6:	push   0x38
 10bb:	jmp    8041030 <_init+0x30>

10c0 <alarm@plt>:
 10c0:	jmp    DWORD PTR [ebx+0x2c]
 10c6:	push   0x40
 10cb:	jmp    8041030 <_init+0x30>

10d0 <puts@plt>:
 10d0:	jmp    DWORD PTR [ebx+0x30]
 10d6:	push   0x48
 10db:	jmp    8041030 <_init+0x30>

10e0 <exit@plt>:
 10e0:	jmp    DWORD PTR [ebx+0x34]
 10e6:	push   0x50
 10eb:	jmp    8041030 <_init+0x30>

10f0 <open@plt>:
 10f0:	jmp    DWORD PTR [ebx+0x38]
 10f6:	push   0x58
 10fb:	jmp    8041030 <_init+0x30>

1100 <srand@plt>:
 1100:	jmp    DWORD PTR [ebx+0x3c]
 1106:	push   0x60
 110b:	jmp    8041030 <_init+0x30>

1110 <setvbuf@plt>:
 1110:	jmp    DWORD PTR [ebx+0x40]
 1116:	push   0x68
 111b:	jmp    8041030 <_init+0x30>

1120 <rand@plt>:
 1120:	jmp    DWORD PTR [ebx+0x44]
 1126:	push   0x70
 112b:	jmp    8041030 <_init+0x30>

1130 <__isoc99_scanf@plt>:
 1130:	jmp    DWORD PTR [ebx+0x48]
 1136:	push   0x78
 113b:	jmp    8041030 <_init+0x30>

1140 <atoi@plt>:
 1140:	jmp    DWORD PTR [ebx+0x4c]
 1146:	push   0x80
 114b:	jmp    8041030 <_init+0x30>

1150 <close@plt>:
 1150:	jmp    DWORD PTR [ebx+0x50]
 1156:	push   0x88
 115b:	jmp    8041030 <_init+0x30>

Disassembly of section .plt.got:

1160 <__cxa_finalize@plt>:
 1160:	jmp    DWORD PTR [ebx+0x58]
 1166:	xchg   ax,ax

Disassembly of section .text:

1170 <_start>:
 1170:	endbr32
 1174:	xor    ebp,ebp
 1176:	pop    esi
 1177:	mov    ecx,esp
 1179:	and    esp,0xfffffff0
 117c:	push   eax
 117d:	push   esp
 117e:	push   edx
 117f:	call   804119c <_start+0x2c>
 1184:	add    ebx,0x2e0c
 118a:	push   0x0
 118c:	push   0x0
 118e:	push   ecx
 118f:	push   esi
 1190:	push   DWORD PTR [ebx+0x68]
 1196:	call   8041050 <__libc_start_main@plt>
 119b:	hlt
 119c:	mov    ebx,DWORD PTR [esp]
 119f:	ret

11a0 <__x86.get_pc_thunk.bx>:
 11a0:	mov    ebx,DWORD PTR [esp]
 11a3:	ret
 11a4:	xchg   ax,ax
 11a6:	xchg   ax,ax
 11a8:	xchg   ax,ax
 11aa:	xchg   ax,ax
 11ac:	xchg   ax,ax
 11ae:	xchg   ax,ax

11b0 <deregister_tm_clones>:
 11b0:	call   8041299 <__x86.get_pc_thunk.dx>
 11b5:	add    edx,0x2ddb
 11bb:	lea    ecx,[edx+0x78]
 11c1:	lea    eax,[edx+0x78]
 11c7:	cmp    eax,ecx
 11c9:	je     80411e8 <deregister_tm_clones+0x38>
 11cb:	mov    eax,DWORD PTR [edx+0x54]
 11d1:	test   eax,eax
 11d3:	je     80411e8 <deregister_tm_clones+0x38>
 11d5:	push   ebp
 11d6:	mov    ebp,esp
 11d8:	sub    esp,0x14
 11db:	push   ecx
 11dc:	call   eax
 11de:	add    esp,0x10
 11e1:	leave
 11e2:	ret
 11e3:	lea    esi,[esi+eiz*1+0x0]
 11e7:	nop
 11e8:	ret
 11e9:	lea    esi,[esi+eiz*1+0x0]

11f0 <register_tm_clones>:
 11f0:	call   8041299 <__x86.get_pc_thunk.dx>
 11f5:	add    edx,0x2d9b
 11fb:	push   ebp
 11fc:	mov    ebp,esp
 11fe:	push   ebx
 11ff:	lea    ecx,[edx+0x78]
 1205:	lea    eax,[edx+0x78]
 120b:	sub    esp,0x4
 120e:	sub    eax,ecx
 1210:	mov    ebx,eax
 1212:	shr    eax,0x1f
 1215:	sar    ebx,0x2
 1218:	add    eax,ebx
 121a:	sar    eax,1
 121c:	je     8041232 <register_tm_clones+0x42>
 121e:	mov    edx,DWORD PTR [edx+0x6c]
 1224:	test   edx,edx
 1226:	je     8041232 <register_tm_clones+0x42>
 1228:	sub    esp,0x8
 122b:	push   eax
 122c:	push   ecx
 122d:	call   edx
 122f:	add    esp,0x10
 1232:	mov    ebx,DWORD PTR [ebp-0x4]
 1235:	leave
 1236:	ret
 1237:	lea    esi,[esi+eiz*1+0x0]
 123e:	xchg   ax,ax

1240 <__do_global_dtors_aux>:
 1240:	endbr32
 1244:	push   ebp
 1245:	mov    ebp,esp
 1247:	push   ebx
 1248:	call   80411a0 <__x86.get_pc_thunk.bx>
 124d:	add    ebx,0x2d43
 1253:	sub    esp,0x4
 1256:	cmp    BYTE PTR [ebx+0x78],0x0
 125d:	jne    8041286 <__do_global_dtors_aux+0x46>
 125f:	mov    eax,DWORD PTR [ebx+0x58]
 1265:	test   eax,eax
 1267:	je     804127a <__do_global_dtors_aux+0x3a>
 1269:	sub    esp,0xc
 126c:	push   DWORD PTR [ebx+0x74]
 1272:	call   8041160 <__cxa_finalize@plt>
 1277:	add    esp,0x10
 127a:	call   80411b0 <deregister_tm_clones>
 127f:	mov    BYTE PTR [ebx+0x78],0x1
 1286:	mov    ebx,DWORD PTR [ebp-0x4]
 1289:	leave
 128a:	ret
 128b:	lea    esi,[esi+eiz*1+0x0]
 128f:	nop

1290 <frame_dummy>:
 1290:	endbr32
 1294:	jmp    80411f0 <register_tm_clones>

1299 <__x86.get_pc_thunk.dx>:
 1299:	mov    edx,DWORD PTR [esp]
 129c:	ret

129d <A>:
 129d:	push   ebp
 129e:	mov    ebp,esp
 12a0:	push   ebx
 12a1:	sub    esp,0x4
 12a4:	call   80418a2 <__x86.get_pc_thunk.ax>
 12a9:	add    eax,0x2ce7
 12ae:	mov    edx,DWORD PTR [eax+0x7c]
 12b4:	sub    esp,0x8
 12b7:	push   edx
 12b8:	lea    edx,[eax-0x1f88]
 12be:	push   edx
 12bf:	mov    ebx,eax
 12c1:	call   8041070 <printf@plt>
 12c6:	add    esp,0x10
 12c9:	nop
 12ca:	mov    ebx,DWORD PTR [ebp-0x4]
 12cd:	leave
 12ce:	ret

12cf <B>:
 12cf:	push   ebp
 12d0:	mov    ebp,esp
 12d2:	push   ebx
 12d3:	sub    esp,0x4
 12d6:	call   80418a2 <__x86.get_pc_thunk.ax>
 12db:	add    eax,0x2cb5
 12e0:	mov    edx,DWORD PTR [eax+0x80]
 12e6:	sub    esp,0x8
 12e9:	push   edx
 12ea:	lea    edx,[eax-0x1f5c]
 12f0:	push   edx
 12f1:	mov    ebx,eax
 12f3:	call   8041070 <printf@plt>
 12f8:	add    esp,0x10
 12fb:	nop
 12fc:	mov    ebx,DWORD PTR [ebp-0x4]
 12ff:	leave
 1300:	ret

1301 <C>:
 1301:	push   ebp
 1302:	mov    ebp,esp
 1304:	push   ebx
 1305:	sub    esp,0x4
 1308:	call   80418a2 <__x86.get_pc_thunk.ax>
 130d:	add    eax,0x2c83
 1312:	mov    edx,DWORD PTR [eax+0x84]
 1318:	sub    esp,0x8
 131b:	push   edx
 131c:	lea    edx,[eax-0x1f30]
 1322:	push   edx
 1323:	mov    ebx,eax
 1325:	call   8041070 <printf@plt>
 132a:	add    esp,0x10
 132d:	nop
 132e:	mov    ebx,DWORD PTR [ebp-0x4]
 1331:	leave
 1332:	ret

1333 <D>:
 1333:	push   ebp
 1334:	mov    ebp,esp
 1336:	push   ebx
 1337:	sub    esp,0x4
 133a:	call   80418a2 <__x86.get_pc_thunk.ax>
 133f:	add    eax,0x2c51
 1344:	mov    edx,DWORD PTR [eax+0x88]
 134a:	sub    esp,0x8
 134d:	push   edx
 134e:	lea    edx,[eax-0x1f00]
 1354:	push   edx
 1355:	mov    ebx,eax
 1357:	call   8041070 <printf@plt>
 135c:	add    esp,0x10
 135f:	nop
 1360:	mov    ebx,DWORD PTR [ebp-0x4]
 1363:	leave
 1364:	ret

1365 <E>:
 1365:	push   ebp
 1366:	mov    ebp,esp
 1368:	push   ebx
 1369:	sub    esp,0x4
 136c:	call   80418a2 <__x86.get_pc_thunk.ax>
 1371:	add    eax,0x2c1f
 1376:	mov    edx,DWORD PTR [eax+0x8c]
 137c:	sub    esp,0x8
 137f:	push   edx
 1380:	lea    edx,[eax-0x1ecc]
 1386:	push   edx
 1387:	mov    ebx,eax
 1389:	call   8041070 <printf@plt>
 138e:	add    esp,0x10
 1391:	nop
 1392:	mov    ebx,DWORD PTR [ebp-0x4]
 1395:	leave
 1396:	ret

1397 <F>:
 1397:	push   ebp
 1398:	mov    ebp,esp
 139a:	push   ebx
 139b:	sub    esp,0x4
 139e:	call   80418a2 <__x86.get_pc_thunk.ax>
 13a3:	add    eax,0x2bed
 13a8:	mov    edx,DWORD PTR [eax+0x90]
 13ae:	sub    esp,0x8
 13b1:	push   edx
 13b2:	lea    edx,[eax-0x1e98]
 13b8:	push   edx
 13b9:	mov    ebx,eax
 13bb:	call   8041070 <printf@plt>
 13c0:	add    esp,0x10
 13c3:	nop
 13c4:	mov    ebx,DWORD PTR [ebp-0x4]
 13c7:	leave
 13c8:	ret

13c9 <G>:
 13c9:	push   ebp
 13ca:	mov    ebp,esp
 13cc:	push   ebx
 13cd:	sub    esp,0x4
 13d0:	call   80418a2 <__x86.get_pc_thunk.ax>
 13d5:	add    eax,0x2bbb
 13da:	mov    edx,DWORD PTR [eax+0x94]
 13e0:	sub    esp,0x8
 13e3:	push   edx
 13e4:	lea    edx,[eax-0x1e70]
 13ea:	push   edx
 13eb:	mov    ebx,eax
 13ed:	call   8041070 <printf@plt>
 13f2:	add    esp,0x10
 13f5:	nop
 13f6:	mov    ebx,DWORD PTR [ebp-0x4]
 13f9:	leave
 13fa:	ret

13fb <main>:
 13fb:	lea    ecx,[esp+0x4]
 13ff:	and    esp,0xfffffff0
 1402:	push   DWORD PTR [ecx-0x4]
 1405:	push   ebp
 1406:	mov    ebp,esp
 1408:	push   ebx
 1409:	push   ecx
 140a:	sub    esp,0x10
 140d:	call   80411a0 <__x86.get_pc_thunk.bx>
 1412:	add    ebx,0x2b7e
 1418:	mov    eax,DWORD PTR [ebx+0x64]
 141e:	mov    eax,DWORD PTR [eax]
 1420:	push   0x0
 1422:	push   0x2
 1424:	push   0x0
 1426:	push   eax
 1427:	call   8041110 <setvbuf@plt>
 142c:	add    esp,0x10
 142f:	mov    eax,DWORD PTR [ebx+0x60]
 1435:	mov    eax,DWORD PTR [eax]
 1437:	push   0x0
 1439:	push   0x2
 143b:	push   0x0
 143d:	push   eax
 143e:	call   8041110 <setvbuf@plt>
 1443:	add    esp,0x10
 1446:	sub    esp,0xc
 1449:	push   0x3c
 144b:	call   80410c0 <alarm@plt>
 1450:	add    esp,0x10
 1453:	call   8041866 <hint>
 1458:	call   8041698 <init_ABCDEFG>
 145d:	sub    esp,0xc
 1460:	push   0x0
 1462:	call   8041040 <seccomp_init@plt>
 1467:	add    esp,0x10
 146a:	mov    DWORD PTR [ebp-0xc],eax
 146d:	push   0x0
 146f:	push   0xad
 1474:	push   0x7fff0000
 1479:	push   DWORD PTR [ebp-0xc]
 147c:	call   8041090 <seccomp_rule_add@plt>
 1481:	add    esp,0x10
 1484:	push   0x0
 1486:	push   0x5
 1488:	push   0x7fff0000
 148d:	push   DWORD PTR [ebp-0xc]
 1490:	call   8041090 <seccomp_rule_add@plt>
 1495:	add    esp,0x10
 1498:	push   0x0
 149a:	push   0x127
 149f:	push   0x7fff0000
 14a4:	push   DWORD PTR [ebp-0xc]
 14a7:	call   8041090 <seccomp_rule_add@plt>
 14ac:	add    esp,0x10
 14af:	push   0x0
 14b1:	push   0x3
 14b3:	push   0x7fff0000
 14b8:	push   DWORD PTR [ebp-0xc]
 14bb:	call   8041090 <seccomp_rule_add@plt>
 14c0:	add    esp,0x10
 14c3:	push   0x0
 14c5:	push   0x4
 14c7:	push   0x7fff0000
 14cc:	push   DWORD PTR [ebp-0xc]
 14cf:	call   8041090 <seccomp_rule_add@plt>
 14d4:	add    esp,0x10
 14d7:	push   0x0
 14d9:	push   0xfc
 14de:	push   0x7fff0000
 14e3:	push   DWORD PTR [ebp-0xc]
 14e6:	call   8041090 <seccomp_rule_add@plt>
 14eb:	add    esp,0x10
 14ee:	sub    esp,0xc
 14f1:	push   DWORD PTR [ebp-0xc]
 14f4:	call   80410b0 <seccomp_load@plt>
 14f9:	add    esp,0x10
 14fc:	call   804150b <ropme>
 1501:	lea    esp,[ebp-0x8]
 1504:	pop    ecx
 1505:	pop    ebx
 1506:	pop    ebp
 1507:	lea    esp,[ecx-0x4]
 150a:	ret

150b <ropme>:
 150b:	push   ebp
 150c:	mov    ebp,esp
 150e:	push   ebx
 150f:	sub    esp,0x74
 1512:	call   80411a0 <__x86.get_pc_thunk.bx>
 1517:	add    ebx,0x2a79
 151d:	sub    esp,0xc
 1520:	lea    eax,[ebx-0x1e4c]
 1526:	push   eax
 1527:	call   8041070 <printf@plt>
 152c:	add    esp,0x10
 152f:	sub    esp,0x8
 1532:	lea    eax,[ebp-0x10]
 1535:	push   eax
 1536:	lea    eax,[ebx-0x1e3f]
 153c:	push   eax
 153d:	call   8041130 <__isoc99_scanf@plt>
 1542:	add    esp,0x10
 1545:	call   80410a0 <getchar@plt>
 154a:	mov    edx,DWORD PTR [ebp-0x10]
 154d:	mov    eax,DWORD PTR [ebx+0x7c]
 1553:	cmp    edx,eax
 1555:	jne    8041561 <ropme+0x56>
 1557:	call   804129d <A>
 155c:	jmp    804168e <ropme+0x183>
 1561:	mov    edx,DWORD PTR [ebp-0x10]
 1564:	mov    eax,DWORD PTR [ebx+0x80]
 156a:	cmp    edx,eax
 156c:	jne    8041578 <ropme+0x6d>
 156e:	call   80412cf <B>
 1573:	jmp    804168e <ropme+0x183>
 1578:	mov    edx,DWORD PTR [ebp-0x10]
 157b:	mov    eax,DWORD PTR [ebx+0x84]
 1581:	cmp    edx,eax
 1583:	jne    804158f <ropme+0x84>
 1585:	call   8041301 <C>
 158a:	jmp    804168e <ropme+0x183>
 158f:	mov    edx,DWORD PTR [ebp-0x10]
 1592:	mov    eax,DWORD PTR [ebx+0x88]
 1598:	cmp    edx,eax
 159a:	jne    80415a6 <ropme+0x9b>
 159c:	call   8041333 <D>
 15a1:	jmp    804168e <ropme+0x183>
 15a6:	mov    edx,DWORD PTR [ebp-0x10]
 15a9:	mov    eax,DWORD PTR [ebx+0x8c]
 15af:	cmp    edx,eax
 15b1:	jne    80415bd <ropme+0xb2>
 15b3:	call   8041365 <E>
 15b8:	jmp    804168e <ropme+0x183>
 15bd:	mov    edx,DWORD PTR [ebp-0x10]
 15c0:	mov    eax,DWORD PTR [ebx+0x90]
 15c6:	cmp    edx,eax
 15c8:	jne    80415d4 <ropme+0xc9>
 15ca:	call   8041397 <F>
 15cf:	jmp    804168e <ropme+0x183>
 15d4:	mov    edx,DWORD PTR [ebp-0x10]
 15d7:	mov    eax,DWORD PTR [ebx+0x94]
 15dd:	cmp    edx,eax
 15df:	jne    80415eb <ropme+0xe0>
 15e1:	call   80413c9 <G>
 15e6:	jmp    804168e <ropme+0x183>
 15eb:	sub    esp,0xc
 15ee:	lea    eax,[ebx-0x1e3c]
 15f4:	push   eax
 15f5:	call   8041070 <printf@plt>
 15fa:	add    esp,0x10
 15fd:	sub    esp,0xc
 1600:	lea    eax,[ebp-0x74]
 1603:	push   eax
 1604:	call   8041080 <gets@plt>
 1609:	add    esp,0x10
 160c:	sub    esp,0xc
 160f:	lea    eax,[ebp-0x74]
 1612:	push   eax
 1613:	call   8041140 <atoi@plt>
 1618:	add    esp,0x10
 161b:	mov    edx,DWORD PTR [ebx+0x98]
 1621:	cmp    eax,edx
 1623:	jne    804167c <ropme+0x171>
 1625:	sub    esp,0x8
 1628:	push   0x0
 162a:	lea    eax,[ebx-0x1e1c]
 1630:	push   eax
 1631:	call   80410f0 <open@plt>
 1636:	add    esp,0x10
 1639:	mov    DWORD PTR [ebp-0xc],eax
 163c:	sub    esp,0x4
 163f:	push   0x64
 1641:	lea    eax,[ebp-0x74]
 1644:	push   eax
 1645:	push   DWORD PTR [ebp-0xc]
 1648:	call   8041060 <read@plt>
 164d:	add    esp,0x10
 1650:	mov    BYTE PTR [ebp+eax*1-0x74],0x0
 1655:	sub    esp,0xc
 1658:	lea    eax,[ebp-0x74]
 165b:	push   eax
 165c:	call   80410d0 <puts@plt>
 1661:	add    esp,0x10
 1664:	sub    esp,0xc
 1667:	push   DWORD PTR [ebp-0xc]
 166a:	call   8041150 <close@plt>
 166f:	add    esp,0x10
 1672:	sub    esp,0xc
 1675:	push   0x0
 1677:	call   80410e0 <exit@plt>
 167c:	sub    esp,0xc
 167f:	lea    eax,[ebx-0x1e00]
 1685:	push   eax
 1686:	call   80410d0 <puts@plt>
 168b:	add    esp,0x10
 168e:	mov    eax,0x0
 1693:	mov    ebx,DWORD PTR [ebp-0x4]
 1696:	leave
 1697:	ret

1698 <init_ABCDEFG>:
 1698:	push   ebp
 1699:	mov    ebp,esp
 169b:	push   ebx
 169c:	sub    esp,0x14
 169f:	call   80411a0 <__x86.get_pc_thunk.bx>
 16a4:	add    ebx,0x28ec
 16aa:	sub    esp,0x8
 16ad:	push   0x0
 16af:	lea    eax,[ebx-0x1dcd]
 16b5:	push   eax
 16b6:	call   80410f0 <open@plt>
 16bb:	add    esp,0x10
 16be:	mov    DWORD PTR [ebp-0xc],eax
 16c1:	sub    esp,0x4
 16c4:	push   0x4
 16c6:	lea    eax,[ebp-0x10]
 16c9:	push   eax
 16ca:	push   DWORD PTR [ebp-0xc]
 16cd:	call   8041060 <read@plt>
 16d2:	add    esp,0x10
 16d5:	cmp    eax,0x4
 16d8:	je     80416f6 <init_ABCDEFG+0x5e>
 16da:	sub    esp,0xc
 16dd:	lea    eax,[ebx-0x1dc0]
 16e3:	push   eax
 16e4:	call   80410d0 <puts@plt>
 16e9:	add    esp,0x10
 16ec:	sub    esp,0xc
 16ef:	push   0x0
 16f1:	call   80410e0 <exit@plt>
 16f6:	sub    esp,0xc
 16f9:	push   DWORD PTR [ebp-0xc]
 16fc:	call   8041150 <close@plt>
 1701:	add    esp,0x10
 1704:	mov    eax,DWORD PTR [ebp-0x10]
 1707:	sub    esp,0xc
 170a:	push   eax
 170b:	call   8041100 <srand@plt>
 1710:	add    esp,0x10
 1713:	call   8041120 <rand@plt>
 1718:	imul   edx,eax,0xdeadbeef
 171e:	cmp    edx,0xcafebabe
 1724:	setae  al
 1727:	movzx  eax,al
 172a:	imul   ecx,eax,0xcafebabe
 1730:	mov    eax,edx
 1732:	sub    eax,ecx
 1734:	mov    DWORD PTR [ebx+0x7c],eax
 173a:	call   8041120 <rand@plt>
 173f:	imul   edx,eax,0xdeadbeef
 1745:	cmp    edx,0xcafebabe
 174b:	setae  al
 174e:	movzx  eax,al
 1751:	imul   ecx,eax,0xcafebabe
 1757:	mov    eax,edx
 1759:	sub    eax,ecx
 175b:	mov    DWORD PTR [ebx+0x80],eax
 1761:	call   8041120 <rand@plt>
 1766:	imul   edx,eax,0xdeadbeef
 176c:	cmp    edx,0xcafebabe
 1772:	setae  al
 1775:	movzx  eax,al
 1778:	imul   ecx,eax,0xcafebabe
 177e:	mov    eax,edx
 1780:	sub    eax,ecx
 1782:	mov    DWORD PTR [ebx+0x84],eax
 1788:	call   8041120 <rand@plt>
 178d:	imul   edx,eax,0xdeadbeef
 1793:	cmp    edx,0xcafebabe
 1799:	setae  al
 179c:	movzx  eax,al
 179f:	imul   ecx,eax,0xcafebabe
 17a5:	mov    eax,edx
 17a7:	sub    eax,ecx
 17a9:	mov    DWORD PTR [ebx+0x88],eax
 17af:	call   8041120 <rand@plt>
 17b4:	imul   edx,eax,0xdeadbeef
 17ba:	cmp    edx,0xcafebabe
 17c0:	setae  al
 17c3:	movzx  eax,al
 17c6:	imul   ecx,eax,0xcafebabe
 17cc:	mov    eax,edx
 17ce:	sub    eax,ecx
 17d0:	mov    DWORD PTR [ebx+0x8c],eax
 17d6:	call   8041120 <rand@plt>
 17db:	imul   edx,eax,0xdeadbeef
 17e1:	cmp    edx,0xcafebabe
 17e7:	setae  al
 17ea:	movzx  eax,al
 17ed:	imul   ecx,eax,0xcafebabe
 17f3:	mov    eax,edx
 17f5:	sub    eax,ecx
 17f7:	mov    DWORD PTR [ebx+0x90],eax
 17fd:	call   8041120 <rand@plt>
 1802:	imul   edx,eax,0xdeadbeef
 1808:	cmp    edx,0xcafebabe
 180e:	setae  al
 1811:	movzx  eax,al
 1814:	imul   ecx,eax,0xcafebabe
 181a:	mov    eax,edx
 181c:	sub    eax,ecx
 181e:	mov    DWORD PTR [ebx+0x94],eax
 1824:	mov    edx,DWORD PTR [ebx+0x7c]
 182a:	mov    eax,DWORD PTR [ebx+0x80]
 1830:	add    edx,eax
 1832:	mov    eax,DWORD PTR [ebx+0x84]
 1838:	add    edx,eax
 183a:	mov    eax,DWORD PTR [ebx+0x88]
 1840:	add    edx,eax
 1842:	mov    eax,DWORD PTR [ebx+0x8c]
 1848:	add    edx,eax
 184a:	mov    eax,DWORD PTR [ebx+0x90]
 1850:	add    edx,eax
 1852:	mov    eax,DWORD PTR [ebx+0x94]
 1858:	add    eax,edx
 185a:	mov    DWORD PTR [ebx+0x98],eax
 1860:	nop
 1861:	mov    ebx,DWORD PTR [ebp-0x4]
 1864:	leave
 1865:	ret

1866 <hint>:
 1866:	push   ebp
 1867:	mov    ebp,esp
 1869:	push   ebx
 186a:	sub    esp,0x4
 186d:	call   80411a0 <__x86.get_pc_thunk.bx>
 1872:	add    ebx,0x271e
 1878:	sub    esp,0xc
 187b:	lea    eax,[ebx-0x1dac]
 1881:	push   eax
 1882:	call   80410d0 <puts@plt>
 1887:	add    esp,0x10
 188a:	sub    esp,0xc
 188d:	lea    eax,[ebx-0x1d70]
 1893:	push   eax
 1894:	call   80410d0 <puts@plt>
 1899:	add    esp,0x10
 189c:	nop
 189d:	mov    ebx,DWORD PTR [ebp-0x4]
 18a0:	leave
 18a1:	ret

18a2 <__x86.get_pc_thunk.ax>:
 18a2:	mov    eax,DWORD PTR [esp]
 18a5:	ret

Disassembly of section .fini:

18a8 <_fini>:
 18a8:	endbr32
 18ac:	push   ebx
 18ad:	sub    esp,0x8
 18b0:	call   80411a0 <__x86.get_pc_thunk.bx>
 18b5:	add    ebx,0x26db
 18bb:	add    esp,0x8
 18be:	pop    ebx
 18bf:	ret
