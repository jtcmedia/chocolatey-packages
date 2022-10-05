$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.87.msi'
$checksum   = '119509de37fa99c2e10b33dee1778aec28017705ef61b7f450224a9ec0ae999c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.87.msi'
$checksum64 = 'fbe361746d0e7c8403170c0c42d37354d42129ba76f4205eea67f80c41204a15'
 
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
