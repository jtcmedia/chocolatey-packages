$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.14.7.exe'
$checksum   = '0c03292193ea95151ebeeddd38a50c38236e8e5e48e6d57d8371d92bcba91783'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.14.7.exe'
$checksum64 = '0bb89b3df038ca09ec0f1af2d67d4779535481f453859d7d9666e9e2d6cafb72'

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
