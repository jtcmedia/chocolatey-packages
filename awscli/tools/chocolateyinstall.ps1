$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.266.msi'
$checksum   = 'cf8c295fc5cb6c8b69a931668e894779898fe08b25178532fc4db7f4cd6c2d22'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.266.msi'
$checksum64 = '295b45b7712bcf0b1b3f94c42d24b42558e9313c5b4145f7d30013b538c3b1c6'
 
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
