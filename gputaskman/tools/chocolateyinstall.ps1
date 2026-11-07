$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath64  = gi $toolsPath\*-x64.zip
  Destination     = $toolsPath
}

ls $toolsPath\* | ? { $_.PSISContainer } | rm -Recurse -Force #remove older package dirs
Get-ChocolateyUnzip @packageArgs
rm $toolsPath\*.zip -ea 0