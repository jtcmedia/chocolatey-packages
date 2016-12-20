$ErrorActionPreference = 'Stop';
$packageName = 'heroku-cli'

#First need to uninstall old toolbelt pkg if installed
$softwareName = 'Heroku Toolbelt*'
$installerType = 'EXE' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
}
# Remove heroku config file as requested https://blog.heroku.com/the-new-heroku-cli
Remove-Item $env:USERPROFILE\.config\heroku -Recurse -ErrorAction SilentlyContinue -Force

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-386.exe'
$url64      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-amd64.exe'
$checksum32 = 'ff234e8d966111a65d4049ea0fd77d4b433bb568d2816b5c8d58d87fd97c83c9'
$checksum64 = 'ac7aef7f77c947f0b75022156d7cc5bfebdec1e258ffdcf641de1dcd9c5f5224'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Heroku CLI*'

  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
