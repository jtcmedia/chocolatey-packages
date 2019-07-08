
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'faas-cli.exe'
$url        = 'https://github.com/openfaas/faas-cli/releases/download/0.8.19/faas-cli.exe'
$checksum   = 'fa8aec5e83764c18402a72fe99c6e82f2941bb0ff988845e00b6b622f5371b0e'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  url           = $url
  fileFullPath  = $fileLocation
  checksum      = $checksum
  checksumType  = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
