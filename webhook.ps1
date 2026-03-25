$webhookUrl = "" # put webhook here

$embed = @{
    title = "POWERSHELL!! :smirk:"
    description = "Hi this is a poewrsghell webhook sender!"
    color = 8421504
}

$payload = @{
    embeds = @($embed)
    avatar_url = "https://imgur.com/yqYftWs.png" # i love tifaaaa <3333
}
$jsonPayload = $payload | ConvertTo-Json -Depth 10
Invoke-RestMethod -Uri $webhookUrl -Method Post -Body $jsonPayload -ContentType "application/json"
Write-Host "Sent Webhook"
