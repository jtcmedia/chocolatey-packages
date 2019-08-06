$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.211.msi'
$checksum   = '93189c45a460a04bbbc1b2ecad27aa8ac29e80310c8457c13a54e01faf80e5ee'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.211.msi'
$checksum64 = '24a61956e1d4d2681f11da29ac0698eb369fe98b0fd1aa61bbb50483927da947'
 
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
