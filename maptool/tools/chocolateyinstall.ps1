$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.8.3/MapTool-1.8.3.exe'
$checksum32 = '3f095d83f2c3eb2534a477ce2890e3ea9cc1a963f96ef177d068808d3ef9b290'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  FileType        = 'EXE'
  Url             = $url32
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
  SilentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  ValidExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

# remove installer exe
rm $toolsPath\*.exe -ea 0
