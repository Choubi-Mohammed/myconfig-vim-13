# ⚡ MyConfig Vim-13

<div align="center">

[![GitHub stars](https://img.shields.io/github/stars/Choubi-Mohammed/myconfig-vim-13?style=for-the-badge)](https://github.com/Choubi-Mohammed/myconfig-vim-13/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Choubi-Mohammed/myconfig-vim-13?style=for-the-badge)](https://github.com/Choubi-Mohammed/myconfig-vim-13/network)
[![GitHub issues](https://img.shields.io/github/issues/Choubi-Mohammed/myconfig-vim-13?style=for-the-badge)](https://github.com/Choubi-Mohammed/myconfig-vim-13/issues)
[![License: Unlicensed](https://img.shields.io/badge/license-Unlicensed-blue.svg?style=for-the-badge)](https://unlicense.org/)

**A simple and efficient Vim configuration tailored for 1337 school standards, focusing on `norm` compliance and C programming comfort.**

</div>

## 📖 Overview

This repository provides a streamlined and carefully curated Vim configuration, specifically designed to meet the unique requirements of students at 1337 school. It emphasizes `norm` compliance for C projects, offering a minimal yet comfortable editing environment without unnecessary distractions.

The configuration automates the setup process, ensuring a consistent development experience across different machines. It includes essential plugins and settings to boost productivity for C programming, making it easier to adhere to strict coding guidelines while maintaining a pleasant user experience.

## ✨ Features

-   **Automated Setup**: A single script (`setup_vim_13.sh`) handles the entire installation of Vim-related files and plugins.
-   **`norm` Compliance**: Pre-configured settings like `tabstop=4`, `shiftwidth=4`, `expandtab`, and `listchars` assist in adhering to `norm` coding style guidelines, especially crucial for C projects.
-   **Essential Plugin Management**: Integrates [`vim-plug`](https://github.com/junegunn/vim-plug) for easy and efficient management of crucial plugins.
-   **Key Plugins Included**:
    -   [`tpope/vim-sensible`](https://github.com/tpope/vim-sensible): Sensible Vim defaults.
    -   [`vim-airline/vim-airline`](https://github.com/vim-airline/vim-airline): A lean & mean status/tabline for Vim.
    -   [`vim-airline/vim-airline-themes`](https://github.com/vim-airline/vim-airline-themes): Themes for vim-airline.
    -   [`itchyny/lightline.vim`](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline.
    -   [`dracula/vim`](https://github.com/dracula/vim): The popular Dracula dark theme for Vim.
    -   [`morhetz/gruvbox`](https://github.com/morhetz/gruvbox): A retro dark/light Gnu/Linux terminal theme.
    -   [`prettier/vim-prettier`](https://github.com/prettier/vim-prettier): An opinionated code formatter integration (requires Node.js and npm).
-   **Optimized UI/UX**: Settings for `number`, `relativenumber`, `cursorline`, `incsearch`, and `termguicolors` enhance code readability and navigation.
-   **Backup System**: Automatically backs up existing `.vimrc` and `.vim/` directories (to `~/.vimrc.bak` and `~/.vim.bak`) before applying the new configuration, preventing accidental data loss.
-   **Color Scheme Preview**: Includes `preview_vim_colors.sh` script to easily view and switch between installed color schemes.

## 🛠️ Tech Stack

-   **Configuration Language**: VimL
-   **Scripting**: Shell Script (Bash)
-   **Text Editor**: Vim
-   **Plugin Manager**: vim-plug
-   **Tools**: Git, cURL
-   **Optional Dependency**: Node.js & npm (for `vim-prettier` plugin)

## 🚀 Quick Start

### Prerequisites

Ensure you have the following installed on your system:

-   **Vim**: Version 8.0 or newer is recommended for optimal plugin compatibility.
-   **Git**: For cloning the repository and managing some plugin dependencies.
-   **cURL**: Required by `vim-plug` for downloading plugins.
-   **Node.js & npm**: *Optional*, but highly recommended for the `vim-prettier` plugin to function correctly.

### Installation

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/Choubi-Mohammed/myconfig-vim-13.git
    cd myconfig-vim-13
    ```

2.  **Run the setup script**:
    This script will:
    -   Check for Vim installation.
    -   Backup your existing `~/.vimrc` and `~/.vim/` directory (to `~/.vimrc.bak` and `~/.vim.bak`).
    -   Create a new `.vimrc` file with the custom configuration.
    -   Install `vim-plug` if it's not already present.
    -   Install all specified Vim plugins.

    ```bash
    sh setup_vim_13.sh
    ```

### Post-Installation

-   **Restart Vim**: After running the setup script, simply open `vim` in your terminal. All configurations and plugins should now be active.
-   **Verify `vim-prettier` (if Node.js is installed)**: If you installed Node.js and npm, the `vim-prettier` plugin should be functional. You can try formatting a supported file type (e.g., JavaScript, JSON) using its commands.

## 📖 Usage

### Using the Configured Vim

Once installed, simply open `vim` or `vi` in your terminal. You'll notice:

-   Line numbers (`number`, `relativenumber`).
-   Syntax highlighting and filetype detection.
-   The `dracula` color scheme.
-   The `vim-airline` or `lightline.vim` statusline at the bottom.
-   Automatic indentation with 4 spaces (`tabstop=4`, `shiftwidth=4`, `expandtab`).
-   The `space` key as your `<Leader>` key for plugin mappings.

### Previewing Color Schemes

You can use the `preview_vim_colors.sh` script to quickly see how different color schemes look without manually editing your `.vimrc`.

```bash
sh preview_vim_colors.sh
```

This script will sequentially display several popular color schemes, including `dracula` and `gruvbox` (which are installed by the setup script), directly in your terminal.

## 📁 Project Structure

```
myconfig-vim-13/
├── .gitignore               # Specifies intentionally untracked files to ignore
├── README.md                # This documentation file
├── preview_vim_colors.sh    # Script to preview different Vim color schemes
└── setup_vim_13.sh          # Main script for automating Vim configuration and plugin installation
```

## ⚙️ Configuration & Customization

The core of this configuration resides in the `setup_vim_13.sh` script, which generates your `~/.vimrc` file.

-   **`~/.vimrc`**: This file contains all the Vim settings, plugin declarations, and mappings. Feel free to open `~/.vimrc` and modify it directly to suit your personal preferences.
    -   **UI Settings**: Adjust `set number`, `set relativenumber`, `set mouse=a`, etc.
    -   **Indentation**: Change `tabstop`, `shiftwidth`, `expandtab` values if your project requires different settings (though 4 spaces are standard for 1337 school `norm`).
    -   **Color Scheme**: Modify `colorscheme dracula` to any other installed scheme (e.g., `gruvbox`) or add new `Plug` lines for more themes.
    -   **Plugins**: Add or remove `Plug 'author/plugin'` lines within the `call plug#begin()` and `call plug#end()` block. After modifying, run `:PlugInstall` inside Vim to install new plugins, or `:PlugClean` to remove unused ones.

## 🤝 Contributing

We welcome contributions to improve this Vim configuration! If you have suggestions for new plugins, better settings, or scripts, please feel free to:

1.  **Fork** the repository.
2.  **Create a new branch**: `git checkout -b feature/your-feature-name`.
3.  **Make your changes**.
4.  **Commit your changes**: `git commit -m 'feat: Add new feature'`.
5.  **Push to the branch**: `git push origin feature/your-feature-name`.
6.  **Open a Pull Request**.

## 📄 License

This project does not have an explicit license file declared. Users are generally advised to contact the repository owner for licensing clarification, or assume standard GitHub terms which may not grant permissions for commercial use.

## 🙏 Acknowledgments

-   **Vim**: The powerful text editor itself.
-   **vim-plug**: A minimalist Vim plugin manager.
-   **All the amazing plugin authors**: For their contributions that make Vim even better.

## 📞 Support & Contact

-   🐛 **Issues**: For bug reports or feature requests, please use the [GitHub Issues](https://github.com/Choubi-Mohammed/myconfig-vim-13/issues) page.

---

<div align="center">

**⭐ Star this repo if you find it helpful!**

Made with ❤️ by [Choubi Mohammed](https://github.com/Choubi-Mohammed)

</div>
