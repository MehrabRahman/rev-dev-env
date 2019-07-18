# Visual Studio Code
An extensible, open source, and cross platform text editor that can be customized to serve as a text editor, an IDE, and anything in between. While a popular tool of choice for front end development, several first-party extensions from Microsoft now support Java development as well.

## Getting Started with Java and VSCode
Visual Studio Code is freely available for download on Windows, MacOS, and Linux platforms. The Java Extension Pack from Microsoft will require Java to be installed as well. While both can be installed independently, both can be installed together along with the extension pack: [Visual Studio Code for Java Developers](https://aka.ms/vscode-java-installer-win)

## Recommended Extensions
- [Java Extension Pack](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) is a collection of popular extensions to support Java projects. The extension will install the following, which can be individually installed instead:
    - [Language Support for Java™ by Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.java)
        - Code Navigation
        - Auto Completion
        - Refactoring
        - Code Snippets
    - [Debugger for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug)
        - Debugging
    - [Java Test Runner](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test)
        - Run & Debug JUnit/TestNG Test Cases
    - [Maven Project Explorer](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven)
        - Project Scaffolding
        - Custom Goals
    - [Java Dependency Viewer](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-dependency)
        - View Java projects, referenced libraries, resource files, packages, classes, and class members
    - [Visual Studio IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
        - AI-assisted development
        - Completion list ranked by AI

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) adds a new view to the Git sidebar visualizing a repository's git commit and branch history.

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) for VSCode can detect  native or Docker Toolbox managed containers from the sidebar. If using Docker Toolbox, it is recommended to set system environment variables for docker-machine. This will allow the VSCode integrated terminal to run docker commands.

- [PostgreSQL](https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-postgresql) is an official extension for simple connection management and query execution for Postgres databases.

- [SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) connects to a variety of databases, run queries, and display tables and functions.

- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) launches a quick server for HTML projects.

- [Tomcat for Java](https://marketplace.visualstudio.com/items?itemName=adashen.vscode-tomcat) can deploy Java webapps to a Tomcat server managed through a UI sidebar menu.

- [Quicktype](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype) generates classes from a JSON source for a variety of languages, including Java and TypeScript.

## Recommended Settings
User and workspace settings can be changed either through File -> Preferences -> Settings (Ctrl + ,) or in `settings.json`. Some particular options of note:
- `terminal.integrated.shell.windows`: changes the default integrated terminal. Can be set to Git Bash on Windows shell.
- `java.home`: While normally detected on system environment variables, a preferred JDK installation can be manually set here.
- `terminal.explorerKind`: Sets the preferred default shell when debugging. Set to "external" or "integrated" as the default "internal" shell does not work with stdin/stdout commands for Java command line programs.
- `docker.host`: Use with Docker extension to manually set the DOCKER_HOST environment variable, if the extension is unable to detect an existing docker machine locally or if an external docker server is needed.
- `java.format.onType.enabled`: Use with the Java extension pack to automatically format a Java file after every enter, semicolon, or closing brace.