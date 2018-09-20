$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.17.msi'
$checksum   = '6e1f51cba26763895799fdaf39d8794ac909abefe53138fa9b45a2c8df9a29a9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.17.msi'
$checksum64 = 'c0da98add8601f44ee9f44c3a27953e6f1575f7e7fe664275bb1f5c05dccf394'
 
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
