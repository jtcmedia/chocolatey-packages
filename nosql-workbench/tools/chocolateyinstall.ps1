$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-win-3.2.1.exe'
$checksum64 = '2971d94c53b03c061c4b87a21497727c32310d85a24289282d60c99210b7f2e9'

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
