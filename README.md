# eldercode-itunes

**Install iTunes using COBOL. Yes, that COBOL.**

This is a fully automated installer script written in [GNUCOBOL] (https://sourceforge.net/projects/gnucobol/) that downloads, sets up, and launches iTunes - from a language born before the internet.

> 🌀 If you've ever wondered what happens when Grace Hopper meets Steve Jobs in a Linux terminal… this is it.

---

## 🧠 What Is This?

This is a legacy-coded launcher for **modern iTunes installations** on Ubuntu (or any POSIX system) using **COBOL** and a few shell tricks.

Why? Because:

- Shell scripts are too mainstream
- Python is overkill
- And COBOL... COBOL is forever.

---

## 🚀 What It Does

- Calls shell commands from COBOL using 'CALL "SYSTEM"'
- Downloads iTunes setup via 'wget' or 'curl'
- Installs iTunes using 'wine' (optional fallback logic)
- Logs output to a file for debugging
- Works on Ubuntu (tested on 20.04+)

---

## ⚙️ Requirements

-Ubuntu/Debian-based system
[GnuCOBOL](https://wwww.gnu.org/software/gnucobol/)
'''bash
sudo apt install open-cobol
