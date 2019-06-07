$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.173.msi'
$checksum   = '69d12c5344a00332b4f6ad9c3e2075b290f2e56e918e1ff4b38bff6726fa0eae'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.173.msi'
$checksum64 = '6000488d3222ae5bb5d8665cd316801281e9a0e274c55e49bd1ca081c2a19d1a'
 
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
