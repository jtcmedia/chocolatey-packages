$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.57.msi'
$checksum   = '56152973eee756d62a89d04cd8ce9021411adf600405c6f6f16e71efa1c70bbf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.57.msi'
$checksum64 = '4e68aaeeab9ef51c44c4c2eea7af95cfd64a9f0784e97e56ebab70336cfb76e5'
 
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
