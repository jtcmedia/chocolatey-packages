$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileFullPath    = gi $toolsPath\*_win32_exe.zip
  FileFullPath64  = gi $toolsPath\*_win64_exe.zip
  Destination     = $toolsPath
}

ls $toolsPath\* | ? { $_.PSISContainer } | rm -Recurse -Force #remove older package dirs
Get-ChocolateyUnzip @packageArgs
rm $toolsPath\*.zip -ea 0