<#
    Run this script twice to demo "store='encrypted'" behavior
#>

Invoke-Plaster -TemplatePath $PSScriptRoot -DestinationPath C:\Temp\Demo_Plaster\Scenario6

# Get-ChildItem -Path "$env:LOCALAPPDATA\Plaster" -Filter 'Demo_NewModuleManifestPrompts*' | Get-Content
