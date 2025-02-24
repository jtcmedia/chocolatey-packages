$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/NoSQL_Workbench.exe'
$checksum64 = '63fefbb1ac9b524098663d57f3fdadfd34c8a4b6b794d73d8798c207b2e72929'

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
