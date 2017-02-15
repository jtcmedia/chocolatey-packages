$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$paramsJson = get-content "$($toolsDir)\params.json"
$p = (($paramsJson) -join "`n") | convertfrom-json

$packageDir = Split-Path -parent $toolsDir
$binRoot = (Get-ToolsLocation) -replace "\\", "/"

write-host "Read params from json"
write-host (convertto-json $p)

$packageArgs = @{
  packageName    = $p.package.name
  fileType       = 'EXE'
  url            = $p.package.url
  checksum       = $p.package.checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
