
============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)      83    1       3       java.lang.Object::<init> (1 bytes)
 total in heap  [0x00007f7769c9d010,0x00007f7769c9d320] = 784
 relocation     [0x00007f7769c9d170,0x00007f7769c9d1a0] = 48
 main code      [0x00007f7769c9d1a0,0x00007f7769c9d280] = 224
 stub code      [0x00007f7769c9d280,0x00007f7769c9d2b0] = 48
 metadata       [0x00007f7769c9d2b0,0x00007f7769c9d2c0] = 16
 scopes data    [0x00007f7769c9d2c0,0x00007f7769c9d2d8] = 24
 scopes pcs     [0x00007f7769c9d2d8,0x00007f7769c9d318] = 64
 dependencies   [0x00007f7769c9d318,0x00007f7769c9d320] = 8

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x00000008004480a8} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f7769c9d1a0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9d1b4: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9d1b4: 0f85 c6da | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9d1c0: 8984 2400 | c0fe ff55 | 4883 ec30 

  0x00007f7769c9d1cc: ;   {metadata(method data for {method} {0x00000008004480a8} '<init>' '()V' in 'java/lang/Object')}
  0x00007f7769c9d1cc: 48bf d89e | c068 777f | 0000 8b9f | f400 0000 | 83c3 0289 | 9ff4 0000 | 0081 e3fe | 0700 0083 
  0x00007f7769c9d1ec: fb00 0f84 

  0x00007f7769c9d1f0: ;*return {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.Object::<init>@0 (line 44)
  0x00007f7769c9d1f0: 1300 0000 | 4883 c430 

  0x00007f7769c9d1f8: ;   {poll_return}
  0x00007f7769c9d1f8: 5d49 3ba7 | 4003 0000 | 0f87 1f00 

  0x00007f7769c9d204: ;   {metadata({method} {0x00000008004480a8} '<init>' '()V' in 'java/lang/Object')}
  0x00007f7769c9d204: 0000 c349 | baa8 8044 | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9d21c: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9d21c: ffff e85d 

  0x00007f7769c9d220: ; ImmutableOopMap {rsi=Oop }
                      ;*synchronization entry
                      ; - java.lang.Object::<init>@-1 (line 44)
  0x00007f7769c9d220: d1b6 ffeb 

  0x00007f7769c9d224: ;   {internal_word}
  0x00007f7769c9d224: cf49 baf9 | d1c9 6977 | 7f00 004d | 8997 5803 

  0x00007f7769c9d234: ;   {runtime_call SafepointBlob}
  0x00007f7769c9d234: 0000 e945 | 54ac ff90 | 9049 8b87 | d003 0000 | 49c7 87d0 | 0300 0000 | 0000 0049 | c787 d803 
  0x00007f7769c9d254: 0000 0000 | 0000 4883 

  0x00007f7769c9d25c: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9d25c: c430 5de9 | 9cb3 adff | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
  0x00007f7769c9d27c: f4f4 f4f4 
[Exception Handler]
  0x00007f7769c9d280: ;   {no_reloc}
  0x00007f7769c9d280: e87b beb6 

  0x00007f7769c9d284: ;   {external_word}
  0x00007f7769c9d284: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9d290: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9d290: 83e4 f0e8 | b835 b51e 

  0x00007f7769c9d298: ;   {section_word}
  0x00007f7769c9d298: f449 ba99 | d2c9 6977 | 7f00 0041 

  0x00007f7769c9d2a4: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9d2a4: 52e9 7668 | acff f4f4 | f4f4 f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     110    3       3       java.lang.String::coder (15 bytes)
 total in heap  [0x00007f7769c9d390,0x00007f7769c9d6f8] = 872
 relocation     [0x00007f7769c9d4f0,0x00007f7769c9d520] = 48
 main code      [0x00007f7769c9d520,0x00007f7769c9d620] = 256
 stub code      [0x00007f7769c9d620,0x00007f7769c9d650] = 48
 metadata       [0x00007f7769c9d650,0x00007f7769c9d658] = 8
 scopes data    [0x00007f7769c9d658,0x00007f7769c9d680] = 40
 scopes pcs     [0x00007f7769c9d680,0x00007f7769c9d6f0] = 112
 dependencies   [0x00007f7769c9d6f0,0x00007f7769c9d6f8] = 8

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x000000080042ddb0} 'coder' '()B' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f7769c9d520: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9d534: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9d534: 0f85 46d7 | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9d540: 8984 2400 | c0fe ff55 | 4883 ec30 

  0x00007f7769c9d54c: ;   {metadata(method data for {method} {0x000000080042ddb0} 'coder' '()B' in 'java/lang/String')}
  0x00007f7769c9d54c: 48b8 c873 | c168 777f | 0000 8bb8 | f400 0000 | 83c7 0289 | b8f4 0000 | 0081 e7fe | 0700 0083 
  0x00007f7769c9d56c: ff00 0f84 

  0x00007f7769c9d570: ;*getstatic COMPACT_STRINGS {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::coder@0 (line 4540)
  0x00007f7769c9d570: 3d00 0000 

  0x00007f7769c9d574: ;   {metadata(method data for {method} {0x000000080042ddb0} 'coder' '()B' in 'java/lang/String')}
  0x00007f7769c9d574: 48b8 c873 | c168 777f | 0000 ff80 

  0x00007f7769c9d580: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::coder@3 (line 4540)
  0x00007f7769c9d580: 4801 0000 

  0x00007f7769c9d584: ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::coder@7 (line 4540)
  0x00007f7769c9d584: 0fbe 4610 

  0x00007f7769c9d588: ;   {metadata(method data for {method} {0x000000080042ddb0} 'coder' '()B' in 'java/lang/String')}
  0x00007f7769c9d588: 48be c873 | c168 777f | 0000 ff86 

  0x00007f7769c9d594: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::coder@10 (line 4540)
  0x00007f7769c9d594: 5801 0000 | c1e0 18c1 | f818 4883 

  0x00007f7769c9d5a0: ;   {poll_return}
  0x00007f7769c9d5a0: c430 5d49 | 3ba7 4003 | 0000 0f87 | 1f00 0000 

  0x00007f7769c9d5b0: ;   {metadata({method} {0x000000080042ddb0} 'coder' '()B' in 'java/lang/String')}
  0x00007f7769c9d5b0: c349 bab0 | dd42 0008 | 0000 004c | 8954 2408 | 48c7 0424 | ffff ffff 

  0x00007f7769c9d5c8: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9d5c8: e8b3 cdb6 

  0x00007f7769c9d5cc: ; ImmutableOopMap {rsi=Oop }
                      ;*synchronization entry
                      ; - java.lang.String::coder@-1 (line 4540)
                      ;   {internal_word}
  0x00007f7769c9d5cc: ffeb a549 | baa3 d5c9 | 6977 7f00 | 004d 8997 | 5803 0000 

  0x00007f7769c9d5e0: ;   {runtime_call SafepointBlob}
  0x00007f7769c9d5e0: e99b 50ac | ff90 9049 | 8b87 d003 | 0000 49c7 | 87d0 0300 | 0000 0000 | 0049 c787 | d803 0000 
  0x00007f7769c9d600: 0000 0000 | 4883 c430 

  0x00007f7769c9d608: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9d608: 5de9 f2af | adff f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Exception Handler]
  0x00007f7769c9d620: ;   {no_reloc}
  0x00007f7769c9d620: e8db bab6 

  0x00007f7769c9d624: ;   {external_word}
  0x00007f7769c9d624: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9d630: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9d630: 83e4 f0e8 | 1832 b51e 

  0x00007f7769c9d638: ;   {section_word}
  0x00007f7769c9d638: f449 ba39 | d6c9 6977 | 7f00 0041 

  0x00007f7769c9d644: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9d644: 52e9 d664 | acff f4f4 | f4f4 f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     121    2       3       java.lang.String::hashCode (60 bytes)
 total in heap  [0x00007f7769c9d710,0x00007f7769c9ded0] = 1984
 relocation     [0x00007f7769c9d870,0x00007f7769c9d8d0] = 96
 main code      [0x00007f7769c9d8e0,0x00007f7769c9dc00] = 800
 stub code      [0x00007f7769c9dc00,0x00007f7769c9dc50] = 80
 metadata       [0x00007f7769c9dc50,0x00007f7769c9dc60] = 16
 scopes data    [0x00007f7769c9dc60,0x00007f7769c9dd18] = 184
 scopes pcs     [0x00007f7769c9dd18,0x00007f7769c9dec8] = 432
 dependencies   [0x00007f7769c9dec8,0x00007f7769c9ded0] = 8

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x00007f7769c9d8e0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9d8f4: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9d8f4: 0f85 86d3 | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9d900: 8984 2400 | c0fe ff55 | 4883 ec40 | 4889 7424 

  0x00007f7769c9d910: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9d910: 2848 bf68 | 75c1 6877 | 7f00 008b | 9ff4 0000 | 0083 c302 | 899f f400 | 0000 81e3 | fe07 0000 
  0x00007f7769c9d930: 83fb 000f | 8429 0200 

  0x00007f7769c9d938: ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@0 (line 2337)
  0x00007f7769c9d938: 008b 7e0c 

  0x00007f7769c9d93c: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9d93c: 83ff 0048 | bb68 75c1 | 6877 7f00 | 0048 b838 | 0100 0000 | 0000 000f | 850a 0000 | 0048 b848 
  0x00007f7769c9d95c: 0100 0000 | 0000 0048 | 8b14 0348 | 8d52 0148 | 8914 030f | 85d7 0100 

  0x00007f7769c9d974: ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@6 (line 2338)
  0x00007f7769c9d974: 000f be5e 

  0x00007f7769c9d978: ;*getfield hashIsZero {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@10 (line 2338)
  0x00007f7769c9d978: 1183 fb00 

  0x00007f7769c9d97c: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9d97c: 48bb 6875 | c168 777f | 0000 48b8 | 5801 0000 | 0000 0000 | 0f85 0a00 | 0000 48b8 | 6801 0000 
  0x00007f7769c9d99c: 0000 0000 | 488b 1403 | 488d 5201 | 4889 1403 | 0f85 9a01 

  0x00007f7769c9d9b0: ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@13 (line 2338)
  0x00007f7769c9d9b0: 0000 488b 

  0x00007f7769c9d9b4: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9d9b4: fe48 bb68 | 75c1 6877 | 7f00 0048 | 8383 7801 

  0x00007f7769c9d9c4: ;   {metadata(method data for {method} {0x000000080042e960} 'isLatin1' '()Z' in 'java/lang/String')}
  0x00007f7769c9d9c4: 0000 0148 | bfe8 77c1 | 6877 7f00 | 008b 9ff4 | 0000 0083 | c302 899f | f400 0000 | 81e3 feff 
  0x00007f7769c9d9e4: 1f00 83fb | 000f 8494 

  0x00007f7769c9d9ec: ;   {metadata(method data for {method} {0x000000080042e960} 'isLatin1' '()Z' in 'java/lang/String')}
  0x00007f7769c9d9ec: 0100 0048 | bfe8 77c1 | 6877 7f00 | 00ff 8748 

  0x00007f7769c9d9fc: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::isLatin1@3 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9d9fc: 0100 000f 

  0x00007f7769c9da00: ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::isLatin1@7 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9da00: be7e 1083 

  0x00007f7769c9da04: ;   {metadata(method data for {method} {0x000000080042e960} 'isLatin1' '()Z' in 'java/lang/String')}
  0x00007f7769c9da04: ff00 48bf | e877 c168 | 777f 0000 | 48bb 5801 | 0000 0000 | 0000 0f85 | 0a00 0000 | 48bb 6801 
  0x00007f7769c9da24: 0000 0000 | 0000 488b | 041f 488d | 4001 4889 | 041f 0f85 

  0x00007f7769c9da38: ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::isLatin1@10 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9da38: 1a00 0000 

  0x00007f7769c9da3c: ;   {metadata(method data for {method} {0x000000080042e960} 'isLatin1' '()Z' in 'java/lang/String')}
  0x00007f7769c9da3c: 48bf e877 | c168 777f | 0000 ff87 | 7801 0000 | bf01 0000 | 00e9 0500 

  0x00007f7769c9da54: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::isLatin1@14 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9da54: 0000 bf00 

  0x00007f7769c9da58: ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::isLatin1@18 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9da58: 0000 0083 | e701 83ff 

  0x00007f7769c9da60: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9da60: 0048 bf68 | 75c1 6877 | 7f00 0048 | bbb0 0100 | 0000 0000 | 000f 840a | 0000 0048 | bbc0 0100 
  0x00007f7769c9da80: 0000 0000 | 0048 8b04 | 1f48 8d40 | 0148 8904 | 1f0f 8432 

  0x00007f7769c9da94: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@20 (line 2339)
  0x00007f7769c9da94: 0000 008b 

  0x00007f7769c9da98: ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@24 (line 2339)
                      ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9da98: 7e14 48bb | 6875 c168 | 777f 0000 | 4883 83d0 | 0100 0001 

  0x00007f7769c9daac: ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@27 (line 2339)
                      ;   {static_call}
  0x00007f7769c9daac: 488b f7e8 

  0x00007f7769c9dab0: ; ImmutableOopMap {[40]=Oop }
                      ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@27 (line 2339)
  0x00007f7769c9dab0: 4ce2 abff 

  0x00007f7769c9dab4: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9dab4: 48be 6875 | c168 777f | 0000 ff86 | e001 0000 | e923 0000 

  0x00007f7769c9dac8: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@30 (line 2339)
  0x00007f7769c9dac8: 008b 7e14 

  0x00007f7769c9dacc: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9dacc: 48bb 6875 | c168 777f | 0000 4883 | 83f8 0100 | 0001 488b 

  0x00007f7769c9dae0: ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@37 (line 2340)
  0x00007f7769c9dae0: f766 0f1f 

  0x00007f7769c9dae4: ;   {static_call}
  0x00007f7769c9dae4: 4400 00e8 

  0x00007f7769c9dae8: ; ImmutableOopMap {[40]=Oop }
                      ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@37 (line 2340)
  0x00007f7769c9dae8: 14e2 abff 

  0x00007f7769c9daec: ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9daec: 83f8 0048 | be68 75c1 | 6877 7f00 | 0048 bf08 | 0200 0000 | 0000 000f | 850a 0000 | 0048 bf18 
  0x00007f7769c9db0c: 0200 0000 | 0000 0048 | 8b1c 3e48 | 8d5b 0148 | 891c 3e48 | 8b74 2428 | 0f85 1c00 

  0x00007f7769c9db28: ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@42 (line 2341)
  0x00007f7769c9db28: 0000 c646 

  0x00007f7769c9db2c: ;*putfield hashIsZero {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@47 (line 2342)
                      ;   {metadata(method data for {method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9db2c: 1101 48be | 6875 c168 | 777f 0000 | ff86 2802 | 0000 488b | f8e9 0600 

  0x00007f7769c9db44: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@50 (line 2342)
  0x00007f7769c9db44: 0000 8946 

  0x00007f7769c9db48: ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.lang.String::hashCode@55 (line 2344)
  0x00007f7769c9db48: 0c48 8bf8 | 488b c748 | 83c4 405d 

  0x00007f7769c9db54: ;   {poll_return}
  0x00007f7769c9db54: 493b a740 | 0300 000f | 8743 0000 

  0x00007f7769c9db60: ;   {metadata({method} {0x000000080042d780} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f7769c9db60: 00c3 49ba | 80d7 4200 | 0800 0000 | 4c89 5424 | 0848 c704 | 24ff ffff 

  0x00007f7769c9db78: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9db78: ffe8 02c8 

  0x00007f7769c9db7c: ; ImmutableOopMap {rsi=Oop [40]=Oop }
                      ;*synchronization entry
                      ; - java.lang.String::hashCode@-1 (line 2337)
  0x00007f7769c9db7c: b6ff e9b6 

  0x00007f7769c9db80: ;   {metadata({method} {0x000000080042e960} 'isLatin1' '()Z' in 'java/lang/String')}
  0x00007f7769c9db80: fdff ff49 | ba60 e942 | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9db98: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9db98: ffff e8e1 

  0x00007f7769c9db9c: ; ImmutableOopMap {rsi=Oop [40]=Oop }
                      ;*synchronization entry
                      ; - java.lang.String::isLatin1@-1 (line 4548)
                      ; - java.lang.String::hashCode@17 (line 2339)
  0x00007f7769c9db9c: c7b6 ffe9 | 4bfe ffff 

  0x00007f7769c9dba4: ;   {internal_word}
  0x00007f7769c9dba4: 49ba 54db | c969 777f | 0000 4d89 | 9758 0300 

  0x00007f7769c9dbb4: ;   {runtime_call SafepointBlob}
  0x00007f7769c9dbb4: 00e9 c64a | acff 9090 | 498b 87d0 | 0300 0049 | c787 d003 | 0000 0000 | 0000 49c7 | 87d8 0300 
  0x00007f7769c9dbd4: 0000 0000 | 0048 83c4 

  0x00007f7769c9dbdc: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9dbdc: 405d e91d | aaad fff4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
  0x00007f7769c9dbfc: f4f4 f4f4 
[Stub Code]
  0x00007f7769c9dc00: ;   {no_reloc}
  0x00007f7769c9dc00: 0f1f 4400 

  0x00007f7769c9dc04: ;   {static_stub}
  0x00007f7769c9dc04: 0048 bb00 | 0000 0000 

  0x00007f7769c9dc0c: ;   {runtime_call}
  0x00007f7769c9dc0c: 0000 00e9 | fbff ffff 

  0x00007f7769c9dc14: ;   {static_stub}
  0x00007f7769c9dc14: 9048 bb00 | 0000 0000 

  0x00007f7769c9dc1c: ;   {runtime_call}
  0x00007f7769c9dc1c: 0000 00e9 | fbff ffff 
[Exception Handler]
  0x00007f7769c9dc24: ;   {runtime_call handle_exception_from_callee Runtime1 stub}
  0x00007f7769c9dc24: e8d7 b4b6 

  0x00007f7769c9dc28: ;   {external_word}
  0x00007f7769c9dc28: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9dc34: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9dc34: 83e4 f0e8 | 142c b51e 

  0x00007f7769c9dc3c: ;   {section_word}
  0x00007f7769c9dc3c: f449 ba3d | dcc9 6977 | 7f00 0041 

  0x00007f7769c9dc48: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9dc48: 52e9 d25e | acff f4f4 
[/MachCode]

Compiled method (n/a)     128    5     n 0       jdk.internal.misc.Unsafe::compareAndSetLong (native)
 total in heap  [0x00007f77711d5010,0x00007f77711d5398] = 904
 relocation     [0x00007f77711d5170,0x00007f77711d51a0] = 48
 main code      [0x00007f77711d51a0,0x00007f77711d5398] = 504

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x0000000800419e90} 'compareAndSetLong' '(Ljava/lang/Object;JJJ)Z' in 'jdk/internal/misc/Unsafe'
  # this:     rsi:rsi   = 'jdk/internal/misc/Unsafe'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = long
  # parm2:    r8:r8     = long
  # parm3:    r9:r9     = long
  #           [sp+0x50]  (sp of caller)
  0x00007f77711d51a0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d349 3bc2 | 0f84 0600 

  0x00007f77711d51b8: ;   {runtime_call ic_miss_stub}
  0x00007f77711d51b8: 0000 e9c1 | 5a58 f890 
[Verified Entry Point]
  0x00007f77711d51c0: 8984 2400 | c0fe ff55 | 488b ec48 | 83ec 4048 | 8954 2408 | 4883 fa00 | 488d 5424 | 0848 0f44 
  0x00007f77711d51e0: 5424 0848 | 8934 2448 | 83fe 0048 | 8d34 2448 | 0f44 3424 

  0x00007f77711d51f4: ;   {internal_word}
  0x00007f77711d51f4: c5f8 7749 | baf4 511d | 7177 7f00 | 004d 8997 | 9002 0000 | 4989 a788 

  0x00007f77711d520c: ;   {external_word}
  0x00007f77711d520c: 0200 0080 | 3d57 35d7 | 1700 0f84 | 3e00 0000 | 5652 5141 

  0x00007f77711d5220: ;   {metadata({method} {0x0000000800419e90} 'compareAndSetLong' '(Ljava/lang/Object;JJJ)Z' in 'jdk/internal/misc/Unsafe')}
  0x00007f77711d5220: 5041 5148 | be90 9e41 | 0008 0000 | 0049 8bff | f7c4 0f00 | 0000 0f84 | 1200 0000 | 4883 ec08 
  0x00007f77711d5240: ;   {runtime_call SharedRuntime::dtrace_method_entry(JavaThread*, Method*)}
  0x00007f77711d5240: e82b 957e | 1748 83c4 | 08e9 0500 

  0x00007f77711d524c: ;   {runtime_call SharedRuntime::dtrace_method_entry(JavaThread*, Method*)}
  0x00007f77711d524c: 0000 e81d | 957e 1741 | 5941 5859 | 5a5e 498d | bfa8 0200 | 0041 c787 | 3803 0000 | 0400 0000 
  0x00007f77711d526c: ;   {runtime_call Unsafe_CompareAndSetLong}
  0x00007f77711d526c: e80f ce90 | 17c5 f877 | 81e0 ff00 | 0000 0f95 | c041 c787 | 3803 0000 | 0500 0000 | f083 4424 
  0x00007f77711d528c: c000 493b | af40 0300 | 000f 8711 | 0000 0041 | 81bf 2803 | 0000 0000 | 0000 0f84 | 2400 0000 
  0x00007f77711d52ac: c5f8 7748 | 8945 f849 | 8bff 4c8b | e448 83ec | 0048 83e4 

  0x00007f77711d52c0: ;   {runtime_call JavaThread::check_special_condition_for_native_trans(JavaThread*)}
  0x00007f77711d52c0: f0e8 7a13 | 8e17 498b | e44d 33e4 | 488b 45f8 | 41c7 8738 | 0300 0008 | 0000 0041 | 81bf a803 
  0x00007f77711d52e0: 0000 0200 | 0000 0f84 | 8400 0000 

  0x00007f77711d52ec: ;   {external_word}
  0x00007f77711d52ec: 803d 7a34 | d717 000f | 8438 0000 | 0048 8945 

  0x00007f77711d52fc: ;   {metadata({method} {0x0000000800419e90} 'compareAndSetLong' '(Ljava/lang/Object;JJJ)Z' in 'jdk/internal/misc/Unsafe')}
  0x00007f77711d52fc: f848 be90 | 9e41 0008 | 0000 0049 | 8bff f7c4 | 0f00 0000 | 0f84 1200 | 0000 4883 

  0x00007f77711d5318: ;   {runtime_call SharedRuntime::dtrace_method_exit(JavaThread*, Method*)}
  0x00007f77711d5318: ec08 e861 | 947e 1748 | 83c4 08e9 | 0500 0000 

  0x00007f77711d5328: ;   {runtime_call SharedRuntime::dtrace_method_exit(JavaThread*, Method*)}
  0x00007f77711d5328: e853 947e | 1748 8b45 | f849 c787 | 8802 0000 | 0000 0000 | 49c7 8790 | 0200 0000 | 0000 00c5 
  0x00007f77711d5348: f877 498b | 8fd8 0000 | 00c7 8100 | 0100 0000 | 0000 00c9 | 4981 7f08 | 0000 0000 | 0f85 0100 
  0x00007f77711d5368: ;   {runtime_call StubRoutines (1)}
  0x00007f77711d5368: 0000 c3e9 | 9098 53f8 | c5f8 7748 | 8945 f84c | 8be4 4883 | ec00 4883 

  0x00007f77711d5380: ;   {runtime_call SharedRuntime::reguard_yellow_pages()}
  0x00007f77711d5380: e4f0 e879 | a17e 1749 | 8be4 4d33 | e448 8b45 | f8e9 56ff | ffff f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     132    4       1       java.util.concurrent.atomic.AtomicLong::get (5 bytes)
 total in heap  [0x00007f77711d5410,0x00007f77711d56d0] = 704
 relocation     [0x00007f77711d5570,0x00007f77711d5598] = 40
 main code      [0x00007f77711d55a0,0x00007f77711d5640] = 160
 stub code      [0x00007f77711d5640,0x00007f77711d5670] = 48
 metadata       [0x00007f77711d5670,0x00007f77711d5678] = 8
 scopes data    [0x00007f77711d5678,0x00007f77711d5688] = 16
 scopes pcs     [0x00007f77711d5688,0x00007f77711d56c8] = 64
 dependencies   [0x00007f77711d56c8,0x00007f77711d56d0] = 8

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x000000080009bf78} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong'
  #           [sp+0x40]  (sp of caller)
  0x00007f77711d55a0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f77711d55b4: ;   {runtime_call ic_miss_stub}
  0x00007f77711d55b4: 0f85 c656 | 58f8 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f77711d55c0: 8984 2400 | c0fe ff55 

  0x00007f77711d55c8: ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::get@0 (line 104)
  0x00007f77711d55c8: 4883 ec30 | c5fb 1046 | 10c4 e1f9 

  0x00007f77711d55d4: ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 104)
  0x00007f77711d55d4: 7ec0 4883 

  0x00007f77711d55d8: ;   {poll_return}
  0x00007f77711d55d8: c430 5d49 | 3ba7 4003 | 0000 0f87 | 0100 0000 

  0x00007f77711d55e8: ;   {internal_word}
  0x00007f77711d55e8: c349 badb | 551d 7177 | 7f00 004d | 8997 5803 

  0x00007f77711d55f8: ;   {runtime_call SafepointBlob}
  0x00007f77711d55f8: 0000 e981 | d058 f890 | 9049 8b87 | d003 0000 | 49c7 87d0 | 0300 0000 | 0000 0049 | c787 d803 
  0x00007f77711d5618: 0000 0000 | 0000 4883 

  0x00007f77711d5620: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f77711d5620: c430 5de9 | d82f 5af8 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Exception Handler]
  0x00007f77711d5640: ;   {no_reloc}
  0x00007f77711d5640: e8bb 3a63 

  0x00007f77711d5644: ;   {external_word}
  0x00007f77711d5644: f848 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f77711d5650: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f77711d5650: 83e4 f0e8 | f8b1 6117 

  0x00007f77711d5658: ;   {section_word}
  0x00007f77711d5658: f449 ba59 | 561d 7177 | 7f00 0041 

  0x00007f77711d5664: ;   {runtime_call DeoptimizationBlob}
  0x00007f77711d5664: 52e9 b6e4 | 58f8 f4f4 | f4f4 f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     134    7       3       java.util.Random::next (47 bytes)
 total in heap  [0x00007f7769c9df10,0x00007f7769c9e4d8] = 1480
 relocation     [0x00007f7769c9e070,0x00007f7769c9e0b8] = 72
 main code      [0x00007f7769c9e0c0,0x00007f7769c9e300] = 576
 stub code      [0x00007f7769c9e300,0x00007f7769c9e340] = 64
 metadata       [0x00007f7769c9e340,0x00007f7769c9e358] = 24
 scopes data    [0x00007f7769c9e358,0x00007f7769c9e3d0] = 120
 scopes pcs     [0x00007f7769c9e3d0,0x00007f7769c9e4c0] = 240
 dependencies   [0x00007f7769c9e4c0,0x00007f7769c9e4c8] = 8
 nul chk table  [0x00007f7769c9e4c8,0x00007f7769c9e4d8] = 16

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random'
  # this:     rsi:rsi   = 'java/util/Random'
  # parm0:    rdx       = int
  #           [sp+0x80]  (sp of caller)
  0x00007f7769c9e0c0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9e0d4: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9e0d4: 0f85 a6cb | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9e0e0: 8984 2400 | c0fe ff55 | 4883 ec70 | 8954 2450 

  0x00007f7769c9e0f0: ;   {metadata(method data for {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e0f0: 48b8 a882 | c168 777f | 0000 8b88 | f400 0000 | 83c1 0289 | 88f4 0000 | 0081 e1fe | 0700 0083 
  0x00007f7769c9e110: f900 0f84 

  0x00007f7769c9e114: ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@0 (line 205)
  0x00007f7769c9e114: 4701 0000 

  0x00007f7769c9e118: ;*getfield seed {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@1 (line 205)
  0x00007f7769c9e118: 8b7e 1848 | 897c 2448 | e908 0000 

  0x00007f7769c9e124: ;*aload {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@6 (line 207)
  0x00007f7769c9e124: 0066 6690 | 488b 7c24 

  0x00007f7769c9e12c: ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@8 (line 207)
  0x00007f7769c9e12c: 4848 3b07 

  0x00007f7769c9e130: ;   {metadata(method data for {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e130: 488b c748 | b9a8 82c1 | 6877 7f00 | 0048 8381 | 3801 0000 | 01c5 fb10 | 4710 c4e1 

  0x00007f7769c9e14c: ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 104)
                      ; - java.util.Random::next@8 (line 207)
  0x00007f7769c9e14c: f97e c148 | b86d e6ec | de05 0000 | 0048 8bf0 | 488b c148 | 0faf c649 | ba0b 0000 | 0000 0000 
  0x00007f7769c9e16c: 0049 03c2 | 49ba ffff | ffff ffff | 0000 4923 | c248 8bf7 

  0x00007f7769c9e180: ;   {metadata(method data for {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e180: 48bb a882 | c168 777f | 0000 4883 | 8370 0100 | 0001 488b | d148 8bc8 

  0x00007f7769c9e198: ;*invokevirtual compareAndSet {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@32 (line 209)
  0x00007f7769c9e198: 488b f748 | 8944 2458 | 0f1f 8000 

  0x00007f7769c9e1a4: ;   {optimized virtual_call}
  0x00007f7769c9e1a4: 0000 00e8 

  0x00007f7769c9e1a8: ; ImmutableOopMap {[72]=Oop }
                      ;*invokevirtual compareAndSet {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@32 (line 209)
  0x00007f7769c9e1a8: 5901 0000 | 83f8 00b9 | 0200 0000 | 0f84 0500 | 0000 b900 

  0x00007f7769c9e1bc: ;   {metadata(method data for {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e1bc: 0000 0048 | bea8 82c1 | 6877 7f00 | 008b bef8 | 0000 0003 | f989 bef8 | 0000 0083 | f900 0f85 
  0x00007f7769c9e1dc: 0500 0000 | bf02 0000 | 0081 e7fe | 3f00 0083 | ff00 0f84 

  0x00007f7769c9e1f0: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@35 (line 209)
  0x00007f7769c9e1f0: 9100 0000 | 4d8b 9748 

  0x00007f7769c9e1f8: ; ImmutableOopMap {[72]=Oop }
                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) java.util.Random::next@35 (line 209)
                      ;   {poll}
  0x00007f7769c9e1f8: 0300 0041 | 8502 83f8 

  0x00007f7769c9e200: ;   {metadata(method data for {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e200: 0048 b9a8 | 82c1 6877 | 7f00 0048 | b8a8 0100 | 0000 0000 | 000f 840a | 0000 0048 | b8b8 0100 
  0x00007f7769c9e220: 0000 0000 | 0048 8b34 | 0148 8d76 | 0148 8934 | 010f 84f1 

  0x00007f7769c9e234: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@35 (line 209)
  0x00007f7769c9e234: feff ff48 | 8b44 2458 | 8b54 2450 | b930 0000 | 002b ca48 | d3e8 8bc0 | 4883 c470 

  0x00007f7769c9e250: ;   {poll_return}
  0x00007f7769c9e250: 5d49 3ba7 | 4003 0000 | 0f87 4800 

  0x00007f7769c9e25c: ;   {metadata({method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e25c: 0000 c349 | ba10 da0c | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9e274: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9e274: ffff e805 

  0x00007f7769c9e278: ; ImmutableOopMap {rsi=Oop }
                      ;*synchronization entry
                      ; - java.util.Random::next@-1 (line 205)
  0x00007f7769c9e278: c1b6 ffe9 | 98fe ffff 

  0x00007f7769c9e280: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9e280: e81b c6ad 

  0x00007f7769c9e284: ; ImmutableOopMap {rdi=Oop [72]=Oop }
                      ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@8 (line 207)
                      ;   {metadata({method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random')}
  0x00007f7769c9e284: ff49 ba10 | da0c 0008 | 0000 004c | 8954 2408 | 48c7 0424 | 2300 0000 

  0x00007f7769c9e29c: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9e29c: e8df c0b6 

  0x00007f7769c9e2a0: ; ImmutableOopMap {[72]=Oop }
                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) java.util.Random::next@35 (line 209)
  0x00007f7769c9e2a0: ffe9 4eff 

  0x00007f7769c9e2a4: ;   {internal_word}
  0x00007f7769c9e2a4: ffff 49ba | 51e2 c969 | 777f 0000 | 4d89 9758 

  0x00007f7769c9e2b4: ;   {runtime_call SafepointBlob}
  0x00007f7769c9e2b4: 0300 00e9 | c443 acff | 9090 498b | 87d0 0300 | 0049 c787 | d003 0000 | 0000 0000 | 49c7 87d8 
  0x00007f7769c9e2d4: 0300 0000 | 0000 0048 | 83c4 705d 

  0x00007f7769c9e2e0: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9e2e0: e91b a3ad | fff4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Stub Code]
  0x00007f7769c9e300: ;   {no_reloc}
  0x00007f7769c9e300: 0f1f 4400 

  0x00007f7769c9e304: ;   {static_stub}
  0x00007f7769c9e304: 0048 bb88 | c109 0008 

  0x00007f7769c9e30c: ;   {runtime_call I2C/C2I adapters}
  0x00007f7769c9e30c: 0000 00e9 | cd72 abff 
[Exception Handler]
  0x00007f7769c9e314: ;   {runtime_call handle_exception_from_callee Runtime1 stub}
  0x00007f7769c9e314: e8e7 adb6 

  0x00007f7769c9e318: ;   {external_word}
  0x00007f7769c9e318: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9e324: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9e324: 83e4 f0e8 | 2425 b51e 

  0x00007f7769c9e32c: ;   {section_word}
  0x00007f7769c9e32c: f449 ba2d | e3c9 6977 | 7f00 0041 

  0x00007f7769c9e338: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9e338: 52e9 e257 | acff f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     139    6       2       java.util.concurrent.atomic.AtomicLong::compareAndSet (13 bytes)
 total in heap  [0x00007f7769c9e510,0x00007f7769c9e830] = 800
 relocation     [0x00007f7769c9e670,0x00007f7769c9e698] = 40
 main code      [0x00007f7769c9e6a0,0x00007f7769c9e780] = 224
 stub code      [0x00007f7769c9e780,0x00007f7769c9e7b0] = 48
 metadata       [0x00007f7769c9e7b0,0x00007f7769c9e7b8] = 8
 scopes data    [0x00007f7769c9e7b8,0x00007f7769c9e7d8] = 32
 scopes pcs     [0x00007f7769c9e7d8,0x00007f7769c9e828] = 80
 dependencies   [0x00007f7769c9e828,0x00007f7769c9e830] = 8

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x000000080009c188} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong'
  # this:     rsi:rsi   = 'java/util/concurrent/atomic/AtomicLong'
  # parm0:    rdx:rdx   = long
  # parm1:    rcx:rcx   = long
  #           [sp+0x60]  (sp of caller)
  0x00007f7769c9e6a0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9e6b4: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9e6b4: 0f85 c6c5 | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9e6c0: 8984 2400 | c0fe ff55 | 4883 ec50 | 48b8 9081 | c168 777f | 0000 8b58 | 0883 c302 | 8958 0881 
  0x00007f7769c9e6e0: e3fe 0f00 | 0083 fb00 | 0f84 3500 

  0x00007f7769c9e6ec: ;*getstatic U {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@0 (line 151)
  0x00007f7769c9e6ec: 0000 488d | 7610 488b | c248 8bd9 | f048 0fb1 | 1eb8 0100 | 0000 0f84 | 0500 0000 | b800 0000 
  0x00007f7769c9e70c: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
  0x00007f7769c9e70c: 0083 e001 | 4883 c450 

  0x00007f7769c9e714: ;   {poll_return}
  0x00007f7769c9e714: 5d49 3ba7 | 4003 0000 | 0f87 1f00 

  0x00007f7769c9e720: ;   {metadata({method} {0x000000080009c188} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f7769c9e720: 0000 c349 | ba88 c109 | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9e738: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9e738: ffff e841 

  0x00007f7769c9e73c: ; ImmutableOopMap {rsi=Oop }
                      ;*synchronization entry
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@-1 (line 151)
  0x00007f7769c9e73c: bcb6 ffeb 

  0x00007f7769c9e740: ;   {internal_word}
  0x00007f7769c9e740: ad49 ba15 | e7c9 6977 | 7f00 004d | 8997 5803 

  0x00007f7769c9e750: ;   {runtime_call SafepointBlob}
  0x00007f7769c9e750: 0000 e929 | 3fac ff90 | 9049 8b87 | d003 0000 | 49c7 87d0 | 0300 0000 | 0000 0049 | c787 d803 
  0x00007f7769c9e770: 0000 0000 | 0000 4883 

  0x00007f7769c9e778: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9e778: c450 5de9 | 809e adff 
[Exception Handler]
  0x00007f7769c9e780: ;   {no_reloc}
  0x00007f7769c9e780: e87b a9b6 

  0x00007f7769c9e784: ;   {external_word}
  0x00007f7769c9e784: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9e790: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9e790: 83e4 f0e8 | b820 b51e 

  0x00007f7769c9e798: ;   {section_word}
  0x00007f7769c9e798: f449 ba99 | e7c9 6977 | 7f00 0041 

  0x00007f7769c9e7a4: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9e7a4: 52e9 7653 | acff f4f4 | f4f4 f4f4 
[/MachCode]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2)     142    9       4       java.util.Random::next (47 bytes)
 total in heap  [0x00007f77711d5710,0x00007f77711d5ad0] = 960
 relocation     [0x00007f77711d5870,0x00007f77711d5888] = 24
 main code      [0x00007f77711d58a0,0x00007f77711d5980] = 224
 stub code      [0x00007f77711d5980,0x00007f77711d5998] = 24
 metadata       [0x00007f77711d5998,0x00007f77711d59a8] = 16
 scopes data    [0x00007f77711d59a8,0x00007f77711d5a08] = 96
 scopes pcs     [0x00007f77711d5a08,0x00007f77711d5ab8] = 176
 dependencies   [0x00007f77711d5ab8,0x00007f77711d5ac0] = 8
 nul chk table  [0x00007f77711d5ac0,0x00007f77711d5ad0] = 16

[Constant Pool (empty)]

[MachCode]
[Entry Point]
  # {method} {0x00000008000cda10} 'next' '(I)I' in 'java/util/Random'
  # this:     rsi:rsi   = 'java/util/Random'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00007f77711d58a0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d349 3bc2 

  0x00007f77711d58b4: ;   {runtime_call ic_miss_stub}
  0x00007f77711d58b4: 0f85 c653 | 58f8 6690 | 0f1f 4000 
[Verified Entry Point]
  0x00007f77711d58c0: 8984 2400 | c0fe ff55 

  0x00007f77711d58c8: ;*synchronization entry
                      ; - java.util.Random::next@-1 (line 205)
  0x00007f77711d58c8: 4883 ec20 

  0x00007f77711d58cc: ;*getfield seed {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@1 (line 205)
  0x00007f77711d58cc: 448b 5618 

  0x00007f77711d58d0: ; implicit exception: dispatches to 0x00007f77711d5940
                      ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
  0x00007f77711d58d0: 498b 4210 | 49bb ffff | ffff ffff | 0000 49b8 | 6de6 ecde | 0500 0000 | 4c8b c84d | 0faf c849 
  0x00007f77711d58f0: 83c1 0b4d 

  0x00007f77711d58f4: ;*land {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@24 (line 208)
  0x00007f77711d58f4: 23cb f04d | 0fb1 4a10 | 400f 94c5 

  0x00007f77711d5900: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
  0x00007f77711d5900: 400f b6ed 

  0x00007f77711d5904: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@35 (line 209)
  0x00007f77711d5904: 85ed 7420 | b930 0000 | 002b ca49 | d3e9 418b 

  0x00007f77711d5914: ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@45 (line 210)
  0x00007f77711d5914: c148 83c4 

  0x00007f77711d5918: ;   {poll_return}
  0x00007f77711d5918: 205d 493b | a740 0300 | 000f 8725 | 0000 00c3 | be45 ffff | ff89 1424 | 4489 5424 | 044c 894c 
  0x00007f77711d5938: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5938: 2408 90e8 

  0x00007f77711d593c: ; ImmutableOopMap {[4]=NarrowOop }
                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) java.util.Random::next@35 (line 209)
  0x00007f77711d593c: c0de 58f8 | bef6 ffff 

  0x00007f77711d5944: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5944: ff66 90e8 

  0x00007f77711d5948: ; ImmutableOopMap {}
                      ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@8 (line 207)
  0x00007f77711d5948: b4de 58f8 

  0x00007f77711d594c: ;   {internal_word}
  0x00007f77711d594c: 49ba 1a59 | 1d71 777f | 0000 4d89 | 9758 0300 

  0x00007f77711d595c: ;   {runtime_call SafepointBlob}
  0x00007f77711d595c: 00e9 1ecd | 58f8 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
  0x00007f77711d597c: f4f4 f4f4 
[Exception Handler]
  0x00007f77711d5980: ;   {no_reloc}
  0x00007f77711d5980: e97b ed59 | f8e8 0000 | 0000 4883 

  0x00007f77711d598c: ;   {runtime_call DeoptimizationBlob}
  0x00007f77711d598c: 2c24 05e9 | 8ce1 58f8 | f4f4 f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     144    8       2       java.util.Random::nextDouble (24 bytes)
 total in heap  [0x00007f7769c9e890,0x00007f7769c9eca0] = 1040
 relocation     [0x00007f7769c9e9f0,0x00007f7769c9ea38] = 72
 constants      [0x00007f7769c9ea40,0x00007f7769c9ea60] = 32
 main code      [0x00007f7769c9ea60,0x00007f7769c9eb80] = 288
 stub code      [0x00007f7769c9eb80,0x00007f7769c9ebd0] = 80
 metadata       [0x00007f7769c9ebd0,0x00007f7769c9ebe0] = 16
 scopes data    [0x00007f7769c9ebe0,0x00007f7769c9ec18] = 56
 scopes pcs     [0x00007f7769c9ec18,0x00007f7769c9ec98] = 128
 dependencies   [0x00007f7769c9ec98,0x00007f7769c9eca0] = 8


[Constant Pool]
             Address          hex4                    hex8      
  0x00007f7769c9ea40:   0x00000000      0x3ca0000000000000      
  0x00007f7769c9ea44:   0x3ca00000                              
  0x00007f7769c9ea48:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f7769c9ea4c:   0xf4f4f4f4                              
  0x00007f7769c9ea50:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f7769c9ea54:   0xf4f4f4f4                              
  0x00007f7769c9ea58:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f7769c9ea5c:   0xf4f4f4f4                              

[MachCode]
[Entry Point]
  # {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random'
  #           [sp+0x50]  (sp of caller)
  0x00007f7769c9ea60: ;   {no_reloc}
  0x00007f7769c9ea60: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d34c 3bd0 

  0x00007f7769c9ea74: ;   {runtime_call ic_miss_stub}
  0x00007f7769c9ea74: 0f85 06c2 | abff 660f | 1f44 0000 
[Verified Entry Point]
  0x00007f7769c9ea80: 8984 2400 | c0fe ff55 | 4883 ec40 | 48ba 3882 | c168 777f | 0000 8b7a | 0883 c702 | 897a 0881 
  0x00007f7769c9eaa0: e7fe 0f00 | 0083 ff00 | 0f84 6100 

  0x00007f7769c9eaac: ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@0 (line 463)
  0x00007f7769c9eaac: 0000 ba1a | 0000 0048 | 8bfe 488b 

  0x00007f7769c9eab8: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f7769c9eab8: f748 897c 

  0x00007f7769c9eabc: ;   {optimized virtual_call}
  0x00007f7769c9eabc: 2428 90e8 

  0x00007f7769c9eac0: ; ImmutableOopMap {[40]=Oop }
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f7769c9eac0: fc6d 5307 | 4863 c0b9 | 1b00 0000 | 48d3 e0ba | 1b00 0000 | 488b 7424 

  0x00007f7769c9ead8: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f7769c9ead8: 2848 8944 

  0x00007f7769c9eadc: ;   {optimized virtual_call}
  0x00007f7769c9eadc: 2430 90e8 

  0x00007f7769c9eae0: ; ImmutableOopMap {}
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f7769c9eae0: dc6d 5307 | 4863 c048 | 8b74 2430 | 4803 f0c4 | e1fb 2ac6 

  0x00007f7769c9eaf4: ;   {section_word}
  0x00007f7769c9eaf4: c5fb 5905 | 44ff ffff | 4883 c440 

  0x00007f7769c9eb00: ;   {poll_return}
  0x00007f7769c9eb00: 5d49 3ba7 | 4003 0000 | 0f87 1f00 

  0x00007f7769c9eb0c: ;   {metadata({method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9eb0c: 0000 c349 | ba68 da0c | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9eb24: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9eb24: ffff e855 

  0x00007f7769c9eb28: ; ImmutableOopMap {rsi=Oop }
                      ;*synchronization entry
                      ; - java.util.Random::nextDouble@-1 (line 463)
  0x00007f7769c9eb28: b8b6 ffeb 

  0x00007f7769c9eb2c: ;   {internal_word}
  0x00007f7769c9eb2c: 8149 ba01 | ebc9 6977 | 7f00 004d | 8997 5803 

  0x00007f7769c9eb3c: ;   {runtime_call SafepointBlob}
  0x00007f7769c9eb3c: 0000 e93d | 3bac ff90 | 9049 8b87 | d003 0000 | 49c7 87d0 | 0300 0000 | 0000 0049 | c787 d803 
  0x00007f7769c9eb5c: 0000 0000 | 0000 4883 

  0x00007f7769c9eb64: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9eb64: c440 5de9 | 949a adff | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Stub Code]
  0x00007f7769c9eb80: ;   {no_reloc}
  0x00007f7769c9eb80: 0f1f 4400 

  0x00007f7769c9eb84: ;   {static_stub}
  0x00007f7769c9eb84: 0048 bb00 | 0000 0000 

  0x00007f7769c9eb8c: ;   {runtime_call}
  0x00007f7769c9eb8c: 0000 00e9 | fbff ffff 

  0x00007f7769c9eb94: ;   {static_stub}
  0x00007f7769c9eb94: 9048 bb00 | 0000 0000 

  0x00007f7769c9eb9c: ;   {runtime_call}
  0x00007f7769c9eb9c: 0000 00e9 | fbff ffff 
[Exception Handler]
  0x00007f7769c9eba4: ;   {runtime_call handle_exception_from_callee Runtime1 stub}
  0x00007f7769c9eba4: e857 a5b6 

  0x00007f7769c9eba8: ;   {external_word}
  0x00007f7769c9eba8: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9ebb4: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9ebb4: 83e4 f0e8 | 941c b51e 

  0x00007f7769c9ebbc: ;   {section_word}
  0x00007f7769c9ebbc: f449 babd | ebc9 6977 | 7f00 0041 

  0x00007f7769c9ebc8: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9ebc8: 52e9 524f | acff f4f4 
[/MachCode]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2)     150   10       4       java.util.Random::nextDouble (24 bytes)
 total in heap  [0x00007f77711d5b10,0x00007f77711d60b8] = 1448
 relocation     [0x00007f77711d5c70,0x00007f77711d5c90] = 32
 constants      [0x00007f77711d5ca0,0x00007f77711d5cc0] = 32
 main code      [0x00007f77711d5cc0,0x00007f77711d5e20] = 352
 stub code      [0x00007f77711d5e20,0x00007f77711d5e38] = 24
 metadata       [0x00007f77711d5e38,0x00007f77711d5e58] = 32
 scopes data    [0x00007f77711d5e58,0x00007f77711d5f40] = 232
 scopes pcs     [0x00007f77711d5f40,0x00007f77711d6090] = 336
 dependencies   [0x00007f77711d6090,0x00007f77711d60a0] = 16
 nul chk table  [0x00007f77711d60a0,0x00007f77711d60b8] = 24


[Constant Pool]
             Address          hex4                    hex8      
  0x00007f77711d5ca0:   0x00000000      0x3ca0000000000000      
  0x00007f77711d5ca4:   0x3ca00000                              
  0x00007f77711d5ca8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f77711d5cac:   0xf4f4f4f4                              
  0x00007f77711d5cb0:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f77711d5cb4:   0xf4f4f4f4                              
  0x00007f77711d5cb8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f77711d5cbc:   0xf4f4f4f4                              

[MachCode]
[Entry Point]
  # {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random'
  #           [sp+0x40]  (sp of caller)
  0x00007f77711d5cc0: ;   {no_reloc}
  0x00007f77711d5cc0: 448b 5608 | 49bb 0000 | 0000 0800 | 0000 4d03 | d349 3bc2 

  0x00007f77711d5cd4: ;   {runtime_call ic_miss_stub}
  0x00007f77711d5cd4: 0f85 a64f | 58f8 6690 | 0f1f 4000 
[Verified Entry Point]
  0x00007f77711d5ce0: 8984 2400 | c0fe ff55 

  0x00007f77711d5ce8: ;*synchronization entry
                      ; - java.util.Random::nextDouble@-1 (line 463)
  0x00007f77711d5ce8: 4883 ec30 | 488b de44 

  0x00007f77711d5cf0: ;*getfield seed {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@1 (line 205)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5cf0: 8b56 1849 

  0x00007f77711d5cf4: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5cf4: 8b42 1049 | bbff ffff | ffff ff00 | 0049 b86d | e6ec de05 | 0000 004c | 8bc8 4d0f | afc8 4983 
  0x00007f77711d5d14: ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@20 (line 208)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5d14: c10b 498b 

  0x00007f77711d5d18: ;*land {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@24 (line 208)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5d18: c949 23cb | f049 0fb1 | 4a10 400f | 94c5 400f 

  0x00007f77711d5d28: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5d28: b6ed 85ed 

  0x00007f77711d5d2c: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@35 (line 209)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5d2c: 7473 8b4e 

  0x00007f77711d5d30: ;*getfield seed {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@1 (line 205)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d30: 1848 8b41 

  0x00007f77711d5d34: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d34: 104c 8bd0 | 4d0f afd0 | 49c1 e916 

  0x00007f77711d5d40: ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@20 (line 208)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d40: 4983 c20b | 4d8b c24d 

  0x00007f77711d5d48: ;*land {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@24 (line 208)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d48: 23c3 f04c | 0fb1 4110 | 400f 94c7 

  0x00007f77711d5d54: ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                      ; - java.util.Random::next@32 (line 209)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d54: 400f b6ff | 4981 e1ff | ffff 0345 | 8bd9 4963 | eb48 c1e5 

  0x00007f77711d5d68: ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@9 (line 463)
  0x00007f77711d5d68: 1b85 ff74 

  0x00007f77711d5d6c: ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@35 (line 209)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5d6c: 4f49 c1ea | 1549 81e2 | ffff ff07 | 458b da4d | 63d3 4c03 | d5c4 c1fb 

  0x00007f77711d5d84: ;   {section_word}
  0x00007f77711d5d84: 2ac2 c5fb | 5905 12ff 

  0x00007f77711d5d8c: ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@22 (line 463)
  0x00007f77711d5d8c: ffff 4883 

  0x00007f77711d5d90: ;   {poll_return}
  0x00007f77711d5d90: c430 5d49 | 3ba7 4003 | 0000 0f87 | 4c00 0000 | c3be 45ff | ffff 4889 | 1c24 4489 | 5424 0848 
  0x00007f77711d5db0: 894c 2410 

  0x00007f77711d5db4: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5db4: 6666 90e8 

  0x00007f77711d5db8: ; ImmutableOopMap {[0]=Oop [8]=NarrowOop }
                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) java.util.Random::next@35 (line 209)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5db8: 44da 58f8 | be45 ffff | ff4c 8904 | 2489 4c24 | 0889 7c24 

  0x00007f77711d5dcc: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5dcc: 0c66 90e8 

  0x00007f77711d5dd0: ; ImmutableOopMap {[8]=NarrowOop }
                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) java.util.Random::next@35 (line 209)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5dd0: 2cda 58f8 | bef6 ffff 

  0x00007f77711d5dd8: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5dd8: ff66 90e8 

  0x00007f77711d5ddc: ; ImmutableOopMap {}
                      ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@8 (line 207)
                      ; - java.util.Random::nextDouble@3 (line 463)
  0x00007f77711d5ddc: 20da 58f8 | bef6 ffff 

  0x00007f77711d5de4: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d5de4: ff66 90e8 

  0x00007f77711d5de8: ; ImmutableOopMap {}
                      ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::next@8 (line 207)
                      ; - java.util.Random::nextDouble@13 (line 463)
  0x00007f77711d5de8: 14da 58f8 

  0x00007f77711d5dec: ;   {internal_word}
  0x00007f77711d5dec: 49ba 935d | 1d71 777f | 0000 4d89 | 9758 0300 

  0x00007f77711d5dfc: ;   {runtime_call SafepointBlob}
  0x00007f77711d5dfc: 00e9 7ec8 | 58f8 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
  0x00007f77711d5e1c: f4f4 f4f4 
[Exception Handler]
  0x00007f77711d5e20: ;   {no_reloc}
  0x00007f77711d5e20: e9db e859 | f8e8 0000 | 0000 4883 

  0x00007f77711d5e2c: ;   {runtime_call DeoptimizationBlob}
  0x00007f77711d5e2c: 2c24 05e9 | ecdc 58f8 | f4f4 f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     154   11 %     3       MULT::init @ 17 (57 bytes)
 total in heap  [0x00007f7769c9ed10,0x00007f7769c9fb20] = 3600
 relocation     [0x00007f7769c9ee70,0x00007f7769c9ef38] = 200
 constants      [0x00007f7769c9ef40,0x00007f7769c9ef60] = 32
 main code      [0x00007f7769c9ef60,0x00007f7769c9f560] = 1536
 stub code      [0x00007f7769c9f560,0x00007f7769c9f5e0] = 128
 oops           [0x00007f7769c9f5e0,0x00007f7769c9f5e8] = 8
 metadata       [0x00007f7769c9f5e8,0x00007f7769c9f608] = 32
 scopes data    [0x00007f7769c9f608,0x00007f7769c9f7a0] = 408
 scopes pcs     [0x00007f7769c9f7a0,0x00007f7769c9fac0] = 800
 dependencies   [0x00007f7769c9fac0,0x00007f7769c9fad0] = 16
 nul chk table  [0x00007f7769c9fad0,0x00007f7769c9fb20] = 80


[Constant Pool]
             Address          hex4                    hex8      
  0x00007f7769c9ef40:   0x00000000      0x3ca0000000000000      
  0x00007f7769c9ef44:   0x3ca00000                              
  0x00007f7769c9ef48:   0x00000000      0x3ca0000000000000      
  0x00007f7769c9ef4c:   0x3ca00000                              
  0x00007f7769c9ef50:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f7769c9ef54:   0xf4f4f4f4                              
  0x00007f7769c9ef58:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
  0x00007f7769c9ef5c:   0xf4f4f4f4                              

[MachCode]
[Verified Entry Point]
  # {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT'
  0x00007f7769c9ef60: ;   {no_reloc}
  0x00007f7769c9ef60: 8984 2400 | c0fe ff55 | 4881 ecc0 

  0x00007f7769c9ef6c: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9ef6c: 0000 0048 | ba10 0a00 | 6977 7f00 | 008b baf4 | 0000 0083 | c702 89ba | f400 0000 | 81e7 fe07 
  0x00007f7769c9ef8c: 0000 83ff | 000f 8455 | 0400 0089 

  0x00007f7769c9ef98: ;   {metadata('java/util/Random')}
  0x00007f7769c9ef98: 7424 5848 | bae0 cf0c | 0008 0000 | 0049 8b87 | 0801 0000 | 488d 7820 | 493b bf18 | 0100 000f 
  0x00007f7769c9efb8: 8750 0400 | 0049 89bf | 0801 0000 | 48c7 0001 | 0000 0048 | 8bca 49ba | 0000 0000 | 0800 0000 
  0x00007f7769c9efd8: 492b ca89 | 4808 4833 | c989 480c | 4833 c948 | 8948 1048 

  0x00007f7769c9efec: ;*new {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@0 (line 15)
  0x00007f7769c9efec: 8948 1848 

  0x00007f7769c9eff0: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9eff0: 8bf0 48bf | 100a 0069 | 777f 0000 | 4883 8738 | 0100 0001 

  0x00007f7769c9f004: ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@4 (line 15)
  0x00007f7769c9f004: 488b f048 | 8944 2450 

  0x00007f7769c9f00c: ;   {optimized virtual_call}
  0x00007f7769c9f00c: 6666 90e8 

  0x00007f7769c9f010: ; ImmutableOopMap {[80]=Oop }
                      ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@4 (line 15)
  0x00007f7769c9f010: ecc1 abff | 488b 4424 | 508b 7424 | 58bf 0000 | 0000 e924 

  0x00007f7769c9f024: ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@10 (line 16)
  0x00007f7769c9f024: 0300 0090 | bb00 0000 | 00e9 9d02 

  0x00007f7769c9f030: ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@17 (line 17)
  0x00007f7769c9f030: 0000 660f | 1f44 0000 | 899c 2480 | 0000 0089 | b424 9000 

  0x00007f7769c9f044: ;   {oop(a 'java/lang/Class'{0x00000000c6d00810} = 'MULT')}
  0x00007f7769c9f044: 0000 48b9 | 1008 d0c6 | 0000 0000 

  0x00007f7769c9f050: ;*getstatic A {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@22 (line 18)
  0x00007f7769c9f050: 8b51 703b | 7a0c 0f83 | c803 0000 | 4c63 c746 

  0x00007f7769c9f060: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@26 (line 18)
  0x00007f7769c9f060: 8b44 8210 

  0x00007f7769c9f064: ; implicit exception: dispatches to 0x00007f7769c9f432
                      ;*invokevirtual nextDouble {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f064: 483b 0048 

  0x00007f7769c9f068: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f068: 8bd0 49b9 | 100a 0069 | 777f 0000 | 4983 81a0 | 0100 0001 

  0x00007f7769c9f07c: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f07c: 48ba 8886 | c168 777f | 0000 448b | 8af4 0000 | 0041 83c1 | 0244 898a | f400 0000 | 4181 e1fe 
  0x00007f7769c9f09c: ff1f 0041 | 83f9 000f | 848e 0300 | 0048 8bd0 

  0x00007f7769c9f0ac: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f0ac: 49b9 8886 | c168 777f | 0000 4983 | 8150 0100 | 0001 ba1a | 0000 0048 

  0x00007f7769c9f0c4: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f0c4: 8bf0 89bc | 2484 0000 | 0048 898c | 2488 0000 | 004c 8944 | 2478 4889 

  0x00007f7769c9f0dc: ;   {optimized virtual_call}
  0x00007f7769c9f0dc: 4424 70e8 

  0x00007f7769c9f0e0: ; ImmutableOopMap {[120]=Oop [136]=Oop [112]=Oop }
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f0e0: dc67 5307 | 488b 4c24 

  0x00007f7769c9f0e8: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f0e8: 7048 ba88 | 86c1 6877 | 7f00 0048 | 8382 8801 | 0000 0148 | 63c0 b91b | 0000 0048 | d3e0 ba1b 
  0x00007f7769c9f108: 0000 0048 

  0x00007f7769c9f10c: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f10c: 8b74 2470 | 4889 8424 | 9800 0000 | 0f1f 8000 

  0x00007f7769c9f11c: ;   {optimized virtual_call}
  0x00007f7769c9f11c: 0000 00e8 

  0x00007f7769c9f120: ; ImmutableOopMap {[120]=Oop [136]=Oop [112]=Oop }
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f120: 9c67 5307 | 4863 c048 | 8b94 2498 | 0000 0048 | 03d0 c4e1 

  0x00007f7769c9f134: ;   {section_word}
  0x00007f7769c9f134: fb2a c2c5 | fb59 0501 | feff ff4c | 8b44 2478 | 8b9c 2480 | 0000 0041 | 3b58 0c0f | 830d 0300 
  0x00007f7769c9f154: 0048 63d3 | c4c1 7b11 

  0x00007f7769c9f15c: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@32 (line 18)
  0x00007f7769c9f15c: 44d0 1048 | 8b8c 2488 | 0000 008b 

  0x00007f7769c9f168: ;*getstatic B {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@33 (line 19)
  0x00007f7769c9f168: 5174 8bbc | 2484 0000 | 003b 7a0c | 0f83 0003 | 0000 4863 | f78b 44b2 

  0x00007f7769c9f180: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@37 (line 19)
  0x00007f7769c9f180: 1048 8b54 

  0x00007f7769c9f184: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f184: 2470 48be | 100a 0069 | 777f 0000 | 4883 86d8 | 0100 0001 

  0x00007f7769c9f198: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f198: 48ba 8886 | c168 777f | 0000 8bb2 | f400 0000 | 83c6 0289 | b2f4 0000 | 0081 e6fe | ff1f 0083 
  0x00007f7769c9f1b8: fe00 0f84 | c802 0000 | 488b 5424 

  0x00007f7769c9f1c4: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f1c4: 7048 be88 | 86c1 6877 | 7f00 0048 | 8386 5001 | 0000 01ba | 1a00 0000 | 488b 7424 

  0x00007f7769c9f1e0: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
                      ; - MULT::init@40 (line 19)
  0x00007f7769c9f1e0: 7089 bc24 | 8400 0000 | 899c 2480 | 0000 0048 | 8984 24a0 

  0x00007f7769c9f1f4: ;   {optimized virtual_call}
  0x00007f7769c9f1f4: 0000 00e8 

  0x00007f7769c9f1f8: ; ImmutableOopMap {[112]=Oop [160]=Oop }
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@3 (line 463)
                      ; - MULT::init@40 (line 19)
  0x00007f7769c9f1f8: c466 5307 | 488b 4c24 

  0x00007f7769c9f200: ;   {metadata(method data for {method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f200: 7048 ba88 | 86c1 6877 | 7f00 0048 | 8382 8801 | 0000 0148 | 63c0 b91b | 0000 0048 | d3e0 ba1b 
  0x00007f7769c9f220: 0000 0048 

  0x00007f7769c9f224: ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
                      ; - MULT::init@40 (line 19)
  0x00007f7769c9f224: 8b74 2470 | 4889 8424 | a800 0000 | 0f1f 8000 

  0x00007f7769c9f234: ;   {optimized virtual_call}
  0x00007f7769c9f234: 0000 00e8 

  0x00007f7769c9f238: ; ImmutableOopMap {[112]=Oop [160]=Oop }
                      ;*invokevirtual next {reexecute=0 rethrow=0 return_oop=0}
                      ; - java.util.Random::nextDouble@13 (line 463)
                      ; - MULT::init@40 (line 19)
  0x00007f7769c9f238: 8466 5307 | 4863 c048 | 8bb4 24a8 | 0000 0048 | 03f0 c4e1 

  0x00007f7769c9f24c: ;   {section_word}
  0x00007f7769c9f24c: fb2a c6c5 | fb59 05f1 | fcff ff48 | 8b84 24a0 | 0000 008b | 9c24 8000 | 0000 3b58 | 0c0f 8344 
  0x00007f7769c9f26c: 0200 0048 | 63f3 c5fb 

  0x00007f7769c9f274: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@43 (line 19)
  0x00007f7769c9f274: 1144 f010 

  0x00007f7769c9f278: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f278: ffc3 48be | 100a 0069 | 777f 0000 | 8bbe f800 | 0000 83c7 | 0289 bef8 | 0000 0081 | e7fe 3f00 
  0x00007f7769c9f298: 0083 ff00 | 0f84 1f02 

  0x00007f7769c9f2a0: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@47 (line 17)
  0x00007f7769c9f2a0: 0000 4d8b | 9748 0300 

  0x00007f7769c9f2a8: ; ImmutableOopMap {[112]=Oop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::init@47 (line 17)
                      ;   {poll}
  0x00007f7769c9f2a8: 0041 8502 

  0x00007f7769c9f2ac: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f2ac: 48be 100a | 0069 777f | 0000 ff86 

  0x00007f7769c9f2b8: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@47 (line 17)
  0x00007f7769c9f2b8: f801 0000 | 8bbc 2484 | 0000 0048 | 8b44 2470 | 8bb4 2490 | 0000 003b 

  0x00007f7769c9f2d0: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f2d0: de48 ba10 | 0a00 6977 | 7f00 0048 | b978 0100 | 0000 0000 | 000f 8c0a | 0000 0048 | b968 0100 
  0x00007f7769c9f2f0: 0000 0000 | 004c 8b04 | 0a4d 8d40 | 014c 8904 | 0a0f 8c31 

  0x00007f7769c9f304: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@19 (line 17)
  0x00007f7769c9f304: fdff ffff 

  0x00007f7769c9f308: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f308: c748 bb10 | 0a00 6977 | 7f00 008b | 93f8 0000 | 0083 c202 | 8993 f800 | 0000 81e2 | fe3f 0000 
  0x00007f7769c9f328: 83fa 000f | 84b1 0100 

  0x00007f7769c9f330: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@53 (line 16)
  0x00007f7769c9f330: 004d 8b97 

  0x00007f7769c9f334: ; ImmutableOopMap {rax=Oop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::init@53 (line 16)
  0x00007f7769c9f334: 4803 0000 

  0x00007f7769c9f338: ;   {poll}
  0x00007f7769c9f338: 4185 0248 | bb10 0a00 | 6977 7f00 | 00ff 8310 

  0x00007f7769c9f348: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@53 (line 16)
  0x00007f7769c9f348: 0200 003b 

  0x00007f7769c9f34c: ;   {metadata(method data for {method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f34c: fe48 bb10 | 0a00 6977 | 7f00 0048 | ba58 0100 | 0000 0000 | 000f 8c0a | 0000 0048 | ba48 0100 
  0x00007f7769c9f36c: 0000 0000 | 0048 8b0c | 1348 8d49 | 0148 890c | 130f 8ca5 

  0x00007f7769c9f380: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@12 (line 16)
  0x00007f7769c9f380: fcff ff48 | 81c4 c000 

  0x00007f7769c9f388: ;   {poll_return}
  0x00007f7769c9f388: 0000 5d49 | 3ba7 4003 | 0000 0f87 | 6b01 0000 

  0x00007f7769c9f398: ;*return {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@56 (line 22)
  0x00007f7769c9f398: c389 8424 | 00c0 feff | 5548 81ec | c000 0000 | 8b5e 1848 | 8b46 108b | 5608 8b0e | 488b fe89 
  0x00007f7769c9f3b8: 5c24 6448 | 8944 2468 | 8954 2460 | 894c 245c 

  0x00007f7769c9f3c8: ;   {runtime_call SharedRuntime::OSR_migration_end(long*)}
  0x00007f7769c9f3c8: e8b3 1ad2 | 1e8b 4c24 | 5c48 8bd9 | 8b54 2460 | 488b fa48 | 8b44 2468 | 8b54 2464 | 488b f2e9 
  0x00007f7769c9f3e8: e3fe ffff 

  0x00007f7769c9f3ec: ;   {metadata({method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f3ec: 49ba 6005 | 0069 777f | 0000 4c89 | 5424 0848 | c704 24ff 

  0x00007f7769c9f400: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9f400: ffff ffe8 

  0x00007f7769c9f404: ; ImmutableOopMap {}
                      ;*synchronization entry
                      ; - MULT::init@-1 (line 15)
  0x00007f7769c9f404: 78af b6ff | e98a fbff | ff48 8bd2 

  0x00007f7769c9f410: ;   {runtime_call fast_new_instance Runtime1 stub}
  0x00007f7769c9f410: e8eb a9ad 

  0x00007f7769c9f414: ; ImmutableOopMap {}
                      ;*new {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@0 (line 15)
  0x00007f7769c9f414: ffe9 d5fb 

  0x00007f7769c9f418: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f418: ffff e881 

  0x00007f7769c9f41c: ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@26 (line 18)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f41c: b4ad ffe8 

  0x00007f7769c9f420: ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@26 (line 18)
  0x00007f7769c9f420: 7cb4 adff | 4889 3c24 | 4889 5424 

  0x00007f7769c9f42c: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769c9f42c: 08e8 ee8b 

  0x00007f7769c9f430: ; ImmutableOopMap {rax=Oop rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@26 (line 18)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f430: adff e869 

  0x00007f7769c9f434: ; ImmutableOopMap {rax=Oop rcx=Oop r8=Oop }
                      ;*invokevirtual nextDouble {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@29 (line 18)
                      ;   {metadata({method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f434: b4ad ff49 | ba68 da0c | 0008 0000 | 004c 8954 | 2408 48c7 | 0424 ffff 

  0x00007f7769c9f44c: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9f44c: ffff e82d 

  0x00007f7769c9f450: ; ImmutableOopMap {rax=Oop rcx=Oop r8=Oop }
                      ;*synchronization entry
                      ; - java.util.Random::nextDouble@-1 (line 463)
                      ; - MULT::init@29 (line 18)
  0x00007f7769c9f450: afb6 ffe9 | 51fc ffff 

  0x00007f7769c9f458: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f458: e843 b4ad 

  0x00007f7769c9f45c: ; ImmutableOopMap {[136]=Oop [112]=Oop r8=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@32 (line 18)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f45c: ffe8 3eb4 

  0x00007f7769c9f460: ; ImmutableOopMap {[136]=Oop [112]=Oop r8=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@32 (line 18)
  0x00007f7769c9f460: adff 4889 | 1c24 4c89 

  0x00007f7769c9f468: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769c9f468: 4424 08e8 

  0x00007f7769c9f46c: ; ImmutableOopMap {[136]=Oop [112]=Oop r8=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@32 (line 18)
  0x00007f7769c9f46c: b08b adff 

  0x00007f7769c9f470: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f470: e82b b4ad 

  0x00007f7769c9f474: ; ImmutableOopMap {[112]=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@37 (line 19)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f474: ffe8 26b4 

  0x00007f7769c9f478: ; ImmutableOopMap {[112]=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@37 (line 19)
  0x00007f7769c9f478: adff 4889 | 3c24 4889 

  0x00007f7769c9f480: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769c9f480: 5424 08e8 

  0x00007f7769c9f484: ; ImmutableOopMap {[112]=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@37 (line 19)
  0x00007f7769c9f484: 988b adff 

  0x00007f7769c9f488: ;   {metadata({method} {0x00000008000cda68} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f7769c9f488: 49ba 68da | 0c00 0800 | 0000 4c89 | 5424 0848 | c704 24ff 

  0x00007f7769c9f49c: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9f49c: ffff ffe8 

  0x00007f7769c9f4a0: ; ImmutableOopMap {[112]=Oop rax=Oop }
                      ;*synchronization entry
                      ; - java.util.Random::nextDouble@-1 (line 463)
                      ; - MULT::init@40 (line 19)
  0x00007f7769c9f4a0: dcae b6ff | e917 fdff 

  0x00007f7769c9f4a8: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f4a8: ffe8 f2b3 

  0x00007f7769c9f4ac: ; ImmutableOopMap {[112]=Oop rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@43 (line 19)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769c9f4ac: adff e8ed 

  0x00007f7769c9f4b0: ; ImmutableOopMap {[112]=Oop rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@43 (line 19)
  0x00007f7769c9f4b0: b3ad ff48 | 891c 2448 | 8944 2408 

  0x00007f7769c9f4bc: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769c9f4bc: e85f 8bad 

  0x00007f7769c9f4c0: ; ImmutableOopMap {[112]=Oop rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::init@43 (line 19)
                      ;   {metadata({method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f4c0: ff49 ba60 | 0500 6977 | 7f00 004c | 8954 2408 | 48c7 0424 | 2f00 0000 

  0x00007f7769c9f4d8: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9f4d8: e8a3 aeb6 

  0x00007f7769c9f4dc: ; ImmutableOopMap {[112]=Oop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::init@47 (line 17)
  0x00007f7769c9f4dc: ffe9 c0fd 

  0x00007f7769c9f4e0: ;   {metadata({method} {0x00007f7769000560} 'init' '(I)V' in 'MULT')}
  0x00007f7769c9f4e0: ffff 49ba | 6005 0069 | 777f 0000 | 4c89 5424 | 0848 c704 | 2435 0000 

  0x00007f7769c9f4f8: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769c9f4f8: 00e8 82ae 

  0x00007f7769c9f4fc: ; ImmutableOopMap {rax=Oop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::init@53 (line 16)
  0x00007f7769c9f4fc: b6ff e92e 

  0x00007f7769c9f500: ;   {internal_word}
  0x00007f7769c9f500: feff ff49 | ba8b f3c9 | 6977 7f00 | 004d 8997 | 5803 0000 

  0x00007f7769c9f514: ;   {runtime_call SafepointBlob}
  0x00007f7769c9f514: e967 31ac | ff90 9049 | 8b87 d003 | 0000 49c7 | 87d0 0300 | 0000 0000 | 0049 c787 | d803 0000 
  0x00007f7769c9f534: 0000 0000 | 4881 c4c0 | 0000 005d 

  0x00007f7769c9f540: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769c9f540: e9bb 90ad | fff4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Stub Code]
  0x00007f7769c9f560: ;   {no_reloc}
  0x00007f7769c9f560: 0f1f 4400 

  0x00007f7769c9f564: ;   {static_stub}
  0x00007f7769c9f564: 0048 bb00 | 0000 0000 

  0x00007f7769c9f56c: ;   {runtime_call}
  0x00007f7769c9f56c: 0000 00e9 | fbff ffff 

  0x00007f7769c9f574: ;   {static_stub}
  0x00007f7769c9f574: 9048 bb00 | 0000 0000 

  0x00007f7769c9f57c: ;   {runtime_call}
  0x00007f7769c9f57c: 0000 00e9 | fbff ffff 

  0x00007f7769c9f584: ;   {static_stub}
  0x00007f7769c9f584: 9048 bb00 | 0000 0000 

  0x00007f7769c9f58c: ;   {runtime_call}
  0x00007f7769c9f58c: 0000 00e9 | fbff ffff 

  0x00007f7769c9f594: ;   {static_stub}
  0x00007f7769c9f594: 9048 bb00 | 0000 0000 

  0x00007f7769c9f59c: ;   {runtime_call}
  0x00007f7769c9f59c: 0000 00e9 | fbff ffff 

  0x00007f7769c9f5a4: ;   {static_stub}
  0x00007f7769c9f5a4: 9048 bb00 | 0000 0000 

  0x00007f7769c9f5ac: ;   {runtime_call}
  0x00007f7769c9f5ac: 0000 00e9 | fbff ffff 
[Exception Handler]
  0x00007f7769c9f5b4: ;   {runtime_call handle_exception_from_callee Runtime1 stub}
  0x00007f7769c9f5b4: e847 9bb6 

  0x00007f7769c9f5b8: ;   {external_word}
  0x00007f7769c9f5b8: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769c9f5c4: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769c9f5c4: 83e4 f0e8 | 8412 b51e 

  0x00007f7769c9f5cc: ;   {section_word}
  0x00007f7769c9f5cc: f449 bacd | f5c9 6977 | 7f00 0041 

  0x00007f7769c9f5d8: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769c9f5d8: 52e9 4245 | acff f4f4 
[/MachCode]

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1)     169   12 %     3       MULT::mmult @ 24 (73 bytes)
 total in heap  [0x00007f7769c9fb90,0x00007f7769ca07e0] = 3152
 relocation     [0x00007f7769c9fcf0,0x00007f7769c9fd78] = 136
 main code      [0x00007f7769c9fd80,0x00007f7769ca0220] = 1184
 stub code      [0x00007f7769ca0220,0x00007f7769ca0250] = 48
 oops           [0x00007f7769ca0250,0x00007f7769ca0258] = 8
 metadata       [0x00007f7769ca0258,0x00007f7769ca0260] = 8
 scopes data    [0x00007f7769ca0260,0x00007f7769ca0380] = 288
 scopes pcs     [0x00007f7769ca0380,0x00007f7769ca0750] = 976
 dependencies   [0x00007f7769ca0750,0x00007f7769ca0758] = 8
 nul chk table  [0x00007f7769ca0758,0x00007f7769ca07e0] = 136

[Constant Pool (empty)]

[MachCode]
[Verified Entry Point]
  # {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT'
  0x00007f7769c9fd80: 8984 2400 | c0fe ff55 | 4883 ec60 

  0x00007f7769c9fd8c: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9fd8c: 48bf b00c | 0069 777f | 0000 8b9f | f400 0000 | 83c3 0289 | 9ff4 0000 | 0081 e3fe | 0700 0083 
  0x00007f7769c9fdac: fb00 0f84 

  0x00007f7769c9fdb0: ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@0 (line 25)
  0x00007f7769c9fdb0: d902 0000 | bf00 0000 

  0x00007f7769c9fdb8: ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@2 (line 25)
  0x00007f7769c9fdb8: 000f 1f80 | 0000 0000 

  0x00007f7769c9fdc0: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9fdc0: 3bfe 48bb | b00c 0069 | 777f 0000 | 48b8 3801 | 0000 0000 | 0000 0f8d | 0a00 0000 | 48b8 4801 
  0x00007f7769c9fde0: 0000 0000 | 0000 488b | 1403 488d | 5201 4889 | 1403 0f8d 

  0x00007f7769c9fdf4: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@4 (line 25)
  0x00007f7769c9fdf4: 3502 0000 | bb00 0000 | 00e9 aa01 

  0x00007f7769c9fe00: ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@9 (line 26)
  0x00007f7769c9fe00: 0000 660f | 1f44 0000 

  0x00007f7769c9fe08: ;   {oop(a 'java/lang/Class'{0x00000000c6d00810} = 'MULT')}
  0x00007f7769c9fe08: 48b8 1008 | d0c6 0000 | 0000 8b40 

  0x00007f7769c9fe14: ;*getstatic C {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@14 (line 27)
  0x00007f7769c9fe14: 783b 780c | 0f83 9a02 | 0000 4863 | d78b 4490 

  0x00007f7769c9fe24: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
  0x00007f7769c9fe24: 103b 580c | 0f83 a202 | 0000 4863 | d349 ba00 | 0000 0000 | 0000 004c 

  0x00007f7769c9fe3c: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
  0x00007f7769c9fe3c: 8954 d010 | b800 0000 | 00e9 e600 

  0x00007f7769c9fe48: ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
  0x00007f7769c9fe48: 0000 660f | 1f44 0000 

  0x00007f7769c9fe50: ;   {oop(a 'java/lang/Class'{0x00000000c6d00810} = 'MULT')}
  0x00007f7769c9fe50: 48ba 1008 | d0c6 0000 | 0000 8b4a 

  0x00007f7769c9fe5c: ;*getstatic C {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@29 (line 29)
  0x00007f7769c9fe5c: 783b 790c | 0f83 8202 | 0000 4c63 | c742 8b4c 

  0x00007f7769c9fe6c: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
  0x00007f7769c9fe6c: 8110 3b59 | 0c0f 8389 | 0200 004c | 63c3 c4a1 | 7b10 44c1 

  0x00007f7769c9fe80: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f7769c9fe80: 1044 8b42 

  0x00007f7769c9fe84: ;*getstatic A {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@37 (line 29)
  0x00007f7769c9fe84: 7041 3b78 | 0c0f 8389 | 0200 004c | 63cf 478b 

  0x00007f7769c9fe94: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
  0x00007f7769c9fe94: 4488 1041 | 3b40 0c0f | 838f 0200 | 004c 63c8 | c481 7b10 

  0x00007f7769c9fea8: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f7769c9fea8: 4cc8 108b 

  0x00007f7769c9feac: ;*getstatic B {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@44 (line 29)
  0x00007f7769c9feac: 5274 3b42 | 0c0f 8391 | 0200 004c | 63c0 428b 

  0x00007f7769c9febc: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f7769c9febc: 5482 103b | 5a0c 0f83 | 9802 0000 | 4c63 c3c4 | a17b 1054 

  0x00007f7769c9fed0: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
  0x00007f7769c9fed0: c210 c5f3 | 59ca c5fb | 58c1 3b59 | 0c0f 838b | 0200 0048 | 63d3 c5fb 

  0x00007f7769c9fee8: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f7769c9fee8: 1144 d110 

  0x00007f7769c9feec: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9feec: ffc0 48ba | b00c 0069 | 777f 0000 | 8b8a f800 | 0000 83c1 | 0289 8af8 | 0000 0081 | e1fe 3f00 
  0x00007f7769c9ff0c: 0083 f900 | 0f84 6602 

  0x00007f7769c9ff14: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@57 (line 28)
  0x00007f7769c9ff14: 0000 4d8b | 9748 0300 

  0x00007f7769c9ff1c: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@57 (line 28)
                      ;   {poll}
  0x00007f7769c9ff1c: 0041 8502 

  0x00007f7769c9ff20: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ff20: 48ba b00c | 0069 777f | 0000 ff82 

  0x00007f7769c9ff2c: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@57 (line 28)
  0x00007f7769c9ff2c: 9801 0000 

  0x00007f7769c9ff30: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ff30: 3bc6 48ba | b00c 0069 | 777f 0000 | 48b9 8801 | 0000 0000 | 0000 0f8c | 0a00 0000 | 48b9 7801 
  0x00007f7769c9ff50: 0000 0000 | 0000 4c8b | 040a 4d8d | 4001 4c89 | 040a 0f8c 

  0x00007f7769c9ff64: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@26 (line 28)
  0x00007f7769c9ff64: e8fe ffff 

  0x00007f7769c9ff68: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ff68: ffc3 48b8 | b00c 0069 | 777f 0000 | 8b90 f800 | 0000 83c2 | 0289 90f8 | 0000 0081 | e2fe 3f00 
  0x00007f7769c9ff88: 0083 fa00 | 0f84 0b02 

  0x00007f7769c9ff90: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@63 (line 26)
  0x00007f7769c9ff90: 0000 4d8b | 9748 0300 

  0x00007f7769c9ff98: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@63 (line 26)
                      ;   {poll}
  0x00007f7769c9ff98: 0041 8502 

  0x00007f7769c9ff9c: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ff9c: 48b8 b00c | 0069 777f | 0000 ff80 

  0x00007f7769c9ffa8: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@63 (line 26)
  0x00007f7769c9ffa8: b001 0000 

  0x00007f7769c9ffac: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ffac: 3bde 48b8 | b00c 0069 | 777f 0000 | 48ba 6801 | 0000 0000 | 0000 0f8c | 0a00 0000 | 48ba 5801 
  0x00007f7769c9ffcc: 0000 0000 | 0000 488b | 0c10 488d | 4901 4889 | 0c10 0f8c 

  0x00007f7769c9ffe0: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@11 (line 26)
  0x00007f7769c9ffe0: 24fe ffff 

  0x00007f7769c9ffe4: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769c9ffe4: ffc7 48bb | b00c 0069 | 777f 0000 | 8b83 f800 | 0000 83c0 | 0289 83f8 | 0000 0081 | e0fe 3f00 
  0x00007f7769ca0004: 0083 f800 | 0f84 b001 

  0x00007f7769ca000c: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@69 (line 25)
  0x00007f7769ca000c: 0000 4d8b | 9748 0300 

  0x00007f7769ca0014: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@69 (line 25)
                      ;   {poll}
  0x00007f7769ca0014: 0041 8502 

  0x00007f7769ca0018: ;   {metadata(method data for {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769ca0018: 48bb b00c | 0069 777f | 0000 ff83 | c801 0000 | e993 fdff 

  0x00007f7769ca002c: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@69 (line 25)
  0x00007f7769ca002c: ff48 83c4 

  0x00007f7769ca0030: ;   {poll_return}
  0x00007f7769ca0030: 605d 493b | a740 0300 | 000f 87a0 

  0x00007f7769ca003c: ;*return {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@72 (line 33)
  0x00007f7769ca003c: 0100 00c3 | 8984 2400 | c0fe ff55 | 4883 ec60 | 8b5e 188b | 4610 8b56 | 088b 0e48 | 8bfe 895c 
  0x00007f7769ca005c: 2454 8944 | 2450 8954 | 244c 894c 

  0x00007f7769ca0068: ;   {runtime_call SharedRuntime::OSR_migration_end(long*)}
  0x00007f7769ca0068: 2448 e811 | 0ed2 1e8b | 4c24 4848 | 8bc1 8b54 | 244c 488b | da8b 7424 | 5048 8bfe | 8b74 2454 
  0x00007f7769ca0088: e9a3 feff 

  0x00007f7769ca008c: ;   {metadata({method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769ca008c: ff49 ba98 | 0600 6977 | 7f00 004c | 8954 2408 | 48c7 0424 | ffff ffff 

  0x00007f7769ca00a4: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769ca00a4: e8d7 a2b6 

  0x00007f7769ca00a8: ; ImmutableOopMap {}
                      ;*synchronization entry
                      ; - MULT::mmult@-1 (line 25)
  0x00007f7769ca00a8: ffe9 06fd 

  0x00007f7769ca00ac: ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00ac: ffff e8ed 

  0x00007f7769ca00b0: ; ImmutableOopMap {rax=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00b0: a7ad ffe8 

  0x00007f7769ca00b4: ; ImmutableOopMap {rax=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
  0x00007f7769ca00b4: e8a7 adff | 4889 3c24 | 4889 4424 

  0x00007f7769ca00c0: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca00c0: 08e8 5a7f 

  0x00007f7769ca00c4: ; ImmutableOopMap {rax=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00c4: adff e8d5 

  0x00007f7769ca00c8: ; ImmutableOopMap {rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00c8: a7ad ffe8 

  0x00007f7769ca00cc: ; ImmutableOopMap {rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
  0x00007f7769ca00cc: d0a7 adff | 4889 1c24 | 4889 4424 

  0x00007f7769ca00d8: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca00d8: 08e8 427f 

  0x00007f7769ca00dc: ; ImmutableOopMap {rax=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00dc: adff e8bd 

  0x00007f7769ca00e0: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00e0: a7ad ffe8 

  0x00007f7769ca00e4: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
  0x00007f7769ca00e4: b8a7 adff | 4889 3c24 | 4889 4c24 

  0x00007f7769ca00f0: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca00f0: 08e8 2a7f 

  0x00007f7769ca00f4: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00f4: adff e8a5 

  0x00007f7769ca00f8: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca00f8: a7ad ffe8 

  0x00007f7769ca00fc: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f7769ca00fc: a0a7 adff | 4889 1c24 | 4889 4c24 

  0x00007f7769ca0108: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0108: 08e8 127f 

  0x00007f7769ca010c: ; ImmutableOopMap {rdx=Oop rcx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca010c: adff e88d 

  0x00007f7769ca0110: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0110: a7ad ffe8 

  0x00007f7769ca0114: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
  0x00007f7769ca0114: 88a7 adff | 4889 3c24 | 4c89 4424 

  0x00007f7769ca0120: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0120: 08e8 fa7e 

  0x00007f7769ca0124: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0124: adff e875 

  0x00007f7769ca0128: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0128: a7ad ffe8 

  0x00007f7769ca012c: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f7769ca012c: 70a7 adff | 4889 0424 | 4c89 4424 

  0x00007f7769ca0138: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0138: 08e8 e27e 

  0x00007f7769ca013c: ; ImmutableOopMap {rdx=Oop rcx=Oop r8=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca013c: adff e85d 

  0x00007f7769ca0140: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0140: a7ad ffe8 

  0x00007f7769ca0144: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f7769ca0144: 58a7 adff | 4889 0424 | 4889 5424 

  0x00007f7769ca0150: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0150: 08e8 ca7e 

  0x00007f7769ca0154: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0154: adff e845 

  0x00007f7769ca0158: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
                      ;   {runtime_call throw_null_pointer_exception Runtime1 stub}
  0x00007f7769ca0158: a7ad ffe8 

  0x00007f7769ca015c: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
  0x00007f7769ca015c: 40a7 adff | 4889 1c24 | 4889 5424 

  0x00007f7769ca0168: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0168: 08e8 b27e 

  0x00007f7769ca016c: ; ImmutableOopMap {rcx=Oop rdx=Oop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
  0x00007f7769ca016c: adff 4889 | 1c24 4889 

  0x00007f7769ca0174: ;   {runtime_call throw_range_check_failed Runtime1 stub}
  0x00007f7769ca0174: 4c24 08e8 

  0x00007f7769ca0178: ; ImmutableOopMap {rcx=Oop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f7769ca0178: a47e adff 

  0x00007f7769ca017c: ;   {metadata({method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769ca017c: 49ba 9806 | 0069 777f | 0000 4c89 | 5424 0848 | c704 2439 

  0x00007f7769ca0190: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769ca0190: 0000 00e8 

  0x00007f7769ca0194: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@57 (line 28)
  0x00007f7769ca0194: e8a1 b6ff | e979 fdff 

  0x00007f7769ca019c: ;   {metadata({method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769ca019c: ff49 ba98 | 0600 6977 | 7f00 004c | 8954 2408 | 48c7 0424 | 3f00 0000 

  0x00007f7769ca01b4: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769ca01b4: e8c7 a1b6 

  0x00007f7769ca01b8: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@63 (line 26)
  0x00007f7769ca01b8: ffe9 d4fd 

  0x00007f7769ca01bc: ;   {metadata({method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT')}
  0x00007f7769ca01bc: ffff 49ba | 9806 0069 | 777f 0000 | 4c89 5424 | 0848 c704 | 2445 0000 

  0x00007f7769ca01d4: ;   {runtime_call counter_overflow Runtime1 stub}
  0x00007f7769ca01d4: 00e8 a6a1 

  0x00007f7769ca01d8: ; ImmutableOopMap {}
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@69 (line 25)
  0x00007f7769ca01d8: b6ff e92f 

  0x00007f7769ca01dc: ;   {internal_word}
  0x00007f7769ca01dc: feff ff49 | ba32 00ca | 6977 7f00 | 004d 8997 | 5803 0000 

  0x00007f7769ca01f0: ;   {runtime_call SafepointBlob}
  0x00007f7769ca01f0: e98b 24ac | ff90 9049 | 8b87 d003 | 0000 49c7 | 87d0 0300 | 0000 0000 | 0049 c787 | d803 0000 
  0x00007f7769ca0210: 0000 0000 | 4883 c460 

  0x00007f7769ca0218: ;   {runtime_call unwind_exception Runtime1 stub}
  0x00007f7769ca0218: 5de9 e283 | adff f4f4 
[Exception Handler]
  0x00007f7769ca0220: ;   {no_reloc}
  0x00007f7769ca0220: e8db 8eb6 

  0x00007f7769ca0224: ;   {external_word}
  0x00007f7769ca0224: ff48 bf6a | 81bc 8877 | 7f00 0048 

  0x00007f7769ca0230: ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007f7769ca0230: 83e4 f0e8 | 1806 b51e 

  0x00007f7769ca0238: ;   {section_word}
  0x00007f7769ca0238: f449 ba39 | 02ca 6977 | 7f00 0041 

  0x00007f7769ca0244: ;   {runtime_call DeoptimizationBlob}
  0x00007f7769ca0244: 52e9 d638 | acff f4f4 | f4f4 f4f4 
[/MachCode]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2)     186   13 %     4       MULT::mmult @ 24 (73 bytes)
 total in heap  [0x00007f77711d6110,0x00007f77711d6fa0] = 3728
 relocation     [0x00007f77711d6270,0x00007f77711d62a8] = 56
 main code      [0x00007f77711d62c0,0x00007f77711d6820] = 1376
 stub code      [0x00007f77711d6820,0x00007f77711d6838] = 24
 oops           [0x00007f77711d6838,0x00007f77711d6840] = 8
 metadata       [0x00007f77711d6840,0x00007f77711d6848] = 8
 scopes data    [0x00007f77711d6848,0x00007f77711d6a58] = 528
 scopes pcs     [0x00007f77711d6a58,0x00007f77711d6f38] = 1248
 dependencies   [0x00007f77711d6f38,0x00007f77711d6f40] = 8
 nul chk table  [0x00007f77711d6f40,0x00007f77711d6fa0] = 96

[Constant Pool (empty)]

[MachCode]
[Verified Entry Point]
  # {method} {0x00007f7769000698} 'mmult' '(I)V' in 'MULT'
  0x00007f77711d62c0: ;   {runtime_call os::breakpoint()}
  0x00007f77711d62c0: e85b e372 | 1766 6666 | 0f1f 8400 | 0000 0000 | 8984 2400 | c0fe ff55 | 4883 ec40 | 8b6e 188b 
  0x00007f77711d62e0: 5e10 448b | 6e08 448b | 3648 8bfe | 49ba 800e | 9c88 777f | 0000 41ff 

  0x00007f77711d62f8: ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
                      ;   {oop(a 'java/lang/Class'{0x00000000c6d00810} = 'MULT')}
  0x00007f77711d62f8: d249 ba10 | 08d0 c600 | 0000 0041 

  0x00007f77711d6304: ;*getstatic C {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@29 (line 29)
  0x00007f77711d6304: 8b7a 7844 

  0x00007f77711d6308: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
  0x00007f77711d6308: 8b5f 0c45 

  0x00007f77711d630c: ;*getstatic A {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@37 (line 29)
  0x00007f77711d630c: 8b4a 7045 

  0x00007f77711d6310: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
  0x00007f77711d6310: 8b41 0c41 

  0x00007f77711d6314: ;*getstatic B {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@44 (line 29)
  0x00007f77711d6314: 8b52 748b 

  0x00007f77711d6318: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6318: 4a0c c4c1 | 796e c1c5 | f96e cf4c | 63d1 4863 | fd41 b9d0 

  0x00007f77711d632c: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@57 (line 28)
  0x00007f77711d632c: 0700 0033 

  0x00007f77711d6330: ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
  0x00007f77711d6330: f644 3bf5 | 0f8d 5c02 

  0x00007f77711d6338: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@26 (line 28)
  0x00007f77711d6338: 0000 413b | db0f 8395 | 0300 00c4 | e1f9 6ed7 | 4c89 5424 | 0889 4c24 | 0444 8904 | 24c4 c179 
  0x00007f77711d6358: 6ee3 c5f9 | 6edb 896c | 2410 c4c1 | 797e cb41 

  0x00007f77711d6368: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
  0x00007f77711d6368: 8b4c 9b10 

  0x00007f77711d636c: ; implicit exception: dispatches to 0x00007f77711d67b8
  0x00007f77711d636c: 448b 590c | 453b eb0f | 837f 0300 | 00c4 a17b 

  0x00007f77711d637c: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d637c: 1074 e910 | 413b d80f | 838f 0300 | 00c4 c179 | 7ec2 418b 

  0x00007f77711d6390: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
  0x00007f77711d6390: 6c9a 108b | 450c 443b | f00f 83ad | 0200 00c4 | a17b 106c 

  0x00007f77711d63a4: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d63a4: f510 443b | 7424 040f | 83df 0200 | 0046 8b5c 

  0x00007f77711d63b4: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d63b4: b210 458b | 530c 453b | ea0f 837d | 0300 00c4 | 8153 596c | eb10 c5d3 | 58ee c4a1 | 7b11 6ce9 
  0x00007f77711d63d4: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f77711d63d4: 1041 8bde 

  0x00007f77711d63d8: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@54 (line 28)
  0x00007f77711d63d8: ffc3 3b5c | 2410 0f8d 

  0x00007f77711d63e0: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@26 (line 28)
  0x00007f77711d63e0: 9301 0000 | 4183 c602 | 4585 f644 | 0f4c f645 | 85f6 440f | 4cf6 443b | 7424 1044 | 8b54 2410 
  0x00007f77711d6400: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6400: 450f 4ff2 | c4a1 7b10 

  0x00007f77711d6408: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d6408: 6ce9 103b | d80f 8332 | 0200 00c5 | fb10 74dd 

  0x00007f77711d6418: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d6418: 103b 5c24 | 040f 8361 | 0200 0044 

  0x00007f77711d6424: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6424: 8b54 9a10 

  0x00007f77711d6428: ; implicit exception: dispatches to 0x00007f77711d6790
  0x00007f77711d6428: 458b 420c | 453b e80f | 839b 0200 | 00c4 814b | 5974 ea10 

  0x00007f77711d643c: ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@52 (line 29)
  0x00007f77711d643c: c5cb 58ed | c4a1 7b11 

  0x00007f77711d6444: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f77711d6444: 6ce9 10ff 

  0x00007f77711d6448: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@54 (line 28)
  0x00007f77711d6448: c341 3bde 

  0x00007f77711d644c: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@26 (line 28)
  0x00007f77711d644c: 7cb6 4c63 | d0c4 c1f9 | 7ed3 4d3b | da44 8b44 | 2410 440f | 4fc0 4d63 | d04c 3b54 | 2408 440f 
  0x00007f77711d646c: 4f44 2404 | 458b d041 | ffca 453b | c241 bb00 | 0000 8045 | 0f4c d341 | 3bda 0f8d | 9700 0000 
  0x00007f77711d648c: 458b da44 | 2bdb 443b | d344 0f4c | de41 81fb | d007 0000 | 450f 47d9 | 4403 db66 | 0f1f 8400 
  0x00007f77711d64ac: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d64ac: 0000 0000 | 448b 449a 

  0x00007f77711d64b4: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d64b4: 1045 8b70 | 0cc5 fb10 

  0x00007f77711d64bc: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d64bc: 74dd 1045 | 3bee 0f83 | 1f01 0000 | c481 4b59 | 74e8 10c5 

  0x00007f77711d64d0: ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@52 (line 29)
  0x00007f77711d64d0: cb58 edc4 | a17b 116c 

  0x00007f77711d64d8: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f77711d64d8: e910 4c63 | f346 8b44 

  0x00007f77711d64e0: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d64e0: b214 418b | 780c c4a1 | 7b10 74f5 

  0x00007f77711d64ec: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d64ec: 1844 3bef | 0f83 f600 | 0000 c481 | 4b59 74e8 | 10c5 cb58 

  0x00007f77711d6500: ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@52 (line 29)
  0x00007f77711d6500: edc4 a17b 

  0x00007f77711d6504: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f77711d6504: 116c e910 

  0x00007f77711d6508: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@54 (line 28)
  0x00007f77711d6508: 83c3 0241 

  0x00007f77711d650c: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@57 (line 28)
  0x00007f77711d650c: 3bdb 7ca0 | 4d8b 9f48 

  0x00007f77711d6514: ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rbp=NarrowOop xmm0=NarrowOop xmm1=NarrowOop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@57 (line 28)
                      ;   {poll}
  0x00007f77711d6514: 0300 0041 

  0x00007f77711d6518: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@57 (line 28)
  0x00007f77711d6518: 8503 413b | da0f 8c69 | ffff ff3b | 5c24 107d 

  0x00007f77711d6528: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6528: 4e66 6690 | c4a1 7b10 

  0x00007f77711d6530: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d6530: 6ce9 103b | d80f 830a | 0100 00c5 | fb10 74dd 

  0x00007f77711d6540: ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d6540: 103b 5c24 | 040f 8339 | 0100 0044 

  0x00007f77711d654c: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d654c: 8b54 9a10 

  0x00007f77711d6550: ; implicit exception: dispatches to 0x00007f77711d6790
  0x00007f77711d6550: 458b 420c | 453b e80f | 832b 0200 | 00c4 814b | 5974 ea10 | c5cb 58ed | c4a1 7b11 

  0x00007f77711d656c: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@53 (line 29)
  0x00007f77711d656c: 6ce9 10ff 

  0x00007f77711d6570: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@54 (line 28)
  0x00007f77711d6570: c33b 5c24 

  0x00007f77711d6574: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@26 (line 28)
  0x00007f77711d6574: 107c b58b | 6c24 10c5 | f97e dbc4 | c179 7ee3 | 448b 0424 | 8b4c 2404 | 4c8b 5424 | 08c4 e1f9 
  0x00007f77711d6594: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@63 (line 26)
  0x00007f77711d6594: 7ed7 498b | 8748 0300 

  0x00007f77711d659c: ; ImmutableOopMap {rdx=NarrowOop xmm0=NarrowOop xmm1=NarrowOop }
                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                      ; - (reexecute) MULT::mmult@63 (line 26)
  0x00007f77711d659c: 0041 ffc5 

  0x00007f77711d65a0: ;*goto {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@63 (line 26)
                      ;   {poll}
  0x00007f77711d65a0: 8500 443b 

  0x00007f77711d65a4: ;*getstatic C {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@14 (line 27)
  0x00007f77711d65a4: ed7d 7941 | 3bdb 0f83 | a601 0000 | c4e1 f96e | d749 8bfa | 448b d5c5 | f97e c88b 

  0x00007f77711d65c0: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
  0x00007f77711d65c0: 6c98 108b | 450c 443b | e80f 83a1 | 0100 004e 

  0x00007f77711d65d0: ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
  0x00007f77711d65d0: 8964 ed10 | 4533 f641 | 8bea 4c8b | d7c4 e1f9 | 7ed7 e94a | fdff ff49 

  0x00007f77711d65e8: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d65e8: 8be8 eb05 

  0x00007f77711d65ec: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@54 (line 28)
  0x00007f77711d65ec: ffc3 498b 

  0x00007f77711d65f0: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d65f0: e8c5 fb11 | 7424 08c5 | fb11 2c24 | bee4 ffff | ffc5 fa11 | 5c24 1489 | 5c24 1c89 | 4c24 2044 
  0x00007f77711d6610: 896c 2424 | 4489 6c24 

  0x00007f77711d6618: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6618: 2866 90e8 

  0x00007f77711d661c: ; ImmutableOopMap {rbp=Oop [32]=NarrowOop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
  0x00007f77711d661c: e0d1 58f8 

  0x00007f77711d6620: ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@66 (line 25)
  0x00007f77711d6620: ffc3 3bdd 

  0x00007f77711d6624: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@4 (line 25)
  0x00007f77711d6624: 7d0c 85ed 

  0x00007f77711d6628: ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@11 (line 26)
  0x00007f77711d6628: 7e08 4533 | ede9 75ff 

  0x00007f77711d6630: ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
  0x00007f77711d6630: ffff 4883 

  0x00007f77711d6634: ;   {poll_return}
  0x00007f77711d6634: c440 5d49 | 3ba7 4003 | 0000 0f87 | bc01 0000 | c3c5 fb11 | 2c24 eb08 | c5fb 1134 | 2441 8bde 
  0x00007f77711d6654: bee4 ffff | ff48 8944 | 24f8 8b44 | 2410 8944 | 2408 488b | 4424 f8c5 | fa11 5c24 | 0c89 4c24 
  0x00007f77711d6674: 1844 896c | 241c 895c 

  0x00007f77711d667c: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d667c: 2420 90e8 

  0x00007f77711d6680: ; ImmutableOopMap {rbp=NarrowOop [24]=NarrowOop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d6680: 7cd1 58f8 | c5fb 1134 | 24c4 e1f9 | 7eed eb0d | c5fb 112c | 24c4 e1f9 | 7ef5 418b | debe e4ff 
  0x00007f77711d66a0: ffff 4889 | 4424 f88b | 4424 1089 | 4424 0848 | 8b44 24f8 | c5fa 115c | 240c 894c | 2418 4489 
  0x00007f77711d66c0: 6c24 1c89 | 5424 2089 

  0x00007f77711d66c8: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d66c8: 5c24 24e8 

  0x00007f77711d66cc: ; ImmutableOopMap {[24]=NarrowOop [32]=NarrowOop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d66cc: 30d1 58f8 

  0x00007f77711d66d0: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d66d0: 498b eae9 | 19ff ffff | bee4 ffff | ff44 896c | 2404 4489 | 7424 0889 | 5c24 0cc5 | fa11 4c24 
  0x00007f77711d66f0: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d66f0: 1066 90e8 

  0x00007f77711d66f4: ; ImmutableOopMap {[16]=NarrowOop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@33 (line 29)
  0x00007f77711d66f4: 08d1 58f8 | bee4 ffff | ff89 1c24 | 4489 7424 | 0844 896c | 2410 894c | 2414 4489 

  0x00007f77711d6710: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6710: 6c24 18e8 

  0x00007f77711d6714: ; ImmutableOopMap {[20]=NarrowOop }
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d6714: e8d0 58f8 | bee4 ffff | ff44 8974 | 2408 894c | 240c 4489 | 6c24 1089 | 5c24 14c5 | fb11 7424 
  0x00007f77711d6734: 18c5 fa11 

  0x00007f77711d6738: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6738: 4424 20e8 

  0x00007f77711d673c: ; ImmutableOopMap {[12]=NarrowOop [32]=NarrowOop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@41 (line 29)
  0x00007f77711d673c: c0d0 58f8 

  0x00007f77711d6740: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6740: 498b ebc5 | fb11 6c24 | 08c5 fb11 | 3424 418b | dee9 a6fe | ffff bee4 | ffff ff44 | 896c 2404 
  0x00007f77711d6760: 895c 2408 | c5fa 114c 

  0x00007f77711d6768: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6768: 240c 90e8 

  0x00007f77711d676c: ; ImmutableOopMap {[12]=NarrowOop }
                      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@18 (line 27)
  0x00007f77711d676c: 90d0 58f8 | bee4 ffff | ff44 8914 | 2489 5c24 | 0444 896c 

  0x00007f77711d6780: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6780: 240c 90e8 

  0x00007f77711d6784: ; ImmutableOopMap {rbp=NarrowOop }
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
  0x00007f77711d6784: 78d0 58f8 

  0x00007f77711d6788: ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@48 (line 29)
  0x00007f77711d6788: 498b eae9 | 61fe ffff | bef6 ffff | ff41 8bed 

  0x00007f77711d6798: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d6798: 6666 90e8 

  0x00007f77711d679c: ; ImmutableOopMap {}
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@50 (line 29)
  0x00007f77711d679c: 60d0 58f8 | bebe ffff | ff89 1c24 | 4489 6c24 | 0444 8974 

  0x00007f77711d67b0: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d67b0: 2408 90e8 

  0x00007f77711d67b4: ; ImmutableOopMap {}
                      ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
  0x00007f77711d67b4: 48d0 58f8 | bef6 ffff | ff41 8bed 

  0x00007f77711d67c0: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d67c0: 6666 90e8 

  0x00007f77711d67c4: ; ImmutableOopMap {}
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@36 (line 29)
  0x00007f77711d67c4: 38d0 58f8 | bef6 ffff | ff41 8bee 

  0x00007f77711d67d0: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d67d0: 6666 90e8 

  0x00007f77711d67d4: ; ImmutableOopMap {}
                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@43 (line 29)
  0x00007f77711d67d4: 28d0 58f8 | be76 ffff | ff89 1c24 | 4489 6c24 | 0444 8974 

  0x00007f77711d67e8: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d67e8: 2408 90e8 

  0x00007f77711d67ec: ; ImmutableOopMap {}
                      ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@24 (line 28)
  0x00007f77711d67ec: 10d0 58f8 | bef6 ffff | ff41 8bed 

  0x00007f77711d67f8: ;   {runtime_call UncommonTrapBlob}
  0x00007f77711d67f8: 6666 90e8 

  0x00007f77711d67fc: ; ImmutableOopMap {}
                      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                      ; - MULT::mmult@21 (line 27)
  0x00007f77711d67fc: 00d0 58f8 

  0x00007f77711d6800: ;   {internal_word}
  0x00007f77711d6800: 49ba 3766 | 1d71 777f | 0000 4d89 | 9758 0300 

  0x00007f77711d6810: ;   {runtime_call SafepointBlob}
  0x00007f77711d6810: 00e9 6abe | 58f8 f4f4 | f4f4 f4f4 | f4f4 f4f4 
[Exception Handler]
  0x00007f77711d6820: ;   {no_reloc}
  0x00007f77711d6820: e9db de59 | f8e8 0000 | 0000 4883 

  0x00007f77711d682c: ;   {runtime_call DeoptimizationBlob}
  0x00007f77711d682c: 2c24 05e9 | ecd2 58f8 | f4f4 f4f4 
[/MachCode]
139.76486864520993
