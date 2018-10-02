$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.25.msi'
$checksum   = '10fb814e2eddc43a923e8b8bd4bc17418ea330415afc8e224ac536fe8931eefd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.25.msi'
$checksum64 = '73f2a7b0c0ab326bbb3252000cca8501b492f8bac3ddaf740c1a0ec565ce3c5a'
 
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
