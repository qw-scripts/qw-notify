RegisterNUICallback('qw-notify:GetColorConfig', function(_, cb)
    local colors = Config.Colors
    cb(colors)
end)

function Notify(message, type, timeout)
    SendNUIMessage({
        action = 'addToast',
        data = {
            message = message,
            type = type,
            timeout = timeout
        }
    })
end

exports('Notify', Notify)