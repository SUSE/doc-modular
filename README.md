Modular Documentation
=====================

This is the source of the official SUSE modular documentation.

# What is this about?

This repository contains modular documentation for SUSE products. 
The documentation consists of smaller information units with the following characteristics:

* Self-contained
 
  Including requirements, context, instructions, and FAQs. 
  Each information unit is supposed to stand for itself.

* Cover one distinct purpose:

  Rather than covering a complete technology or a set of problems, each information unit covers only one distinct topic. 
  We provide five different types of information units: 
   * Assembly (builds the actual "article" from the components listed below) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/articles/assembly.xml)
   * Task (how to?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/tasks/task.xml)
   * Concept (what is?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/concepts/concept.xml)
   * Reference (e.g. list of options, table with config files, default settings) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/references/reference.xml)
   * Glue (combines texts or structures that do not fit into any of the other categories): Typical glue topics include the intro section to your article, the "For more information" and the "What's next" sections. Also use glue topics to add an additional layer of navigation to your article. - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/glues/glue.xml)


* For re-use in different contexts:

  Tasks, concept and reference context units can be re-used in different context. Content units (articles) are built by pulling these together in dedicated assembly files.

# Conventions

For a comprehensive list of conventions for modular docs, turn to the [templates README](https://github.com/SUSE/doc-modular/blob/main/templates/README.md).
