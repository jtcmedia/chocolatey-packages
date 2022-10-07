$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.typora.io/windows/typora-setup-x64-1.4.4.exe'
$checksum   = '9d015818bf789306511ca7091e18afb5105accce2b3f4090b455345a60094c3a'
$url64      = 'https://download.typora.io/windows/typora-setup-x64-1.4.8.exe'
$checksum64 = '023c8cbfaad87aecea188b7add0857756ed89cf1f3fd584e7de5fb4ed94c8a56'

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
