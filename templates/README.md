# How to use these templates

This README gives you a short introduction about the files and how to use it.


# Why these templates?

These templates act as a blueprint for topic oriented writing in DocBook.


# Using these templates

1. Decide which information unit you want to create (task, concept, or reference).
1. Copy the respective template (see below) to the `xml` directory.
1. Rename the filename to the corresponding naming convention (see below).
1. Integrate the new filename in your assembly file.
1. Write the new content and adapt the IDs.


# Templates for Doc Evolution

We provide five different types of information units:

* `assembly.xml`: Assembly (builds the actual "article" from the components listed below)
* `task.xml`: Task (how to?)
* `concept.xml`: Concept (what is?)
* `reference.xml`: Reference (e.g. list of options, table with config files, default settings)
* `glue.xml`: Combines texts or structures that do not fit into any of the other categories. Typical glue topics include the intro section to your article, the "For more information" and the "What's next" sections. Also use glue topics to add an additional layer of navigation to your article. This is outlined in the `glue.xml` example file.

To use them, copy them from this directory to `xml/`.


## Naming and directory conventions

When creating new articles and topics, please stick to the following conventions. We keep separate directories for each topic type, for common files and articles.

* Assembly/article files:

     articles/<NAME>.xml

* Concept, reference, task, glue files:

     concepts/<NAME>.xml
     references/<NAME>.xml
     tasks/<NAME>.xml
     glue/<NAME>.xml

* Common files (entities, gfdl, etc):

     common/<NAME>.xml

* Any topic's name consists of the following elements that are explained below:

     <NAME> := <TOPIC>[_<SUBTOPIC]_<SNIPPET_TOPIC>_<TITLE>


### File naming conventions

Always start with the overarching topic. If necessary, add a suptopic (append with `_`):
```
autoyast
systemd
systemd_timer
network
```

Second component for concept, reference, task, glue should be the topic of the snippet:
```
references/autoyast_partitioner_syntax.xml
concepts/autoyast_control_file.xml
tasks/systemd_timer_create.xml
tasks/systemd_timer_troubleshoot.xml
concepts/network_ipv6_vs_ipv4.xml
```

Second componenmt of the article should be an abbreviated title:
```
articles/systemd_timer_working_with.xml
articles/autoyast_understand_config_file.xml
```


### ID naming conventions

Working with assemblies, you need to distinguish between two types of IDs:

* `external IDs`: These are visible to the world.
* `internal IDs`: Internal references inside the assembly used to organize the content snippets.

External IDs are build in a similar fashion as file names. As with file names, never include the topic type in your ID.

```
<NAME> := <TOPIC>[-<SUBTOPIC]-<SNIPPET-TOPIC>-<TITLE>
```

To build an internal ID, prefix the external ID with an underscore (`_`).


### Image naming conventions

Make sure your images can be associated with the topic they belong to. Use a similar naming scheme for images than you use for topic files.


```
<NAME> := <TOPIC>[_<SUBTOPIC]_<SNIPPET_TOPIC>_<TITLE>
```
