$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileType        = 'EXE'
  File            = Get-Item "$toolsPath\AviSynthPlus*_x32.exe"
  SoftwareName    = 'AviSynth+*'
  silentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item "$toolsPath\AviSynthPlus*_x32.exe"
