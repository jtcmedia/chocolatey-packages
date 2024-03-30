$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/NoSQL_Workbench.exe'
$checksum64 = 'f771bfc556a903c0d97990ac048012e9efca2bba83ca59bddcf9feea2e67d167'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'NoSQL Workbench*'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
