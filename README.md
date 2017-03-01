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
- IntelliJ IDEA 2016 (optional, but recommended)
  - a fully configured workspace is available [here](https://github.com/pmeisen/tida-workspace)
- git and/or GitHub Desktop to clone the needed repositories
  
**Note:** In general, higher version should be usable. Nevertheless, the past has shown that newer version may come
with new features, which break the old code. Thus, the currently used version are recommended when developing.

### Cloning the needed Repositories

The pre-defined **TIDA work-space** includes several repositories. To utilize the pre-configured work-space it is
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