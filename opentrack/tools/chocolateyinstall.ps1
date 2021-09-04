$ErrorActionPreference = 'Stop'

$url32      = 'https://github.com/opentrack/opentrack/releases/download/opentrack-2021.1.1/opentrack-2021.1.1-win32-setup.exe'
$checksum32 = '4cd1e6cb293ed167a4a0e525315ad93567dce3d4d3dde6fc22e29874801e4247'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  fileType        = 'exe'
  Url             = $url32
  silentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes  = @(0)
  softwareName    = 'opentrack*'
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}

Install-ChocolateyPackage @packageArgs
