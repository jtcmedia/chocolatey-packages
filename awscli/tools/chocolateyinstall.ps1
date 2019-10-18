$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.263.msi'
$checksum   = 'e1dc19604c7297e27e7ed2a486e6188eaf14cf76cc5ca64f1d97eb5b9d402398'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.263.msi'
$checksum64 = 'a5d0c2b7e917535e1ff66f6274af19f21418413b5e85c8347a8249b9011ceb84'
 
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
