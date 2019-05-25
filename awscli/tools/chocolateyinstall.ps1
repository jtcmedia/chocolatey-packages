$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.166.msi'
$checksum   = 'e259b5734abc5c7b4ad2ac29bbff62f8d951490b2318e2600f0d699a368d6c70'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.166.msi'
$checksum64 = '2bed1d1cabee1a0e2a18b4fa5ce45bcb381fd989a547da47846a4f091cdb2698'
 
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
