$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url32      = 'https://github.com/RPTools/maptool/releases/download/1.7.0/MapTool-1.7.0.exe'
$checksum32 = '1b3bf7345919a4e5b7d6f4cbe4515f0a419a1e114046557063a25ea1b08a10de'

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
