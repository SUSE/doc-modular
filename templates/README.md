# Templates for Doc Evolution

We provide five different types of information units:

* `assembly.xml`: Assembly (builds the actual "article" from the components listed below)
* `task.xml`: Task (how to?)
* `concept.xml`: Concept (what is?)
* `reference.xml`: Reference (e.g. list of options, table with config files, default settings)
* `glue.xml`: Navigation (e.g. if your topic is very complex and you want to provide additional guidance on how to use it)

To use them, copy them from this directory to `xml/`.

## Naming and directory conventions

When creating new articles and topics, please stick to the following conventions.

Assembly/article files:
```
articles/<NAME>.xml
```

Concept, reference, task, glue files:
```
concepts/<NAME>.xml
references/<NAME>.xml
tasks/<NAME>.xml
glue/<NAME>.xml
```

Common files (entities, gfdl, etc):
```
common/<NAME>.xml
```

```
<NAME> := <TOPIC>[_<SUBTOPIC]_<SNIPPET_TOPIC>_<TITLE>
```

### File naming conventions (for article, concept, reference, task):

Always start with the overarching topic. If necessary, add a suptopic (append with _):
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


