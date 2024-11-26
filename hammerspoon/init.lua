--- Install CLI: `hs` commands
--- Note for `hs` installation, `hs.ipc.cliInstall()` requires `hs.ipc`
--- <https://www.hammerspoon.org/docs/hs.ipc.html>
require("hs.ipc")
--- ref: <https://github.com/Hammerspoon/hammerspoon/issues/3550>
hs.ipc.cliInstall("/opt/homebrew")

--- Switcher for all windows
switcher = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true))
switcher.ui.showTitles = true
switcher.ui.textSize = 12
switcher.ui.showSelectedThumbnail = false
switcher.ui.thumbnailSize = 128

function mapCmdTab(event)
    local flags = event:getFlags()
    local chars = event:getCharacters()
    if chars == "\t" and flags:containExactly{'cmd'} then
        switcher:next()
        return true
    elseif chars == string.char(25) and flags:containExactly{'cmd','shift'} then
        switcher:previous()
        return true
    end
end
tapCmdTab = hs.eventtap.new({hs.eventtap.event.types.keyDown}, mapCmdTab)
tapCmdTab:start()


--- Define functions for change keybindings
local function keyCode(key, modifiers)
    modifiers = modifiers or {}
    return function()
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
        hs.timer.usleep(1000)
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
    end
end

local function remapKey(modifiers, key, keyCode)
    hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end


--- Customize
remapKey({'ctrl'}, 'h', keyCode('left'))
remapKey({'ctrl'}, 'j', keyCode('down'))
remapKey({'ctrl'}, 'k', keyCode('up'))
remapKey({'ctrl'}, 'l', keyCode('right'))

remapKey({'ctrl', 'shift'}, 'h', keyCode('left', {'shift'}))
remapKey({'ctrl', 'shift'}, 'j', keyCode('down', {'shift'}))
remapKey({'ctrl', 'shift'}, 'k', keyCode('up', {'shift'}))
remapKey({'ctrl', 'shift'}, 'l', keyCode('right', {'shift'}))

--  remapKey({'ctrl', 'cmd'}, 'h', keyCode('left', {'cmd'}))
--  remapKey({'ctrl', 'cmd'}, 'j', keyCode('down', {'cmd'}))
--  remapKey({'ctrl', 'cmd'}, 'k', keyCode('up', {'cmd'}))
--  remapKey({'ctrl', 'cmd'}, 'l', keyCode('right', {'cmd'}))

--  remapKey({'ctrl', 'shift', 'cmd'}, 'h', keyCode('left', {'shift', 'cmd'}))
--  remapKey({'ctrl', 'shift', 'cmd'}, 'j', keyCode('down', {'shift', 'cmd'}))
--  remapKey({'ctrl', 'shift', 'cmd'}, 'k', keyCode('up', {'shift', 'cmd'}))
--  remapKey({'ctrl', 'shift', 'cmd'}, 'l', keyCode('right', {'shift', 'cmd'}))

--  remapKey({'ctrl', 'alt'}, 'h', keyCode('left', {'alt'}))
--  remapKey({'ctrl', 'alt'}, 'j', keyCode('down', {'alt'}))
--  remapKey({'ctrl', 'alt'}, 'k', keyCode('up', {'alt'}))
--  remapKey({'ctrl', 'alt'}, 'l', keyCode('right', {'alt'}))

--  remapKey({'ctrl', 'shift', 'alt'}, 'h', keyCode('left', {'shift', 'alt'}))
--  remapKey({'ctrl', 'shift', 'alt'}, 'j', keyCode('down', {'shift', 'alt'}))
--  remapKey({'ctrl', 'shift', 'alt'}, 'k', keyCode('up', {'shift', 'alt'}))
--  remapKey({'ctrl', 'shift', 'alt'}, 'l', keyCode('right', {'shift', 'alt'}))

--  remapKey({'ctrl', 'cmd', 'alt'}, 'h', keyCode('left', {'cmd', 'alt'}))
--  remapKey({'ctrl', 'cmd', 'alt'}, 'j', keyCode('down', {'cmd', 'alt'}))
--  remapKey({'ctrl', 'cmd', 'alt'}, 'k', keyCode('up', {'cmd', 'alt'}))
--  remapKey({'ctrl', 'cmd', 'alt'}, 'l', keyCode('right', {'cmd', 'alt'}))

