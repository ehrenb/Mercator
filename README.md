# Mercator #

Mercator is a reverse engineering aid for analyzing inter-component and class communication of Android applications using graph theory.  It can be used to:

*  Quickly trace code accessible from Android components
*  Cut down time analyzing obfuscated code 
*  Identify unnecessary and unused "dead" code
*  See how I've used Mercator's NetworkX output to find inter-component paths: http://behren.me/discovering_code_paths_1.php

### Installation ###
Mercator requires Python 3.3 and up. I recommend using virtualenv to isolate the installation:
```bash
cd Mercator
pip install -e .
export FLASK_APP=Mercator
```

If you want to do any manual plotting of the networkx graphs, install python3-tk:
```bash
sudo apt-get install python3-tk
```

### Running ###

```bash
flask run -h 0.0.0.0
```

Browse to http://127.0.0.1:5000

### Screenshots ###

![Results](https://github.com/ehrenb/Mercator/blob/master/docs/results.png)
Initial results page after completed analysis

![Full graph](https://github.com/ehrenb/Mercator/blob/master/docs/full2.png)
Full application graph (components and native code)

![Component graph](https://github.com/ehrenb/Mercator/blob/master/docs/component.png)
Component subgraph containing only Activities, Providers, Receiers, and Providers

![Source code](https://github.com/ehrenb/Mercator/blob/master/docs/source.png)
Source code viewer (displaying source for a receiver) when selecting a node

### Tips ###

* The ego graph radius is adjustable by raising or reducing the radius GET paremeter (it defaults to 2)
* Component nodes are given distinct colors, while native Java nodes are grey.  
  * Activities (Blue)
  * Providers (Green)
  * Receivers (Yellow)
  * Services (Orange)
* Source code is populated below the graph, when a node is selected (clicked), a request is made for the associated source code and the editor is populated.

## Analysis Directory ## 

Analysis directories contain the following JSON files:
* apk - a copy of the apk file uploaded
* <md5>_graph.json - NetworkX graph containing classes (nodes), their functions and parameters, and references (edges) (class instantiations, function calls) to other classes.
* <md5>_component_subgraph - a subgraph containing only the Android components in the "_graph.json" files
* <md5>_beforenetworkx - _graph.json, but not in networkx format (for debugging)
* <md5>_metadata.json - high level description data about the APK 

## TODOs ##

* Visualize node edges to display why an edge was made between two nodes
* UI 
  * Adjustable radius
  * Key for node colors
  * Colored edges based on relationship (field r/w, method r/w, class r/w)
* View for assembly instructions
* Apply path finding algorithms from NetworkX
* Color code "external" classes

# Technologies #
### Androguard
The Androguard framework is used to extract important information such as class/function names, source code, parameters, static variables, and cross-references from code in APKs.

### NetworkX
NetworkX is a Python graphing library chosen for its ease of use out-of-box and popular interfacing with other tools.

### Flask
A familiar and popular Python web framework.

### Ace Editor
A code editor for displaying decompiled Java source code.
