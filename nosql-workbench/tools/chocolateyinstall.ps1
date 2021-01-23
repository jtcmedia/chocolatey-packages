$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-win-2.2.0.exe'
$checksum64 = 'b7d608c2b28f6b0599f4c0052f334d5c6638fedb2b605d96652d4875b6c6d660'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'NoSQL Workbench for Amazon DynamoDB*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
