<p align="center">
  <img src="https://github.com/namuan/http-rider/raw/master/resources/images/httprider-readme.png" width="128px"/>
</p>
<h1 align="center">HttpRider :: Simple and Powerful Cross-Platform API Client</h1>  
  
[![MacOS Release](https://img.shields.io/github/v/release/namuan/http-rider-osx?label=macos)](https://github.com/namuan/http-rider-osx/releases/latest) [![Windows Release](https://img.shields.io/github/v/release/namuan/http-rider-win?label=windows)](https://github.com/namuan/http-rider-win/releases/latest) [![Linux Release](https://img.shields.io/github/v/release/namuan/http-rider?label=Linux)](https://github.com/namuan/http-rider/releases/latest) [![GitHub license](https://img.shields.io/github/license/namuan/http-rider.svg)](https://github.com/namuan/http-rider/blob/master/LICENSE) [![Build Status](https://travis-ci.com/namuan/http-rider.svg?branch=master)](https://travis-ci.org/namuan/http-rider) [![GitHub last commit](https://img.shields.io/github/last-commit/namuan/http-rider)](https://github.com/namuan/http-rider/commits/master) [![GitHub commit activity the past week, 4 weeks, year](https://img.shields.io/github/commit-activity/y/namuan/http-rider)](https://github.com/namuan/http-rider/commits/master) [![Twitter Follow](https://img.shields.io/twitter/follow/deskriders_twt.svg?style=social&label=Follow)](https://twitter.com/deskriders_twt) [![Gitter](https://badges.gitter.im/http-rider/community.svg)](https://gitter.im/http-rider/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
   
[![HttpRider Intro](https://img.youtube.com/vi/rWmvwVuuN6I/0.jpg)](https://www.youtube.com/watch?v=rWmvwVuuN6I)
 
### Downloads

Downloads are currently available for MacOS and Windows however it is simple to run from source if you prefer that.

See https://www.httprider.com/docs/getting-started/installation/ for instructions for different operating systems.
 
### Features  
  
🚀 Feature complete | 🙈 Experimental | 📝 In development | ☁️️ Planned  
  
---  
  
🚀 Making a simple request - [Demo](https://www.youtube.com/watch?v=fw8jMjQpfy8)  
  
🚀 Adding query param, header, request body    
  
🚀 Running multiple APIs/Rearranging APIs  
  
🚀 Tags/Labels and Search and filtering  
  
🚀 Http requests history   
  
🚀 Projects support  
  
🚀 Environments and using environment variables  
  
🚀 Importing/Exporting environments  
  
🚀 Using Fake or random data generators  
  
🚀 Using variables between API requests  
   
🚀 Assertions  
  
🚀 Mocking responses  
  
**Exporters**
  
🚀 Export [PlantUML](https://twitter.com/plantuml) Sequence diagram - [Demo](https://www.youtube.com/watch?v=4Asr_4iOxUM)
  
🚀 Export [Slow Cooker](https://github.com/buoyantio/slow_cooker) performance tests  
  
🚀 Export [Locust.io](https://locust.io) performance tests - [Demo](https://www.youtube.com/watch?v=7zqcYmZIdVs)
  
🚀 Export Python code using requests module  
  
🚀 Export Markdown for documenting API requests/responses  
  
🚀 Export [Apickli](https://github.com/apickli/apickli) functional tests [Demo](https://deskriders.dev/generating-bdd-tests-with-httprider/)
  
🚀 Export curl requests  
  
🚀 Export [MermaidJS](https://mermaidjs.github.io/) Sequence diagram  
  
🚀 Export [Runscope](https://www.runscope.com) monitoring tests [Demo](https://deskriders.dev/generating-runscope-monitoring-tests/)

🚀 Export [OpenApi V3](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) document

🚀 Export [RestAssured](http://rest-assured.io) functional tests
  
**Importers**
  
🚀 Import [OpenApi V3](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) document  
  
🚀 Import Postman collections
  
### Development  
  
Run `make` to display list of commands to install required dependencies in a virtual environment.  
  
```  
$ make  
Run the following commands to install required dependencies  
python3 -m venv venv  
source venv/bin/activate  
pip install -r requirements/dev.txt  
Once everything is installed, 'make run' to run the application  
```  
  
Then `make run` should startup the application.  
  
```  
$ make run  
```
