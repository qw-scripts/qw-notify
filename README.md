# ![qw-scripts Banner](https://i.imgur.com/68jLFg3.png)

## qw-scripts discord

<https://dsc.gg/qw-scripts>

## qw-notify

Standalone customizable notification system

## Installation

**PLEASE DOWNLOAD FROM THE LATEST BUILD [HERE](https://github.com/qw-scripts/qw-notify/releases/latest)**

## QBCore Setup (`qb-core/client/functions.lua` around line `88`)

Replace the following:

```lua
function QBCore.Functions.Notify(text, texttype, length)
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        texttype = texttype or 'primary'
        length = length or 5000
        SendNUIMessage({
            action = 'notify',
            type = texttype,
            length = length,
            text = ttext,
            caption = caption
        })
    else
        texttype = texttype or 'primary'
        length = length or 5000
        SendNUIMessage({
            action = 'notify',
            type = texttype,
            length = length,
            text = text
        })
    end
end
```

with:

```lua
function QBCore.Functions.Notify(text, texttype, length)
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        length = length or 5000
        texttype = texttype or 'primary'
        exports['qw-notify']:Notify(ttext, texttype, length)
    else
        texttype = texttype or 'primary'
        length = length or 5000
        exports['qw-notify']:Notify(text, texttype, length)
    end
end
```

This will get setup to exchange out the vanilla QBCore notifications with this resource.
