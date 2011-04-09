tell application "Caffeine"
	if (get active) then
		turn off
		
		tell application "Adium" to go away with message "Niet hier."
		
		tell application "iTunes" to pause
		
		tell application "Skype" to send command "SET USERSTATUS AWAY" script name "AppleScript status setter"
		
		tell application "iChat"
			set status message to "Niet hier."
			set status to away
		end tell
		
		tell application "SleepDisplay" to activate
		
		tell application "System Events"
			key code (eject) using {control down, shift down}
		end tell
	else
		turn on
		
		tell application "Adium" to go available
		
		tell application "iTunes" to play
		
		tell application "Skype" to send command "SET USERSTATUS ONLINE" script name "AppleScript status setter"
		
		tell application "iChat"
			set status message to ""
			set status to available
		end tell
	end if
end tell

-- tell application "iTunes" to pause




