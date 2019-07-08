
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'faas-cli.exe'
$url        = 'https://github.com/openfaas/faas-cli/releases/download/0.8.21/faas-cli.exe'
$checksum   = '366e01a364e64f90bec6b8234c2bc5bb87bbd059b187f8afe43c36d22f4d5b84'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  url           = $url
  fileFullPath  = $fileLocation
  checksum      = $checksum
  checksumType  = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
