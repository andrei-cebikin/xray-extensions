.686
.XMM

.model flat,  C

include addr.inc

_code segment byte public 'CODE' use32
	assume cs:_code
	assume ds:_code
; �������� ��� ����������
LibMain proc STDCALL instance:DWORD,reason:DWORD,unused:DWORD 
    ret
LibMain ENDP

; ������� �� ������� ����
include xrgame_stubs.asm


; ������� � ��� �����, ��� � ������� DLL ���������� ���� ������
org sec1_sec2_dist

include detail_radius_fix.asm
include detail_density_fix.asm
	
_code ENDS

end LibMain

