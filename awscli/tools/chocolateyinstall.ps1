$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.56.msi'
$checksum   = '4dfb8b1867beaa564dfb8926fce11d8706da1aee32c1f968b514a08346a54205'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.56.msi'
$checksum64 = 'cdd31ca1133b4a3ffdd79a77167ad4b3628e38d5675fbb24b89ad1a399a14638'
 
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
