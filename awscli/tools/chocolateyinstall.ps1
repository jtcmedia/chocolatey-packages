$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.82.msi'
$checksum   = '6139bc3d142673a156ba4bf4479c6f13e22af41c0bc301ea835f5db679d27a0f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.82.msi'
$checksum64 = 'e2bfdab272860f93ff12ac1b3d9e32f5e6f0137afe32e02713ea6dd634a68ecf'
 
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
