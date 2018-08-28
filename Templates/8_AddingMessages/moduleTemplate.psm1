<%
if ($PLASTER_PARAM_Disclaimer -eq "Yes")
{
@"
<#
    This Sample Code is provided for the purpose of illustration only and is not intended to be used in a production environment.
    THIS SAMPLE CODE AND ANY RELATED INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.  We grant You a
    nonexclusive, royalty-free right to use and modify the Sample Code and to reproduce and distribute the object code form of the
    Sample Code, provided that You agree: (i) to not use Our name, logo, or trademarks to market Your software product in which the
    Sample Code is embedded; (ii) to include a valid copyright notice on Your software product in which the Sample Code is embedded;
    and (iii) to indemnify, hold harmless, and defend Us and Our suppliers from and against any claims or lawsuits, including
    attorneys’ fees, that arise or result from the use or distribution of the Sample Code.
#>
"@
}
%>

<%
@"
`$script:localizedData = Import-LocalizedData -BaseDirectory "`$PSScriptRoot\Docs\en-US" -FileName '${PLASTER_PARAM_ModuleName}.strings.psd1'
"@
%>

# Import everything in these folders
foreach($folder in @('Private', 'Public', 'Classes'))
{
    $root = Join-Path -Path $PSScriptRoot -ChildPath $folder
    if(Test-Path -Path $root)
    {
        Write-Verbose "processing folder $root"
        $files = Get-ChildItem -Path $root -Filter *.ps1

        # Dot source each file
        $nonTestps1Files = $files | Where-Object -Filter { $_.name -NotLike '*.Tests.ps1'}
        foreach ($ps1 in $nonTestps1Files)
        {
            Write-Verbose -Message $ps1.Name
            . $ps1.FullName
        }
    }
}

Export-ModuleMember -function (Get-ChildItem -Path "$PSScriptRoot\public\*.ps1").basename
