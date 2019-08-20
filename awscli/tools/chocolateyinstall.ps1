$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.221.msi'
$checksum   = '0c66c8b114ce78efd35ac29d2b0e142b53d0032211e0b691f171b9b836ece406'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.221.msi'
$checksum64 = '7c5e6d16f6d665b2edc201c7ebb95d5185f02abe856cc9a7f510437f732094bf'
 
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
