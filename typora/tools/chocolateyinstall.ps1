$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://typora.io/windows/typora-update-ia32-1106.exe'
$checksum   = 'd1525fa16a2a1a4a7fc608802ec116182783b629dec9994bad77a0289c7dce93'
$url64      = 'https://typora.io/windows/typora-update-x64-1106.exe'
$checksum64 = 'ed9fdd77cf0b3751ba8bd21412b45bb6d9a4ce10e5849b1c1173a0828b67065f'

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
