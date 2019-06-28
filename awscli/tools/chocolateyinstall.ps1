$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.189.msi'
$checksum   = 'e5d91d8723e7ba6f1b507d4144710c3bc8ccc40b186d5390e7ac8aa6a32fb8a2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.189.msi'
$checksum64 = '3d62f641d1ba825e37a374a645ecc9a4ee33163207086755b56e66b2af731b7a'
 
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
