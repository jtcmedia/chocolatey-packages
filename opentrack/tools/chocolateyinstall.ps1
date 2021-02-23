$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileType        = 'exe'
  File            = gi $toolsPath\*-win32-setup.exe
  SilentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  ValidExitCodes  = @(0)
  SoftwareName    = 'opentrack*'
}

Install-ChocolateyInstallPackage @packageArgs

# remove installer
rm $toolsPath\*.exe -ea 0
