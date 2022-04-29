$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*.zip
  Destination     = $(Get-ToolsLocation)
}

Get-ChocolateyUnzip @packageArgs

rm $toolsPath\*.zip -ea 0
