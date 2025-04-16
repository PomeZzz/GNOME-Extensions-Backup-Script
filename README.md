# GNOME Extensions Backup Script

A simple Bash script to **export and import your GNOME Shell extensions configuration** using `dconf`.

I created this after searching for a while for a clean way to back up my GNOME extensions setup. This script makes it easy to save your current config and restore it later, which is especially useful when reinstalling your system or syncing settings across multiple machines.

---

## 🔧 Features

- Export current GNOME Shell extensions config to a file
- Import it back in one command
- Uses native `dconf` commands (no dependencies)

---

## 📦 How to Use

### 1. Clone the repository
```bash
git clone https://github.com/PomeZzz/GNOME-Extensions-Backup-Script
cd File location
```
### 2. Make the script executable
```bash
chmod +x gnome-extensions-config.sh
```

### 3. Export your current extensions config
```bash
./gnome-extensions-config.sh export
```
This will create a file called extensions.conf in the same directory.

### 4. Import it back later
```bash
./gnome-extensions-config.sh import

```
## 📁 Output File

The configuration is saved in a file called:
```
extensions.conf
```
Feel free to rename or move it to a safe backup location.

## 💡 Tip

You can automate this process with a cron job or sync the file to a cloud service for easier backups.

## 🧠 Why I made this

I couldn’t find a simple way to do this online — most solutions were either too complex or didn’t fully work. So I put together this basic but effective script and wanted to share it in case it helps someone else too.
