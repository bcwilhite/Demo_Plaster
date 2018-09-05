$plasterStorePath = (Resolve-Path -Path "$env:LOCALAPPDATA\Plaster").Path
Get-ChildItem -Path $plasterStorePath -Filter "Demo_*" | Remove-Item -Confirm:$false
Remove-Item -Path C:\Temp\Demo_Plaster -Recurse -Force -Confirm:$false
New-Item -Path C:\Temp\Demo_Plaster -ItemType Directory -Force
