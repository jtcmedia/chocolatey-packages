$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/NoSQL_Workbench.exe'
$checksum64 = 'f2655f8adf35b6abc64fac4517563377a4472b8792783c6d185b81a5e66bb58a'

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
