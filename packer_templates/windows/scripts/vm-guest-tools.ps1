# Install the Oracle certificate first
certutil -addstore -f "TrustedPublisher" E:\cert\vbox-sha256.cer
certutil -addstore -f "TrustedPublisher" E:\cert\vbox-sha1.cer


Start-Process -FilePath "E:\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait