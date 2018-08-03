$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.70.msi'
$checksum   = 'b4504b97d7df5deb529761d572e2f0fd8ce0c835d4e5b2b95a9bf1436b3b3552'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.70.msi'
$checksum64 = '1b798f7d10a74615b17245d3f0e6fd5af92caa6cd9e75a3a6f66c3790cf97ed1'
 
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
