$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.11.5.exe'
$checksum   = 'b5af03b07f11250ee38cc6e90c72b9bc0e3ba59e59ba413bb3dcbf5c7ee1789b'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.11.5.exe'
$checksum64 = '1c200cce3b6f55a7edf8a84b83cac8ffba97099c741ee6f1e4a5c4fdef0591b7'

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
