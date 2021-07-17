$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.1.msi'
$checksum   = '04874ec0e5becb5df4f56bd73b5e2193f7ce6624209944c3652b6ad02e54c1e5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.1.msi'
$checksum64 = '5d54446d4267f5d6c95e99dc274b6bb7e55f74fb956259615fbf784b8c4def43'
 
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
