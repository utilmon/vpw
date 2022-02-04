#InstallKeybdHook


; PDF-XChange Editor, SumatraPDF
#If WinActive("ahk_exe PDFXEdit.exe") || WinActive("ahk_exe SumatraPDF.exe") || WinActive("ahk_exe Acrobat.exe")
mode:=0

; Position Mouse pointer and click
^#SPACE::
	WinGetActiveStats, Title, Width, Height, X, Y
	MPosX := (Width - 50)
	MPosY := (350)
	MouseMove, %MPosX%, %MPosY%
	MouseClick
	mode=0
return

; Mouse click
#space:: MouseClick

j::
	if(mode){
		Send, j
		}
	else {
		Send, {WheelDown 1}
		}
return

k::
	if(mode){
		Send, k
		}
	else {
		Send, {WheelUp 1}
		}
return

h::
	if(mode){
		Send, h
		}
	else {
		Send, {Left}
		}
return

l::
	if(mode){
		Send, l
		}
	else {
		Send, {Right}
		}
return

u::
	if(mode){
		Send, u
		}
	else {
		Send, {WheelUp 5}
		}
return

d::
	if(mode){
		Send, d
		}
	else {
		Send, {WheelDown 5}
		}
return

^h::
	Send, {Left 6}
return

^l::
	Send, {Right 6}
return

g::
	if(mode){
		Send, g
		}
	else {
		Send, {Home}
		}
return

+g::
	if(mode){
		Send, G
		}
	else {
		Send, {End 2}
		}
return

n::
	if(mode){
		Send, n
		}
	else {
		Send, {F3}
		}
return

+n::
	if(mode){
		Send, N
		}
	else {
		Send, +{F3}
		}
return

+j::
	if(mode){
		Send, J
		}
	else {
		Send, +^{Tab}
		}
return

+k::
	if(mode){
		Send, K
		}
	else {
		Send, ^{Tab}
		}
return

i::
	if(mode){
		Send, i
		}
	else {
		mode:= 1
		}
return

; Jump to page
^n::
	mode:= 1
	Send, ^+n
return

; zoom
^j::Send, ^{WheelDown 1}
^k::Send, ^{WheelUp 1}

; Go back
!h::Send, !{Left}

; Go forward
!l::Send, !{Right}

/::
	if(mode){
		Send, /
		}
	else {
		Send, ^f
		mode:= 1
		}
return

^f::
	Send, ^f
	mode := 1
return

Esc::
	mode:= 0
	Send, ^f
	Send, {Esc}
return

Enter::
	if(mode) {
		mode:=0
		Send, {Enter}
		MouseClick
		}
	else {
		Send, {F3}
	}
return

#IfWinActive
