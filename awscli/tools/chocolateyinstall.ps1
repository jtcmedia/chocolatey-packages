$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.154.msi'
$checksum   = '37088dad8e3ce300ad7b9ae1d1736fe5c711e608ad337412b3e93a7a7b2a9bcc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.154.msi'
$checksum64 = 'e7033a1f6e6e19dbf6a093babc16c37db508f0690d4dbafad5820f357bf99c12'
 
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
