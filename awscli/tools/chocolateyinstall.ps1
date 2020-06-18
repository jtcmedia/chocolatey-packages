$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.82.msi'
$checksum   = '495ba5dc52955ff7bf4a4c3f429cd47daf496679b437cc6a5c13884caee7fc0b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.82.msi'
$checksum64 = '5a7528c1b734c9d2ed993b7fda116cf3553d45337f7f64ac9c3f8aa20000fdfe'
 
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
