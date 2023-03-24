$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.10.exe'
$checksum   = '7fd3b2d990c209f4ead8bc02928e72afb95f6a87ab49eea32c28ca7db33cd56f'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.10.exe'
$checksum64 = 'a0e938871c0e66233d733af56c2a9e035541ae430be9b8db44b78c0cc1add89d'

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
