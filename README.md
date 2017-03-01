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
  - a completely configured workspace is available [here](https://github.com/pmeisen/tida-workspace)
- git and/or GitHub Desktop to clone the needed repositories
  
**Note:**

In general, higher version should be usable. Nevertheless, the past has shown that newer version may come
with new features, which break the old code. Thus, the currently used version are recommended when developing.

### Cloning the needed Repositories

The pre-defined **TIDA work-space** includes several repositories. To utilize the pre-configured work-space it is
necessary to clone the following GitHub repositories into the following folder-structure:

