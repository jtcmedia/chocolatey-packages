$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  FileType      = 'EXE'
  File          = Get-Item $toolsPath\*_32.exe 
  File64        = Get-Item $toolsPath\*_64.exe
  softwareName  = 'VASSAL*'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item $toolsPath\*.exe -ea 0 #remove installer exe
