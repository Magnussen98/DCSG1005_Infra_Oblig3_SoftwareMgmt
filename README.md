# Portifolio3

# Portifolio 3; Maintaining Software

THE GIT REPO FOR THIS PORTFOLIO 3 IS: https://gitlab.stud.iie.ntnu.no/andrefm/portifolio3

[[_TOC_]]

## Problem description / Goal of this project
In this assignment I was given the opportunity to learn the importance of maintaining a desired software on a computer. In todays society attackers are getting more sophisticated and they are constantly trying to [exploit software vulnerabilities.](https://searchsecurity.techtarget.com/definition/exploit) Knowing your software will give you a huge advantage and multiple messaurments when a potential problem occour. I decided to choose Google Chrome as the client-software for this assignment.
   
## What is Google Chrome
Google Chrome is a free [web-browser developed by Google.](https://en.wikipedia.org/wiki/Google_Chrome) Google Chrome was first released in 2008, but only for Microsoft Windows. It was later developed further as a cross-platform. Today, Google Chrome is estimated to have [66% of the browser market shares worldwide](https://en.wikipedia.org/wiki/Google_Chrome). Google developed Chrome with the intension of having a secure web-browser. Chrome has multiple techonologies, such as [site isolation, phishing protection and sandboxing which makes the web-browser secure be default](https://safety.google/chrome/). 

## Security History 

## Practice
I have created four simple scripts which enables me to install, configure, patch and uninstall Chrome. The [installation script](https://gitlab.stud.iie.ntnu.no/andrefm/portifolio3/-/blob/master/Install-Chrome.ps1) is using [Chocolatey,](https://chocolatey.org/) which is the package manager for windows, to install Google Chrome. I do also verify that full installation of Chrome has completed by doing a quick search in registry. The name of the software and the version installed are then displayed for the user. This will allow the user to verify that the correct version is installed.

The [configuration script](https://gitlab.stud.iie.ntnu.no/andrefm/portifolio3/-/blob/master/Enable-configurationPossibility.ps1) will allow the user to make desired configurations with [Group Policy](https://en.wikipedia.org/wiki/Group_Policy). I did use some time to figure out how to configure Chrome through PowerShell. After some research it became clear that Group Policy would be the best option. The first part of the script is downloading a [Zip file with Google Chrome templates,](https://support.google.com/chrome/a/answer/187202?hl=en#zippy=%2Cwindows) which makes Policy setup a lot easier. For the simplisity of this assignment, I decided to only enable the possibility to configure Chrome through GPO. GPO configuration will then be done by GUI. The last part of the script is making a central store folder .admx and .adml files. This will allow the user to configure Chrome through the Local Group Policy Editor.

The 

## Conclusion and Reflection
I am overall hayppy with how this project turned out, even though my final script has some improvements. I started early by writing down thoughts on how I would like to attack this assignment, and I relfected on what kind of safety messaures I wanted to include. It didn´t take long until I realized that my inital planning was way too complicated. Therefore I had to start small, and progressively implement new meassurments. I had two versions of my script in total. The first version was dedicated to trying out different approaches, and then I cleaned up the code and refined my script in the second version. I also had a Teams meeting with a fellow student, named Kristoffer Lie, where we discussed different approaches to the script. And we discussed the best safety messaurments against attacks. Overall I am happy with how this assignment turned out.
