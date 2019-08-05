tell application "iTerm"
	tell current window
		tell current session
			-- dailygraphics-next tool pane
			set name to "dailygraphics-next"
			set webserver to (split vertically with default profile)
			-- CHANGE path to your needs
			write text "cd ./dailygraphics-templates/"
			write text "git pull"
		end tell
		tell webserver
			-- webserver pane
			set name to "webserver"
			set graphics to (split horizontally with default profile)
			-- CHANGE path to your needs
			write text "nvm use node"
			write text "cd ./dailygraphics-next/"
			write text "git pull"
			write text "yarn install"
			write text "source ../.env"
			write text "yarn start"
		end tell
		tell graphics
			-- graphics pane
			set name to "graphics-js"
			-- CHANGE path to your needs
			write text "cd ./graphics-js/"
			write text "git pull"
			write text "yarn install"
		end tell
	end tell
end tell
