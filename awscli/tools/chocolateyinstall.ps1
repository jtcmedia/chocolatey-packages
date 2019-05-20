$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.162.msi'
$checksum   = '667fb04cf4caf8224530235bb4f10cae8bbec311a1de3b34c7199e84e25eb667'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.162.msi'
$checksum64 = 'c8d1269da0053b3d2381a894a5ca2f581e6640745f03afaa2a82ee94f533f6ce'
 
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
