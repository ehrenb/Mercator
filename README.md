# Mercator #

Mercator is a reverse engineering aid for analyzing inter-component and class communication of Android applications using graph theory.  It can be used to quickly and intuitively find interesting (or weed out uninteresting) sections of code. 

# Technologies #
### Androguard
The Androguard framework is used to pull important information such as class/function names, source code, parameters, static variables, and cross-references between code from APKs.

### NetworkX
NetworkX is a Python graphing library chosen for its ease of use out-of-box and popular interfacing with other tools.

### Flask
A familiar and popular Python web framework.

### CodeFlask
A code editor for displaying decompiled Java source code.


### Installation ###
Mercator requires Python 3.3 and up.
```bash
cd Mercator
pip install -e .
cd libs/androguard
pip install -e .
export FLASK_APP=Mercator
```

### Running ###

```bash
flask run -h 0.0.0.0
```

Browse to http://127.0.0.1:5000

### Screenshots ###


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