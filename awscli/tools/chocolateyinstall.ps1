$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.43.msi'
$checksum   = '78a8c3f8729659a6954cda68caa93fcc1f3ae7bf50ad41a73eb1c8ae29e3f191'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.43.msi'
$checksum64 = '3ac63e4ab23510bc29cde34882e38042426662df94062ac4f9c067f165afb3a2'
 
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
