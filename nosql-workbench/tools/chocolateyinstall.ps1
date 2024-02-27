$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/NoSQL_Workbench.exe'
$checksum64 = 'd1cb031429a5f113e8f8631e55cb235fc32a77b9285a33dca34bdcad8db3a936'

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
