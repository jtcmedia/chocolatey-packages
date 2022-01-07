$ErrorActionPreference = 'Stop'

$url32      = 'https://github.com/opentrack/opentrack/releases/download/opentrack-2022.1.0/opentrack-2022.1.0-win32-setup.exe'
$checksum32 = '1194f4c58accb5ee5f88329162f5dc46e32c8da00c9192d5f64e30e269fc561a'

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
