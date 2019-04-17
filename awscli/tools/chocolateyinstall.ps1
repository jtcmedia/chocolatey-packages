$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.141.msi'
$checksum   = '81f12d9a0ca3fbe210469c6446458653dacfdd2ff57d884367dfc3b10cb6bbf7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.141.msi'
$checksum64 = 'ff526f9ed749419729f6c75c2ba6e774bcd945976b8bc90eaeb3e79e93a13d50'
 
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
