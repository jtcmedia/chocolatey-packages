$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.85.msi'
$checksum   = '8a645ff160b9e65f70e87d63ab3167a3f3bac87156b0d2f80f00eeadf5086e1d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.85.msi'
$checksum64 = 'ad1ec0d2a7fc3e6c08b4ce095ed4b2a90cd10371880515df72c9faabf90045f0'
 
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
