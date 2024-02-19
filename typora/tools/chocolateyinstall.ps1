$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.8.10.exe'
$checksum   = 'e35861534de3fd5fffb692ca0205810b3860c149ee7b1609ddb50dacdd3f0d1b'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.8.10.exe'
$checksum64 = 'c739b8625f395a08165e19a6f09190179579ed527fe306957dbdd4bd02049fa1'

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
