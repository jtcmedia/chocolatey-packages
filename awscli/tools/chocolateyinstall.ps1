$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.276.msi'
$checksum   = '9d2b5e1a07ee075ae6cb1e1bf337a2059f3c964805819e83ebbd1e73a7066472'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.276.msi'
$checksum64 = 'f0f389f0f6f6c910a2b6f7997540ea9788c49c5e1e05bdd725c243f82d2b591e'
 
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
