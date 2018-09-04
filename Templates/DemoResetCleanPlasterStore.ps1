$plasterStorePath = (Resolve-Path -Path "$env:LOCALAPPDATA\Plaster").Path
Get-ChildItem -Path $plasterStorePath -Filter "Demo_*" | Remove-Item -Confirm:$false
