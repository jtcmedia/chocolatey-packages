$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.220.msi'
$checksum   = '3565ec8524e3333f19aa3f3936e30acdd45597c8380cd131c5d4557fc3faf78a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.220.msi'
$checksum64 = 'f769ed34e13d2ac598e9ab1dcc270bb02f40840019bff4ee391a38bcc17cb041'
 
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
