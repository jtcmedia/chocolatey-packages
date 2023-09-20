$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.51.msi'
$checksum   = '3027ce7ae30c496eb2ecce708ece5249de8b65f9dc48d91e2e1d44d5d039bd39'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.51.msi'
$checksum64 = 'b9aafaeba747e0b95d3082b996791cb29dd123461e36c87a8bc9dc5563ad7ede'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
