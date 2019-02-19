$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.107.msi'
$checksum   = 'a08ae7b4e3ef0783a4392b87d8109f5315f4c50cfa11df9cf591cf4d4c8843c5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.107.msi'
$checksum64 = '161ed12a21e3e415f33030c86f0fd37d41e217c9c42dddfaa2a09ddc3f25d005'
 
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
