RegisterCommand('test-notis', function()
    SendNUIMessage({
        action = 'addToast',
        data = {
            message = 'This is a test notification',
            type = 'primary',
            timeout = 5000
        }
    })
    SendNUIMessage({
        action = 'addToast',
        data = {
            message = 'This is a test notification',
            type = 'info',
            timeout = 5000
        }
    })
    SendNUIMessage({
        action = 'addToast',
        data = {
            message = 'This is a test notification',
            type = 'success',
            timeout = 5000
        }
    })
    SendNUIMessage({
        action = 'addToast',
        data = {
            message = 'This is a test notification',
            type = 'error',
            timeout = 5000
        }
    })
end)

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