$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.14.msi'
$checksum   = 'c0f0333f4997435ce364f82ea5d1b48f0b88bfb62efdffd697f1ddea4647a0b2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.14.msi'
$checksum64 = 'cf660e70023f8ba5e4b6a2c7fccbe11ca57f29b303476490a49a35040aad4ceb'
 
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
