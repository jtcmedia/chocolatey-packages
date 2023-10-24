$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.69.msi'
$checksum   = 'e9439c01b90973c14ef9434b9f4778597c6ba4ac3a2fc348c05c1a00d279b1a4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.69.msi'
$checksum64 = 'd10f8a644416a8f83b0fca91da40b3e1bade5de3ce175bfe29a08bcaee977ef4'
 
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
