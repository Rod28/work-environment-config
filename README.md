# Entorno de trabajo

Esta configuración esta basada en mi entorno de trabajo MAC que utilizo para trabajar.

&nbsp;

- ## Warp

  La yerminar que utilizo es [Warp](https://docs.warp.dev/getting-started/readme) y toda su configuración esta hecha con [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation). La configuración de starship que utilizo esta en el archivo [starship.toml](./starship.toml).

&nbsp;

- ## Homebrew

  Para instalar [Homebrew](https://brew.sh/) es necesario correr el siguiente comando del sitio de homebrew, y exportar el path del mismo, ya que homebrew si instala en la shell de bash y no con zsh.

    ```zsh
      # Home brew
      export PATH="/opt/homebrew/bin:$PATH"

      # Correr desde la terminal para saber si Homebrew esta listo para usarse
      brew doctor
    ```

&nbsp;

- ## Neofetch

  [Neofetch con Homebrew](https://formulae.brew.sh/formula/neofetch#default) muestra estadisticas del equipo. Para ejecutarlo en el momento de abrir la terminal, se debe agregar la siguiente linea al final del archivo **.zshrc**.

    ```zsh
      # Muestra estadisticas al ejecutar la terminal por primera vez
      neofetch
    ```

  Dentro del archivo de configuración **~/.config/neofetch/config.conf**, reemplazar todo el código que está arriba de "# Title" por lo siguiente.

    ```zsh
      print_info() {
          info title

          info dividerPersonal
          info "GitHub" gitHub
          info "Correo" correo

          info dividerSystem
          info "OS" distro
          info "Host" model
          info "Packages" packages
          info "Shell" shell
          info "Terminal" term
          info "Terminal Font" term_font

          info dividerHardware
          info "Resolution" resolution
          info "CPU" cpu
          info "CPU Usage" cpu_usage
          info "GPU" gpu
          info "Memory" memory

          # info "Kernel" kernel
          # info "Uptime" uptime
          # info "GPU Driver" gpu_driver  # Linux/macOS only
          # info "CPU Usage" cpu_usage
          # info "Disk" disk
          # info "Battery" battery
          # info "Font" font
          # info "Song" song
          # [[ "$player" ]] && prin "Music Player" "$player"
          # info "Local IP" local_ip
          # info "Public IP" public_ip
          # info "Users" users
          # info "Locale" locale  # This only works on glibc systems.

          info cols
      }

      # ------------ Custom info ------------
      # Dividers
      dividerPersonal="****************** INFORMACION ******************"
      dividerSystem="********************* SYSTEM ********************"
      dividerHardware="******************** HARDWARE *******************"

      # Datas
      gitHub="https://github.com/Rod28"
      correo="r.garez28@gmail.com"


      # Title
    ```

&nbsp;

- ## Alias

  La siguiente lista de alias, se debe agregar dentro del archivo de configuración **.zshrc**

    ```zsh
      # Alias
      # --------- ZSH
      alias zshconfig="vim ~/.zshrc"
      alias zshsource="source ~/.zshrc"
      alias zshupdate="omz update"
      # --------- VIM
      alias vimconfig="vim ~/.vimrc"
      # --------- NEOFETCH
      alias neoconfig="vim ~/.config/neofetch/config.conf"
      # --------- SSH
      alias sshpub="cat ~/.ssh/id_rsa.pub"
      # --------- SASS
      alias sasscompiler="sass --watch sass:css"
      # --------- NODE
      alias nodeclear="rm -rf node_modules"
      # --------- NPM
      alias npmroot="npm root -g"
      alias gitConfig="git config --list"
      # --------- XCODE
      alias xcodeW='open -a "/Applications/Xcode.app" *.xcworkspace'
      alias xcodeP='open -a "/Applications/Xcode.app" *.xcodeproj'
    ```

&nbsp;

- ## FiraCode para editor VS Code

  Entrar en la siguiente liga, [FiraCode](https://github.com/tonsky/FiraCode) y descargar el archivo **Fira_Code_v6.2.zip** (la versión del .zip puede variar), dentro del .zip, abrir la carpeta **ttf** e instalar cada una de las fuentes con doble click. La configuración de vs-code que utilizo esta en el archivo [settings.json](./settings.json).

&nbsp;

- ## Sintaxis de Markdown

  Para leer más sobre la sintaxis de como escribr markdown, consultar el siguiente link.

  [Uso de Markdown](https://markdown.es/sintaxis-markdown/).
