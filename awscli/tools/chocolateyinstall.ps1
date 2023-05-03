$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.125.msi'
$checksum   = 'aba6314070d91fe693e159aa2aeb002d5e7014b7a770e1bb45b421b819940459'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.125.msi'
$checksum64 = 'e4b1e4aab29084b4cba0b6ba805f0a2047f8b05dc251c5ad54fe165f09183a04'
 
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
