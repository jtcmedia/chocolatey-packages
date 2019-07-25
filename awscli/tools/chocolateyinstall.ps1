$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.205.msi'
$checksum   = '598f142da08919704a87f3dff11b341d35b653e78365b1b0d41b9e1ff5d9a42d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.205.msi'
$checksum64 = '946318c68dcde4f61722987b1b37bd4c15f4dc625e83f6e6dbccb3295fbc7fdb'
 
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
