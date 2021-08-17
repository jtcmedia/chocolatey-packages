$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.22.msi'
$checksum   = 'afbb7aa5f27758ed04375a95817279a6431fcce4f2488a6b75fc5a2f51bbe046'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.22.msi'
$checksum64 = '9ffc80c5e7a69a60cb155039cf03749df20985dde34742d31435c4612e7da2a2'
 
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
