$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/NoSQL_Workbench.exe'
$checksum64 = '9c0d45ab46e57bf01a1b9307beef7a5572a5448bbffe6f722d6fbf6ba52d92d2'

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
