$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.31.msi'
$checksum   = 'cbb47b23aa9de750383e14b1dae952d9674ca2d361eb99982a3f32b660e08130'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.31.msi'
$checksum64 = '707256a4d1eb40fd94de7f9801f0a9d93e2a11b6f04456564cd502d5cf3aa5fb'
 
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
