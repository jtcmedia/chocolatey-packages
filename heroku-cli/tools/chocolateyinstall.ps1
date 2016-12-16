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
ri $env:USERPROFILE\.config\heroku -recurse -ea 0 -force

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-386.exe'
$url64      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-amd64.exe'
$checksum32 = '153bdd2b390e2db6f2fa0cf0df8668233dbe683abcf095bd312bc23c1a296a26'
$checksum64 = 'aa3084796dd1e40e3a4405ae39458f683ccfffe05cf7285e594d63a0fbc74ed0'

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
