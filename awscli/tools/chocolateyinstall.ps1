$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.133.msi'
$checksum   = '374d0ee9e38ebca000e58f1a6d9a5f9dd22ab323f7fe205aa36d9e2dd782dc2f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.133.msi'
$checksum64 = '1d73ad9510de83800ed67b67751b83d25b27808a110c73b9f7d175126f09b217'
 
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
