$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.126.msi'
$checksum   = '1b8ddfe384254b86acb32b15a2b82385a4cf45401f5a52f5df33ddaa27495fad'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.126.msi'
$checksum64 = '2d78e1573c2b173594590126af9342f14433b491dfa50bd0ea4fe3159a7e9c32'
 
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
