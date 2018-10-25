$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.41.msi'
$checksum   = 'eb5441fa61e00e25670822cdbc21940bff96bae0fd8b0dd1a95c8b94aa83e96b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.41.msi'
$checksum64 = '6d2a35cb2497ccc5e66e26abb58f2ec3f0dc4a4be1dd42ce8cc44f8b5b6ef708'
 
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
