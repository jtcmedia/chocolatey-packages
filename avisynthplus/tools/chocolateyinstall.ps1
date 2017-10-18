$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AviSynth/AviSynthPlus/releases/download/Rel-r1576/AviSynthPlus-r1576.exe'
$checksum   = 'c67f2c8fd25d033a158bc67a4651807793427c1da05bfe367826f0303e4e7105'

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
