# UROIU
UROIU - Advanced Data Security Suite
Version: 1.0
Author: UROIU Team

UROIU is an enterprise-grade file encryption and steganography tool designed for maximum security and user privacy. It leverages the power of AES-128 (via Fernet) to ensure your data remains confidential, while offering unique features like Self-Destruct mechanisms and 2FA Key-Files.

🚀 Key Features
Military-Grade Encryption: Uses Fernet (AES-128 in CBC mode with HMAC) for symmetric encryption.
Two-Factor Authentication (2FA): Optionally encrypt files using a physical "Key-File" in addition to a password.
Steganography: Hide encrypted files inside ordinary images (PNG/BMP) to conceal the very existence of data.
Self-Destruct Mechanism: Protects against brute-force attacks by permanently shredding the file after 5 failed password attempts.
Atomic Writes: Prevents data corruption by writing to a temporary file first, then renaming it only after success.
Integrity Verification: Automatically verifies file hashes before decryption to detect tampering or corruption.
Secure Deletion: Overwrites original files with random data before deletion to prevent recovery.
Drag & Drop Support: Intuitive modern UI with Drag & Drop capabilities (requires tkinterdnd2).
📋 Requirements
Python 3.8+
Libraries:
cryptography
tkinterdnd2 (Optional, for Drag & Drop)
⚙️ Installation
Automated Installation
We provide scripts to install dependencies automatically.

Windows:Run the install.bat file provided in the package.

Linux / macOS:Run the install.sh script via terminal:

chmod +x install.sh./install.sh
Manual Installation
If you prefer manual installation, run:

bash

pip install cryptography tkinterdnd2
📖 User Guide
1. Encryption (Lock Files)
This section encrypts your files and converts them to the .UOI format.

Select Files: Click "Browse Files" or drag and drop files into the drop zone.
Enter Password: Type a strong password.
2FA (Optional): Check "Use Key-File (2FA)" to generate a physical key file. You will need this file AND the password to decrypt later.
Start: Click START ENCRYPTION.
Note: The original file will be securely shredded (unrecoverable) after encryption.
2. Decryption (Unlock Files)
This section restores .UOI files to their original state.

Load File: Select a .UOI file from the list or browser.
Enter Credentials: Input the password.
If 2FA was used, click "Load Key-File" and select your .uroiukey file.
Start: Click DECRYPT SELECTED.
Warning: You have 5 attempts. If you fail 5 times, the file will be permanently self-destructed to protect your privacy.
3. Steganography
Hide your encrypted .UOI files inside images.

Hide: Select a "Carrier Image" and a "Secret File". The output will look like a normal image.
Extract: Select the modified image. The hidden .UOI file will be extracted, ready for decryption.
4. Key Manager
Generate standalone Key-Files for 2FA authentication.

Store these keys on a USB drive for physical security.
Without this file, the password alone is useless.
⚠️ Security Disclaimer
Lost Password: If you lose your password or your 2FA Key-File, your data is lost forever. There are no backdoors.
Self-Destruct: Use with caution. Once a file is shredded by the self-destruct mechanism, it cannot be recovered.
