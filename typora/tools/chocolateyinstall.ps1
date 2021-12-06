$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.0.3.exe'
$checksum   = 'b8fef97119001c768df262b617d0ea636c45016854013963c213a15dcd948d93'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.0.3.exe'
$checksum64 = 'ac11151e906f78f79294f6f7656ac67426ac0de95a322eefffe15cbde502206c'

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
