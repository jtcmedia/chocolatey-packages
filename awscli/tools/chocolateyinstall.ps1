$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.30.msi'
$checksum   = '3b7571cb211b05156dffd54a1f62a79f8e94dd5c62cc5191ee6bc5a3398e6e82'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.30.msi'
$checksum64 = 'cd29410060f93bf1a1b0ca05252d3eaac548f56b1360cf6b076221a8401d0c77'
 
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
