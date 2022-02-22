$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.1.5.exe'
$checksum   = '248b6558449ff1340489707e141449a2558442bb0daa20a094ceac888a942ecb'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.1.5.exe'
$checksum64 = '460069c92ef4c388e09efc996f4e2559eecd546e1ffa1aad26eb57715ac68637'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'Typora*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
