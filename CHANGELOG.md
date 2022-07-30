# Changes

## 1.4.1 / YYYY-MM-DD

* Core: Convert all `package.html` to `package-info.java`
* JDK8: Add generics, serialVersionID, for-each-loop, remove warnings, ...
* Fix: CVE-2014-0114 with test-cases
* Add `TestLogFactory` and `TestLog` for testing
* Bump `beanutils` from 1.8.0 to 1.9.4
* Set java-version from `1.4` to `1.8`
* Upgrade `Tomcat5x` to `Tomcat6x`
* Set Version to 1.4.1-SNAPSHOT

## 1.4.0 / 2022-07-28

* Set Version to 1.4.0
* Bump `junit-jupiter-engine` from 5.8.2 to 5.9.0
* Bump `maven-bundle-plugin` from 1.4.0 to 5.1.7 and remove `_nouses`-parameter
* Add `dormant`-profile to `README.md` in IT
* Strip trailing spaces
* Rename `tour.htm` to `tour.html`
* Replace tabs with spaces
* Some encoding-updates to UTF-8
* Delete `.cvsignore`-files
* Correct `README.md` - section deployment
* Correct title in site-documentation of `Tiles2`
* Remove `provided`-scope for `myfaces-jsf-api`
* Add `dependency-analyze`-report
* Create no MANIFEST with OSGi-Entries at IT
* Correct deprecated maven-properties
* Correct dependencies for `org.apache.tiles:*` and lib-assembly
* Add `Tiles2` to site-documentation
* Add missing xml-declaration and encoding
* Little reformating
* Correct package-description in `tiles` and `tiles2`
* Consider exception in `initModulePlugIns` in tiles test-case
* Replace invalid UTF-8 code with space
* Correct typo in `html-link.jsp`
* STR-2986: Add `Tiles2`-dependency to `assembly`-POM
* Correct some links in site-documentation
* STR-1305: Add <html:label> tag to output HTML label
* STR-3032: Copy unaccessed messages/errors to session if redirecting
* STR-3153: Adapt `README.md`
* STR-3168: Missing dispatching-constants
* STR-2740: Support for XHTML 1.1 and XHTML 2.0 etc.
* STR-3153: Optional build profile for dormant subprojects
* STR-2913: Message tags to expose count of messages
* STR-3152: Pull common dependencies into the parent Struts 1 POM
* STR-3107: Case-insensitive URI matching
* STR-3111: Allow <set-property> as a top-level element
* STR-3078: Extend action configs by action id
* STR-2499: Find required forward or throw exception
* STR-3052: ImgTag missing actionId support
* STR-1922: Add message parameter XML-escaping to <html:messages>
* STR-2072: [taglib] html:option etal need title attribute
* STR-1175: No inheritance of html:html xhtml="true" in included tiles
* STR-3025 and STR-3094: Select input based on convention over configuration and log error when input forward does not exist
* STR-3024: Added ERROR, INPUT, LOGIN, SUCCESS constants
* STR-3004: Update missing 1.4 DTD
* STR-2986: Build Struts 1 - Tiles 2 integration
* STR-3004: Create 1.4 DTD
* STR-286 and STR-1116: ActionForm populate and reset strategy
* STR-3168: Add dispatching support to Controller and Action configuration
* Set Version to 1.4.0-SNAPSHOT

## 1.3.11 / 2022-07-19

