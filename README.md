# Entorno de trabajo

Esta configuración esta basada en mi entorno de trabajo MAC que utilizo para trabajar.

- ## VIM

  Crea y edita el siguiente archivo en la raiz del equipo.

    ```zsh
      vim ~/.vimrc
    ```

  &nbsp;

- Dentro del archivo de configuración **.vimrc** agregar las siguientes líneas de código.

    ```zsh
      syntax on
      set expandtab
      set tabstop=4
      retab
      set shiftwidth=4
      set hlsearch
      set paste
      set ic
      set number
      color default
    ```

&nbsp;

- ## OH MY ZSH

  Para obtener la configuraón inicial de **Oh My Zsh**, entrar al enlace [Oh My Zsh](https://ohmyz.sh/). A partir de aqui, todas las configuraciones se harán en el archivo **.zshrc** que se genere al ejecutar el comando de instalación de Oh My Zsh.

&nbsp;

- ## Fuentes

  Dentro de este repo se pueden obtener las fuetes que se usan para VS Code y para Warp, dentro de la carpeta [Fonts](./Fonts/). Si se quieren actualizar estas fuentes se puede hacer desde los enlaces de abajo.

  > [FiraCode](https://github.com/tonsky/FiraCode)
  >
  > [MesloLGS NF](https://github.com/romkatv/dotfiles-public/tree/master/.local/share/fonts/NerdFonts)

&nbsp;

- ## Warp

  La terminar que utilizo es [Warp](https://docs.warp.dev/getting-started/readme) y toda su configuración esta hecha con [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation), revisar instalación y configuración. La configuración de starship que utilizo en mi equipo esta en el archivo [starship.toml](./starship.toml).

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

- ## VS Code

  Para obtener la configuración y todas las extensiones, basta con iniciar sesión con la cuenta de GitHub donde se hizo el respaldo desde la configuración de VS Code.

&nbsp;

- ## Sintaxis de Markdown

  Para leer más sobre la sintaxis de como escribr markdown, consultar el siguiente link.

  [Uso de Markdown](https://markdown.es/sintaxis-markdown/).
