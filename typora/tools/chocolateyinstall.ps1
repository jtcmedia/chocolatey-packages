$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.4.4.exe'
$checksum   = 'c1300ac9705fae71d09805c26509f85057118b31b5dce255ddcd7ba31a96f70e'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.4.4.exe'
$checksum64 = '9d015818bf789306511ca7091e18afb5105accce2b3f4090b455345a60094c3a'

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
