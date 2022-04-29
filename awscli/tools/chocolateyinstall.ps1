$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.23.3.msi'
$checksum   = 'f8f29f5b16c3a9425eb2ac89df664ae9d5fe145f4af232ec01e75505b7c752b6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.23.3.msi'
$checksum64 = 'd49a87c65ff16283017cd5c7c4a607aa65a2370306696da3d16a68af271f98f0'
 
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
