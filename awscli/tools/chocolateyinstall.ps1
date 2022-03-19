$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.77.msi'
$checksum   = '1c98b1bf4ad5fcbe49e78144adfa8105a23a1c26de9d05dfb1be69d9c8cb03cc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.77.msi'
$checksum64 = '12fc77e38655262f6631b5ba97349fa0b79dbf18df74fb7ce3e30f6fa5923c97'
 
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
