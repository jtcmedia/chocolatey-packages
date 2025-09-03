$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.typora.io/windows/typora-setup-ia32-1.11.7.exe'
$checksum   = '7b59794b032cf33c784a72846560cd6c23a4226317f8e00c861801d7953c8ef9'
$url64      = 'https://downloads.typora.io/windows/typora-setup-x64-1.11.7.exe'
$checksum64 = '9cd8a1a76cbe6412ec0d718fd9195f1ecae574266979c79942fd8514fcf19c84'

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
