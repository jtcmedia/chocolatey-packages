$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.216.msi'
$checksum   = '91c5490025f1c91a16b4323c6d25d4b75442055dd859a5e0e0bf2658b8e3db55'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.216.msi'
$checksum64 = '32865a383d2798e7a1eac4fc50279af6a49c007409dcbc7d635a7dfd5cbe3f4a'
 
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
