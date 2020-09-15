$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.138.msi'
$checksum   = '0b754b910e8d120f4acbefde9e339d45981ff4e9de156cfff1da44a3d5d5ddbd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.138.msi'
$checksum64 = '138dff2357046f6b1def19c9585a6c32e1898dc1bbbdb29fa15643412d159a83'
 
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