* Remove check-changes during verify-phase
* Set Version to 1.3.11
* Bump `taglib-maven-plugin` from 2.6-SNAPSHOT to 2.6
* Correct `README.md` for deployment
* Add link to site-documentation into `README.md`
* Add `maven-scm-publish-plugin` to deploy site-documentation
* Delete `.htaccess` in `userGuide`
* Remove parent-POM
* Correct SCM-addresses, url's, organization and distribution management
* Correct title of `Struts Mailreader DAO`
* Adaptation of the links to the new web-space
* Add `struts-mailreader-dao` to dependencies-index
* Correct assembly-definitions to add `apps-it-selenium` and `struts-mailreader-dao`
* Change groupId from `org.apache.struts` to `io.github.weblegacy`
* Correct javadoc-options for minimized output and no errors
* Add new hint to `README.md`
* Add missing `slf4j-simple`-test-dependency
* Bump `webdrivermanager` from 5.1.1 to 5.2.1
* Bump `selenium-java` from 4.1.3 to 4.3.0
* Bump `htmlunit` from 2.61.0 to 2.63.0
* Bump `cargo-maven3-plugin` from 1.9.11 to 1.9.13
* Bump `maven-surefire-report-plugin` from 3.0.0-M6 to 3.0.0-M7
* Bump `maven-surefire-plugin` from 3.0.0-M6 to 3.0.0-M7
* Bump `maven-project-info-reports-plugin` from 3.2.2 to 3.3.0
* Bump `maven-pmd-plugin` from 3.16.0 to 3.17.0
* Bump `maven-failsafe-plugin` from 3.0.0-M6 to 3.0.0-M7
* Bump `maven-enforcer-plugin` from 3.0.0 to 3.1.0
* Bump `maven-assembly-plugin` from 3.3.0 to 3.4.1
* Corr: Adapt JXR-generation to resamble 1.3.10-Version
* Add `Struts-Mailreader DAO`-site-doc-files
* Move `maven-changes-plugin`-definition to parent-POM
* Adapt JXR-generation to resamble 1.3.10-Version
* Adapt JavaDoc-generation to resamble 1.3.10-Version
* Correct DTD-copy
* Correct `site.xml` in apps
* Generate change-report in `scripting`-module
* Correct `README.md`
* Lint markdown-files
* Add project-encoding-properties
* Add quite-config to `javadoc-plugin`
* Also install/deploy parent-`site.xml`-files
* Correct some typos in site-doc-files
* Add `Struts-Core`-site-doc-files
* New body-links in `site.xml`-files
* Use own images in site-doc-files
* Correct some URLs in site-doc-files
* Some reformatings in site-doc-files
* Add XSD to all site-doc-files and correct them
* Add/update XML-Declaration with encoding
* Adapt internal links in site-docs
* Delete not used `navigation.xml`'s from FAQs and user-guide
* Add again deleted preface to user-guide
* Downgrade `checkstyle` from 10.2 to 9.3 to use it with Java 8
* Correct http-adress of the license
* Use new `taglib-maven-plugin` from `io.github.weblegacy`
* Bump `webdrivermanager` from 5.1.0 to 5.1.1
* Bump `htmlunit` from 2.60.0 to 2.61.0
* Bump `cargo-maven3-plugin` from 1.9.10 to 1.9.11
* Bump `maven-site-plugin` from 3.11.0 to 3.12.0
* Bump `maven-javadoc-plugin` from 3.3.2 to 3.4.0
* Bump `checkstyle` from 10.1 to 10.2
* Use `commons-io` 2.11.0 for integration-tests
* Add more informations into `README`s, remove `mvn_hints`
* Bump `maven-taglib-plugin` 2.4 to `taglib-maven-plugin` 2.5
* Generate Assemblies in package-phase
* apps/faces-examples: remove spaces in comments
* Add optional dependency `commons-io`
* Bump MAVEN-Plugins (clean, failsafe, surefire, surefire-report)
* STR-2802: Add a test case
* STR-2321 and STR-2319: Compare floats and doubles
* Update README
* Reorg integration-tests
* Correct `html:link`-Tag: params connectect with `&amp;` instead `&`
* apps/[scripting-]mailreader: Convert `Canoo WebTests` to `Selenium IDE`-tests
* apps/[scripting-]mailreader: Add missing gif and remove version from index-title
* Remove unnecessary taglib-definitions in `faces-example`s
* Correct `faces-example`s (wrong DOCTYPEs) and activate Struts-Faces-Examples again
* Remove unused import
* Some corrections in `src/site`-docs
* WW-1974 Add link to release notes form announcement. Correct link in archival copy of 1.2.7 release notes
* STR-2153: Reveal the offending bean and property name when iterating
* STR-1195: SelectTag should single select when "multiple" attribute equals false
* STR-3191: Filter attributes
* STR-2779: Better explain why invalid collection (thanks to Ralf Hauser)
* STR-2904: Verify only one instance of the plugin is loaded per module
* STR-2611: Cite the form name in validation exception message
* Reorder language specific ActionResources-properties
* STR-1809: Enhance log error message for when the Action cannot instantiate
* STR-3085: Configuration post-processing via plug-ins
* STR-1819: Warn if a form is not declared but later used
* Skip install- and deployment-phase for integration tests
* Move more property files into standard Maven resources folder
* Correct `html-img.jsp` in `apps/examples`
* STR-2700: Correction - Clear input stream on aborted upload (Windows only)
* Adjust resource definitions in pom.xml
* STR-2013: Add Spanish translations
* Move property files into standard Maven resources folder
* Remove NOTICE.txt from Apache Struts EL
* STR-3042: Retrieve page through methods
* STR-2098: Clarify FileNotFoundException depends on underlying implementation
* STR-2959: File upload has 2GB limit
* STR-2700: Clear input stream on aborted upload (Windows only)
* STR-3068: Warn when using the classic RequestProcessor
* STR-1870: Add debug log message to explain initialization strategy
* STR-1870: Fail fast when definition is duplicated
* STR-2924: Allow Exception key to be optional
* STR-2020: Explain that NPE is caused by missing ActionServlet
* STR-1638: Note that anchor cannot be standalone
* STR-3150: Use Chain processing constants
* STR-3119: Add root cause to thrown exceptions that do not accept root cause in the constructor
* STR-2437: Standardize exception rethrows to contain root cause
* Some test-code reformating, no change
* Core: Making some of the fail messages a bit more expressive
* Bump selenium-java from 4.1.2 to 4.1.3
* Bump htmlunit from 2.59.0 to 2.60.0
* Bump maven-jxr-plugin from 3.1.1 to 3.2.0
* Bump checkstyle from 10.0 to 10.1
* Continue processing on `JavaDoc`-error in profile `pre-assembly`
* Centralize profile `pre-assembly`
* STR-3121: Bump Commons Logging to 1.1.1
* STR-3059: Bump Commons FileUpload to 1.2.1
* STR-3152: Pull common dependencies into the parent Struts 1 POM
* IT: Add `refresh` to Selenium-Test
* IT: Update `README`
* IT: Add `WebDriverManager` and activate Selenium-Test
* IT: Correct Selenium-Test and add configurable port-number
* IT: Add methods for JDK 1.7-compatibility
* Convert `testgen4web` to `Selenium` integration tests
* Add `cargorun`-profile
* Add forgotten `dispatchValidator.zip` from apache-struts1-clone
* Integration-test: skip creating empty jar file
* Move integration-test-settings to integration-test-parent-POM
* Integration-tests with JUnit5 and deploy server with cargo-function
* Bump JUnit 3.8.1 to JUnit5 5.8.2
* Compile tests with JDK 1.8 and integration-tests with JDK 1.7
* Move `TestMockBase` in module `core` from main into test
* Centralize junit dependency
* Update ReadMe
* Update javadoc-links
* Change comment in checkstyle-config
* Update deprecated MAVEN-Var ${basedir} to ${project.basedir}
* Move maven-war-plugin from struts-app to parent
* Set current MAVEN-Plugins in subproject-profile
* Bump MAVEN-Plugins to current versions
* Upgrade Checkstyle to 10.0
* Move checkstyle-config to local
* Upgrade maven-assembly-plugin with adjustments to current version
* Disable 2 non-working integration-tests
* Upgrade cargo-maven2-plugin (with dependencies) to cargo-maven3-plugin
* Replace maven-antrun-plugin with maven-resources-plugin
* Add/Define missing maven-plugins
* Define Java-Version thru MAVEN-Var
* Add maven-resources-plugin: Define encoding
* Add maven-enforcer-plugin: Enforces required MAVEN-Version
* Update deprecated MAVEN-Var ${version}
* Centralize MAVAN-Plugins-Version with PluginManagement
* Replace org.apache.struts with ${project.groupId}
* Remove MAVEN-GroupID from Sub-Projects
* Remove MAVEN-Default-Plugin-Group (org.apache.maven.plugins)

## 1.3.11-SNAPSHOT / 2022-03-11

* Clone of <https://github.com/apache/struts1.git> - STRUTS_1_3_BRANCH
* Add CHANGELOG
* Add LICENSE
* Add mvn_hints.md
* Add NOTICE
* Add README.md
