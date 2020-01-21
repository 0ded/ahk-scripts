#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


ToolTip, Script 1, 0, 0
Sleep, 500
ToolTip

~ScrollLock::
Script := !Script
if !Script
{
	
}
else
{
	


	
}


#If !Script
{
	
	
	
}
#If Script
{
	F2::
	{
		return
	}
	

	F1::
	{
		Run, notepad help.txt	
		return
	}

	Up::
	{
		InputBox, value, Add value, Add value (will be modifeid by amount in the next window)
		InputBox, modifer, Add modifer, Add a modifer
		valueSplit := StrSplit(value, "/")
		modSplit := StrSplit(modifer, "/")


		return
	}
	Down::
	{
		Loop % valueSplit.MaxIndex()
		{
			send, % valueSplit[A_Index]
			send, {Tab}
		}
		return
	}
	Left::
	{
		Loop % valueSplit.MaxIndex()
		{
			v := StrSplit(valueSplit[A_Index])
			m := StrSplit(modSplit[A_Index])
			out := ""
			loop % v.MaxIndex()
			{
				par := v[A_Index] - m[A_Index]
				if par < 0
				{
					par := v[A_Index-1] -1
					par = %par%9
					StringTrimRight, out, out, 1

				}
				out = %out%%par%
			}

			send, % out
			valueSplit[A_Index] := out
			
			send, {Tab}
		}
		return
	}
	Right::
	{
		Loop % valueSplit.MaxIndex()
		{
			v := StrSplit(valueSplit[A_Index])
			m := StrSplit(modSplit[A_Index])
			out := ""
			loop % v.MaxIndex()
			{
				par := v[A_Index] + m[A_Index]
				if par >= 10
				{
					StringTrimRight, out, out, 1
					par := v[A_Index-1] + 1
					par = %par%0

					
				}	
				out = %out%%par%
			}
			send, % out
			valueSplit[A_Index] := out
			
			send, {Tab}
		}
		return
	}
	



}
#If


