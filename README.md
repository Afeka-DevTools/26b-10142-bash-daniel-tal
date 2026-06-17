# 🚀 Assignment 1: Bash & Git Mastery

### 👥 Project Squad Overview

Below is the breakdown of our development team for this project:

| Developer Name |
| :--- |
| **Daniel Krichevsky** |
| **Tal Kliot** |

---

### 🛠️ Script Contributions

Here is a breakdown of the specific tools and scripts developed by each team member:

| Developer Name | Script File | Language | Description |
| :--- | :--- | :---: | :--- |
| **Daniel** | `timer.sh` | Bash | A countdown timer that dynamically updates in the terminal based on input (HH:MM:SS). |
| **Daniel** | `weather_by_city.sh` | Bash | Shows the weather based on city |
| **Daniel** | `ip_port_scan.sh` | Bash | Scans for open ports, from a specific IP address |
| **Daniel** | `count_files_by_ending.sh` | Bash | Scans a folder and counts files with a specific ending |
| **Daniel** | `sort_lines.sh` | Bash | Takes a text file as input, sorts its lines in alphabetical order, and saves the result into a new file |
| **Tal** | `TBA` | Bash | TBA |
| **Tal** | `TBA` | Bash | TBA |
| **Tal** | `TBA` | Bash | TBA |
| **Tal** | `TBA` | Bash | TBA |
| **Tal** | `TBA` | Bash | TBA |

---

# 🚀 How to Clone and Run

Getting the project up and running on your local machine is quick and straightforward. 

### 1️⃣ Clone the Repository
First, pull the project down to your local environment and navigate into the newly created directory:

```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-daniel-tal.git
cd 26b-10142-bash-daniel-tal
```

### 2️⃣ Make Scripts Executable
Before you can run the files, you need to grant them execution permissions. Run the following command to update all bash scripts in the `scripts` folder:

```bash
chmod +x scripts/*.sh
```

### 3️⃣ Run a Script
Once the permissions are set, you can execute any script by calling it from the root directory:

```bash
./scripts/script_name.sh
```

---

### 🛠️ Compatibility & Prerequisites

* **Environment:** All scripts were written specifically for **Bash** and have been thoroughly tested on **Debian**.
* **Dependencies:** They use common command-line tools that are normally installed on Debian. However, **some external libraries or tools (such as `curl` or `wget`) might need to be installed manually** depending on your exact setup.
* **Error Handling:** When a required tool is missing, the script safely halts and prints a clear error message letting you know exactly what you need to install.