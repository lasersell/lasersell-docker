# LaserSell Docker Setup

[![Docker Image Version](https://img.shields.io/docker/v/lasersell/lasersell?sort=semver&logo=docker&logoColor=white)](https://hub.docker.com/r/lasersell/lasersell)
[![Docker Pulls](https://img.shields.io/docker/pulls/lasersell/lasersell?logo=docker&logoColor=white)](https://hub.docker.com/r/lasersell/lasersell)
[![Docker Image Size](https://img.shields.io/docker/image-size/lasersell/lasersell?logo=docker&logoColor=white)](https://hub.docker.com/r/lasersell/lasersell)

Follow these steps to install and configure LaserSell.

**Note:** You do not need to download any config files manually. This tool will generate them for you.

## 1. Preparation
1.  **Install Docker Desktop:** [Download here](https://www.docker.com/products/docker-desktop/).
2.  **Create a Folder:** Create a new empty folder on your desktop named `lasersell`.

## 2. Run & Setup
Open your terminal and follow the instructions for your OS.

### Windows (PowerShell)
1.  Open **PowerShell**.
2.  Type `cd` followed by a space, drag your `lasersell` folder into the window, and press **Enter**.
3.  Copy and paste this command and press **Enter**:

    ```powershell
    docker run -it --rm -v ${PWD}:/app/.lasersell lasersell/lasersell
    ```

### Mac (Terminal)
1.  Open **Terminal**.
2.  Type `cd` followed by a space, drag your `lasersell` folder into the window, and press **Enter**.
3.  Copy and paste this command and press **Enter**:

    ```bash
    docker run -it --rm -v "$(pwd):/app/.lasersell" lasersell/lasersell
    ```

## 3. What happens next?
1.  **First Run:** Since you have no config files, the **LaserSell Setup Wizard** will launch inside the window.
2.  **Follow the Wizard:** Enter your license key and preferences.
3.  **Files Saved:** When you finish, the bot will save your `config.yml` and `config.keystore.json` directly into your `lasersell` folder on your desktop.
4.  **Next Run:** The next time you run the command, the bot will see your files and start trading automatically.
