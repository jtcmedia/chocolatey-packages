$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/pinterf/AviSynthPlus/releases/download/r2664-MT/AviSynthPlus-MT-r2664.exe'
$checksum   = '33db891511b01f39f8ae6a393d3b8cd5115aa247a8abcc220d1b2875ee50565c'

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
