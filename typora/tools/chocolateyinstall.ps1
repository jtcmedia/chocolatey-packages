$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.4.3.exe'
$checksum   = 'dbf899e5bbd7279305921a536019ae50393350d8819fe10017606c161f626f6c'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.4.3.exe'
$checksum64 = 'c88c4b3182b57d52f8c32c933c8246670f3a273417a63b62e10b1d329bdd3e38'

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
