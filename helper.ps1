

##Upload
# choco install -y msys2 7zip.install
# C:\tools\msys64\usr\bin\bash.exe -lc "pacman --noconfirm -S python mingw-w64-x86_64-toolchain gettext python3 mingw-w64-x86_64-glib2 mingw-w64-x86_64-pixman make bison mingw-w64-x86_64-diffutils mingw-w64-cross-binutils mingw-w64-x86_64-SDL2"

# Install-Module -Name PS.B2 -Force
# Import-Module -Name PS.B2

# Connect-B2Cloud -AccountID $env:B2_KEY_ID -ApplicationKey $env:B2_APPLICATION_KEY
# $bucketId = (Get-B2Bucket | Where-Object -Property BucketName -eq "baxterworks-azure").BucketID

# 7z a msys2_tools.7z c:\tools
# Invoke-B2ItemUpload -BucketID $bucketId -Path msys2_tools.7z



##Download
# choco install -y 7zip.install aria2
# py -m pip install b2
# b2 authorize-account $env:B2_KEY_ID $env:B2_APPLICATION_KEY
# $url = b2 get-download-url-with-auth baxterworks-azure msys2_tools.7z
# mkdir -force c:\tools; cd c:\tools
# aria2c -x5 -j5 $url
# 7z x msys2_tools.7z

Get-ChildItem c:\ -Recurse -Directory | %{write-output $_.FullName}