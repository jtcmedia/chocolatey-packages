$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.101.msi'
$checksum   = 'e7aa30af74d785be07cb318cd1da1ca963c21de9fa5ca1e5b8e6b6ec6fa00f52'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.101.msi'
$checksum64 = '8b962e650e162ac28e007b248e304e56b6bf1e3efb9bb6c73d0d305c94ba1d13'
 
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
