# Time Interval Data Analyzer (TIDA)

This is the **Time Interval Data Analyzer Distribution Package**. The project combines the different components of the full
distribution, i.e.,

- the [back-end / server](https://github.com/pmeisen/dis-timeintervaldataanalyzer-ui2)
- the [front-end / ui](https://github.com/pmeisen/dis-timeintervaldataanalyzer)
- additional drivers (e.g., [JDBC](https://github.com/pmeisen/dis-timeintervaldataanalyzer-jdbc), Hibernate)

## Setting up a Dev-Environment

If you want to develop or modify the TIDA system, the following requirements should be fulfilled:

- Java Runtime Environment (JRE) 1.8
- nodeJs with npm (currently used 5.9.1), with the following globally installed packages
  - npm (currently used 3.8.9)
  - bower (currently used 1.7.9)
  - grunt-cli (currently used 1.2.0)
  - Python (currently used 2.7, is a dependency of some node-modules used)
- IntelliJ IDEA 2016 (optional, but recommended)
  - a fully configured workspace is available [here](https://github.com/pmeisen/tida-workspace)
- git and/or GitHub Desktop to clone the needed repositories
  
**Notes:** 

- In general, higher version should be usable. Nevertheless, the past has shown that newer version may come
with new features, which break the old code. Thus, the *currently used* versions are recommended when developing.
- If you don't know how to install the nodeJs have a look at the [nodeJs Homepage](https://nodejs.org/). You can find the
download and instructions there.
- If you don't know how to install `bower` or `grunt-cli` as global modules, please have look here [npm-install](https://docs.npmjs.com/cli/install) 
or just execute `npm install -g bower` and `npm install -g grunt-cli` in your console/terminal.
- You should make sure that the commands `npm`, `grunt`, and `bower` are executable from the terminal (i.e., are in your `PATH` 
or bind), normally this is done automatically (using `UNIX` or `Mac`), nevertheless on Windows systems this
is sometimes more difficult than needed (e.g., see [bower command not found windows](http://stackoverflow.com/questions/21732447/bower-command-not-found-windows)).


### Cloning the needed Repositories

The pre-defined **TIDA workspace** includes several repositories. To utilize the pre-configured workspace it is
necessary to clone (see [How to Clone](https://help.github.com/articles/cloning-a-repository/)) the following GitHub repositories into the following folder-structure:

- [dis-timeintervaldataanalyzer](https://github.com/pmeisen/dis-timeintervaldataanalyzer.git)
- [dis-timeintervaldataanalyzer-assembly](https://github.com/pmeisen/dis-timeintervaldataanalyzer-assembly.git)
- [dis-timeintervaldataanalyzer-jdbc](https://github.com/pmeisen/dis-timeintervaldataanalyzer-jdbc.git)
- [dis-timeintervaldataanalyzer-ui2](https://github.com/pmeisen/dis-timeintervaldataanalyzer-ui2.git)

The following helper projects are also part of the workspace. The different libraries are not available on Maven Central, 
and therefore it is necessary that the projects are build and made available locally.

- [gen-dummy](https://github.com/pmeisen/gen-dummy.git)
- [gen-misc](https://github.com/pmeisen/gen-misc.git)
- [gen-sbconfigurator](https://github.com/pmeisen/gen-sbconfigurator.git)
- [gen-server](https://github.com/pmeisen/gen-server.git)
- [gen-server-http-listener](https://github.com/pmeisen/gen-server-http-listener.git)

We also have some JavaScript projects in the workspace. These are actually not needed, because the needed
files are available via `bower` or `npm`. Nevertheless, for some quick testing or quick modifications, the projects are added 
within the workspace:

- [js-gantt](https://github.com/pmeisen/js-gantt.git)
- [js-misc](https://github.com/pmeisen/js-misc.git)
- [js-svglibrary](https://github.com/pmeisen/js-svglibrary.git)

Last but not least, the workspace itself:

- [tida-workspace](https://github.com/pmeisen/tida-workspace.git)

After cloning the different projects, the folder structure should be as follows:

<p align="center">
  <img src="https://raw.githubusercontent.com/pmeisen/dis-timeintervaldataanalyzer-assembly/master/docs/folder-structure.png" alt="Folder Structure" width="230">
</p>

### Setting up the Workspace

As mentioned earlier, IntelliJ IDEA is the recommended IDE for the development of the TIDA Platform. To start developing you just have to open
the `tida-workspace` project. To do so, click on `open` in the IntelliJ start screen (or the `File` menu) and select the `tida-wrokspace` folder (!).

<p align="center">
  <img src="https://raw.githubusercontent.com/pmeisen/dis-timeintervaldataanalyzer-assembly/master/docs/intellij-open.png" alt="Folder Structure" width="230">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/pmeisen/dis-timeintervaldataanalyzer-assembly/master/docs/intellij-project-selection.png" alt="Folder Structure" width="230">
</p>

The IntelliJ IDE should open having all the modules of the project already selected. It may be necessary to open up the project view (on the left side). You may also want
to have the `Ant Build` view opened, so that you can easily `build` or `deploy` the different modules. The `Ant` scripts are only available for the `Java` modules of the 
projects, e.g., `dis-timeintervaldataanalyzer`, `dis-timeintervaldataanalyzer-jdbc`, or `gen-dummy`. The `JavaScript` or web-oriented modules are utilizing [Grunt](https://gruntjs.com/)
as build tool. It is recommended to install the `nodeJs` plug-in available for the IntelliJ IDE, so that these modules can also easily be handled via the UI. In addition, 
IntelliJ provides a `Grunt Tool Window` similar to the `Ant` one. Further information can be found here:
- [Using Grunt Task Runner](https://www.jetbrains.com/help/idea/2016.3/using-grunt-task-runner.html)
- [Grunt Tool Window](https://www.jetbrains.com/help/idea/2016.3/grunt-tool-window.html)
- [Installing, Updating and Uninstalling Repository Plugins](https://www.jetbrains.com/help/idea/2016.3/installing-updating-and-uninstalling-repository-plugins.html)

After setting everything up, the UI should be similar to something like that (or however you prefer it):

<p align="center">
  <img src="https://raw.githubusercontent.com/pmeisen/dis-timeintervaldataanalyzer-assembly/master/docs/intellij-ui-ant.png" alt="UI with Ant Tool Window" width="500">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/pmeisen/dis-timeintervaldataanalyzer-assembly/master/docs/intellij-ui-plugin-grunt.png" alt="UI with Grunt Tool Window and nodeJs PlugIn" width="500">
</p>

### Getting the different Dependencies and create Modules

To actually start developing, it is necessary to deploy the difference dependencies, which are not available via `Maven Central` and needed by the main module `dis-timeintervaldataanalyzer`, e.g.,
`gen-dummy`, `gen-misc`, or `gen-server`. To do so, the modules should be deployed using the `Ant` task `04-deploy` in the following order:
- `gen-dummy`
- `gen-misc`
- `gen-sbconfigurator`
- `gen-server`
- `gen-server-http-listener`
- `dis-timeintervaldataanalyzer-jdbc`
- `dis-timeintervaldataanalyzer`

The same is not necessary for the main UI module `dis-timeintervaldataanalyzer-ui2`. The modules needed are available on `bower` and/or `npm`, thus the `Grunt` scripts are
capable to receive the dependencies from there.