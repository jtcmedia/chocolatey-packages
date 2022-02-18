$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-ia32-1.1.2.exe'
$checksum   = '3909a75e5f38882cc0e60d6c77d102bd1fd1eb646bf3b3860281c155db96dea6'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.1.2.exe'
$checksum64 = '55e408bf0162660544c8d62149cff7a26dbe515880eb0a1e0824f4138fc926e5'

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
