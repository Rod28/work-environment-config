# Entorno de trabajo

Esta configuración esta basada en mi entorno de trabajo MAC que utilizo para trabajar.

&nbsp;

- ## Fuentes

  Dentro de este repo se pueden obtener las [fuetes](./Fonts) que se usan para VS Code y para Warp. Si se quieren actualizar estas fuentes, se puede hacer desde los enlaces de abajo.

  > [FiraCode](https://github.com/tonsky/FiraCode)
  >
  > [MesloLGS NF](https://github.com/romkatv/dotfiles-public/tree/master/.local/share/fonts/NerdFonts)

&nbsp;

- ## Terminal Warp

  La terminar que utilizo es [Warp](https://docs.warp.dev/getting-started/getting-started-with-warp) y toda su configuración esta hecha con **Starship**. Más adelante vamos a configurarlo. Para seleccionar la fuente recien descargada **MesloLGS NF**, abrir la configuración de **Warp** con ```Command + ,``` y en el apartado de **Appearance**, buscar **Terminal font** y seleccionar **MesloLGS NF**.

  Para generar un tema personalizado para **Warp**, copiar el contenido del archivo [jarvis.yaml](./Warp/jarvis.yaml) y generar un archivo de configuración con el siguiente comando:

    ```zsh
      # Generar la carpeta themes
      mkdir -p ~/.warp/themes/

      # Generar el archivo para el nuevo tema
      vim ~/.warp/themes/my-custom-theme.yaml
    ```

    > Revisar [temas personalizados](https://docs.warp.dev/appearance/custom-themes) con **Warp**.

    Para utilizar el tema recien creado, abrir la configuración de **Warp** con ```Command + ,``` y en el apartado de **Appearance**, buscar **Themes**, el nombre del archivo yaml que se generó, será el nombre del tema a utilizar.

&nbsp;

- ## VIM

  Crear y editar el archivo **.vimrc** en la raiz del equipo y agregar las siguientes líneas de código.

    ```zsh
      # Generar el archivo de configuración .vimrc
      vim ~/.vimrc

      # Copiar dentro del archivo recien creado
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

  Para obtener la configuración inicial de la shell, entrar al enlace [Oh My Zsh](https://ohmyz.sh/) y correr el comando que viene al final del sitio. A partir de aqui, todas las configuraciones se harán en el archivo **.zshrc** que se genere al ejecutar el comando de instalación de **Oh My Zsh**.

  Entrar en el archivo de configuración **.zshrc** que está en la raíz del equipo para hacer cualquier edición en la shell de zsh.

    ```zsh
      vim ~/.zshrc

      # Imprime en consola la shell que está en uso
      echo $SHELL
    ```

  Dentro del archivo de configuración **.zshrc**, asignar un string vacío a la variable
  **ZSH_THEME**. Esto es así debido a que se va a generar un tema con **Starship** más adelante.

  Para hacer que los comandos de exito y error resalten en otro color en **Oh My Zsh**, ir al siguiente [enlace](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md). Una vez instalado, agregarlo dentro de la variable **plugins** del archivo de configuración **.zshrc**.

    ```zsh
      plugins=(
        # other plugins...
        zsh-syntax-highlighting
      )
    ```

  Agrega los siguientes [alias](./zshconfig.sh) en el mismo archivo de configuración **.zshrc**.

&nbsp;

- ## Homebrew

  Para instalar [Homebrew](https://brew.sh/) es necesario correr el siguiente comando del sitio oficial de **homebrew** y exportar el path del mismo dentro del archivo de configuración **.zshrc**, ya que homebrew se instala en la shell de **bash** y no en la de **zsh**.

    ```zsh
      # Home brew
      export PATH="/opt/homebrew/bin:$PATH"

      # Revisar que se ha instalado correctamente
      brew --version

      # Revisar si Homebrew esta listo para usarse
      brew doctor
    ```

&nbsp;

- ## Starship

  [Starship](https://starship.rs/) va a permitir configurar los iconos y el prompt de la shell de zsh. Sigue la guía para su instalación, ya que al momento de hacer esta guía, **Starship** indica que se debe de agregar una línea en el archivo de configuración **.zshrc**. Instalar preferentemente con [brew](https://formulae.brew.sh/formula/starship#default).

    ```zsh
      # Revisar que se ha instalado correctamente
      starship --version
    ```

  La configuración de **Starship** que utilizo, está dentro del archivo [starship.toml](./Starship/starship.toml) para que se copie y pegue una vez que el archivo de configuración
  exista. Generar este archivo como lo indica este enlace de [configuración](https://starship.rs/config/) de **Starship**.

&nbsp;

- ## Nvm

  [Nvm](https://github.com/nvm-sh/nvm) se utiliza para gestionar más de una versión de Node.Js.

    ```zsh
      # Revisar que se ha instalado correctamente
      nvm --version
    ```

&nbsp;

- ## Neofetch

  [Neofetch con Homebrew](https://formulae.brew.sh/formula/neofetch#default) muestra estadisticas del equipo. Para ejecutarlo en el momento de abrir la terminal, se debe agregar la siguiente línea al final del archivo de configuración **.zshrc**.

    ```zsh
      # Muestra estadisticas al ejecutar en la terminal
      neofetch
    ```

  Dentro del archivo de configuración que se genera en la siguiente ruta **~/.config/neofetch/config.conf**, reemplazar todo el código que está arriba de apartado **"# Title"** por el contenido del archivo [config.conf](./Neofetch/config.conf).

&nbsp;

- ## VS Code

  Descarga [Visual Studio Code](https://code.visualstudio.com/docs/?dv=osx) y ejecuta el siguiente comando desde **VS Code** para exportar el path que permita abrirlo desde cualquier terminal.

    ```zsh
      Command + Shift + P

      # Escribe shell y seleccionar la opcion que diga:
      # Shell Command: Install 'code' command in PATH
    ```

  Para obtener todas las extensiones y configuración de **VS Code**, basta con iniciar sesión con la cuenta de **GitHub** donde se hizo el respaldo desde la configuración.
  Lo mismo aplica para generar un respaldo.

&nbsp;

- ## SSH

  Para generar una nueva llave **ssh**, ejecuta el siguiente comando. Consulta el [enlace](https://man.openbsd.org/ssh-keygen.1) para revisar los parámetros que admite el comando.

    ```zsh
      # Genera una nueva llave ssh
      ssh-keygen
    ```

&nbsp;

- ## Sintaxis de Markdown

  Para leer más sobre la sintaxis de como utilizar **Markdown**, consulta el enlace [uso de Markdown](https://markdown.es/sintaxis-markdown/).
