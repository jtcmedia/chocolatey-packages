$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.70.msi'
$checksum   = '7520b57fd6a3725536a7149a97c0038174068644a16e964b3fbf95cfecf6bcc8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.70.msi'
$checksum64 = 'a04ac8b7468103b4e2b04cbe0f8145068ecec555b53fec4c1c779bb0c7090df2'
 
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
