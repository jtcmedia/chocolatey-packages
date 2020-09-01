$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.129.msi'
$checksum   = 'efa271c3094f174f53b8cbe50629ac12ce3c179ef532b68ab61fcf585e9e3703'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.129.msi'
$checksum64 = '80bed01eb8ca034bf6ebab470fe1e68f14da49aab8a5189a285aeabad871f4eb'
 
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
