$ErrorActionPreference = 'Stop'
$toolsDir   = Split-Path $MyInvocation.MyCommand.Definition
$url64      = 'https://dy9cqqaswpltd.cloudfront.net/WorkbenchDDBLocal-win.exe'
$checksum64 = 'e100c7007251f7204e4ab050215a677fc014440c4ed943f0ec583581b9df3952'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'NoSQL Workbench for Amazon DynamoDB*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '--mode unattended --install_dynamoDBLocal 0'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
