#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

EnvGet, UserHome, UserProfile

; ^    Ctrl
; !    Alt
; #    Windows Key
; +    Shift
; <    Left modifier
; >    Right modifier


; make LAlt function like Cmd for common shortcuts

<!c::Send ^{c} ; Cmd+C - copy
<!v::Send ^{v} ; Cmd+V - paste
<!x::Send ^{x} ; Cmd+X - cut
<!n::Send ^{n} ; Cmd+N - new window
<!w::Send ^{w} ; Cmd+W - close tab
<!s::Send ^{s} ; Cmd+S - save
<!t::Send ^{t} ; Cmd+T - new tab
<!r::Send ^{r} ; Cmd+R - reload
<!z::Send ^{z} ; Cmd+Z - undo
<!y::Send ^{y} ; Cmd+Y - redo
<!f::Send ^{f} ; Cmd+F - find


; n-dash
:*?:--=::
SendInput {U+2013}
return

; m-dash
:*?:==-::
SendInput {U+2014}
return

; ellipsis
:*?:...=::
SendInput …
return

; home directory expansion
:*?:~\::
SendInput %UserHome%\
return


