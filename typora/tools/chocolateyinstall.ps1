$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.5.5.exe'
$checksum   = 'a252cb51a79c5f00e60420b720391a5bdf9ebcb585b312aeb293c7e484432f40'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.5.5.exe'
$checksum64 = '138d80505b9fb1fbcc4005da2340c7aedf96f87739c752ccf17f046fae50e5ef'

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
