$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/pinterf/AviSynthPlus/releases/download/r2768-MT/AviSynthPlus-MT-r2768.exe'
$checksum   = '8f9eef71050f3a314ca87ff94455a52407cda0e5976b95f28877e4bfbef99d4c'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'AviSynth+*'
  checksum      = $checksum
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
