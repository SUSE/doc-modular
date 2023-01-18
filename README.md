Modular Documentation
=====================

# What is this about?

This repository contains modular documentation for SUSE products. 
The documentation consists of smaller information units with the following characteristics:

* Self-contained
 
  Including requirements, context, instructions, and FAQs. 
  Each information unit is supposed to stand for itself.

* Cover one distinct purpose:

  Rather than covering a complete technology or a set of problems, each information unit covers only one distinct topic. 
  We provide three different types of information units: 
   * Task (how to?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/xml/task.xml)
   * Concept (what is?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/xml/concept.xml)
   * Reference (e.g. list of options, table with config files, default settings) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/xml/reference.xml)


* For re-use in different contexts:

  Every information unit stands for itself, but it can be bundled into
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
* section IDs: 
    * must *not* reflect structure, but need to reflect content
    * for the sake of unique IDs for recurring sections per topic type (e.g. Introduction, Requirements, Summary, Troubleshooting, Next steps, Related topics), the section IDs should match the pattern `SECTIONTITLE-ROOTID`, e.g.


        + `introduction-register-product-after-installation`
        + `requirements-register-product-after-installation`
        + `summary-register-product-after-installation`
        + `troubleshooting-register-product-after-installation`
        + `next-register-product-after-installation`
        + `related-register-product-after-installation`

## DC files

* one DC file per information unit
* should match root ID of file

## Metadata

* add the following metadata as comment at the top of a file:
   * productname (e.g. SLES) - can be multiple 
   * product version (e.g. 15 SP3) - can be multiple 
   * topic category/ies (see below Categories) - can be multiple
   * target group(s) - can be multiple
   * initially published
   * last modified 

## Topic categories

Each information unit should be marked as belonging to one or more of the following categories:
* architecture
* planning
* installation
* deployment
* upgrade
* system administration
* network
* tuning
* security
* public cloud
* storage
* container
* virtualization
