Modular Documentation
=====================

# What it is?

This repository contains modular documentation for SUSE products. 
The documentation consists of smaller information units with the following characteristics:

* Self-contained
 
  Including requirements, context, instructions, and FAQs. 
  Each information unit is supposed to stand for itself.

* Cover one distinct purpose:

  Rather than covering a complete technology or a set of problems, each information unit covers only one distinct topic. 
  We provide three different types of information units: 
   * Task (how to?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/xml/task.xml)
   * Concept (what is?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/xml/concept.xml)
   * Reference (e.g. list of options, table with config files, default settings) - [XML template](https://github.com/SUSE/doc-modular/blob/main/xml/reference.xml)


* For re-use in different contexts:

  Every information units stands for itself, but it can be bundled into
  collections that cover different products/solutions.

# Conventions

## Naming of XML/ADOC files

* use hyphens as separators
* use type as prefix (task-|concept-|reference-)
* content must be obvious from filename
* example: topic-register-product-after-installation.xml 

## Naming of image files

* use hyphens as separators
* content must be obvious from filename
* example: yast2-register-sles.png

## IDs
* use hyphens as separators
* root ID:  
    * use type as prefix (task-|concept-|reference-)
    * for task type, use verb in infinitive: e.g. task-register-product-after-installation
    * for concept/reference type, use nouns: e.g. reference-zypper-options, concept-fencing
* section IDs: must *not* reflect structure 

## DC files

## Categories
