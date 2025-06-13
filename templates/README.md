# How to use these templates

This README gives you a short introduction to our template files and how to use them.


# Why these templates?

These templates act as a blueprint for topic-oriented writing in DocBook.


# Using these templates

The templates in this directory are already contained in a directory structure that matches the 
one of a real project. See the naming and directory conventions outlined below.

If you are starting a topic-based authoring project from scratch, you can just copy this directory 
tree and start adjusting file names (DC file, assembly and topics) and root IDs as outlined below.

Once you have named the files accordingly, integrate them into the assembly file.

Write the new content and adapt the IDs.

In a final step, add suitable metadata information to your assembly file. Stick to the 
conventions outlined below.


# Templates for Smart Docs

We provide five different types of information units:

* `assembly.asm.xml`: Assembly (builds the actual "article" from the components listed below)
* `task.xml`: Task (how to?)
* `concept.xml`: Concept (what is?)
* `reference.xml`: Reference (e.g., list of options, table with config files, default settings)
* `glue.xml`: Combines texts or structures that do not fit into any of the other categories. 
Typical glue topics include the intro section to your article, the "For more information" and the 
"What's next" sections. Also use glue topics to add an additional layer of navigation to your 
article. This is outlined in the `glue.xml` example file.


## Naming and directory conventions

When creating new articles and topics, please stick to the following conventions. We keep separate 
directories for each topic type, for common files and articles.

* Assembly/article files:

      articles/<NAME>.asm.xml

* Concept, reference, task, glue files:

      concepts/<NAME>.xml
      references/<NAME>.xml
      tasks/<NAME>.xml
      glues/<NAME>.xml

* Common files (entities, gfdl, etc):

      common/<NAME>.xml

* Any topic's name consists of the following elements that are explained below:

      <NAME> := <TOPIC>[-<SUBTOPIC]-<SNIPPET-TOPIC>-<TITLE>

### DC file naming conventions

The DC file name must have the following format:
```
DC-<product abbreviation>-<architecture>-<assembly file name>
```

Where the particular parts have the following meaning:

`<product abbreviation>` can be *one* of the following values:

* `SLES` - for SUSE Linux Enterprise Server
* `SAP` - for SUSE Linux Enterprise for SAP
* `HA`- for SUSE Linux Enterprise High Availability
* `AI` - for SUSE AI
* `Micro` - for SUSE Linux Micro

`<architecture>` can be omitted if the article is the same for all architectures. Otherwise, use *one* of the following values:
* `x86` - for x86-64
* `ppc` - for IBM Power PC
* `s390`- for IBM Z
* `aarch` - for AArch64

`<assembly file name>` is the assembly file name without the asm.xml part. 

### File naming conventions

Always start with the overarching topic. In doing so, ensure that articles belonging to the same topic can be easily spotted by someone looking for existing articles. If necessary, add a subtopic (append with `_`):
```
autoyast
systemd
systemd-timer
network
```

The second component for concept, reference, task, glue should be the topic of the snippet. For tasks, use a verb in gerund. For descriptive topics (concepts, references) opt for noun-based:

```
references/autoyast-partitioner-syntax.xml
concepts/autoyast-control-file.xml
tasks/systemd-timer-creating.xml
tasks/systemd-timer-troubleshooting.xml
concepts/network-ipv6-vs-ipv4.xml
glues/systemd-timer-intro.xml
glues/systemd-timer-whats-next.xml
glues/systemd-timer-more-info.xml
```

The second component of the article should be an abbreviated title. As our articles are intended to address specific problems and tasks, use verbs in gerund here as well:

```
articles/systemd-timer-working-with.asm.xml
articles/autoyast-understanding-config-file.asm.xml
```

Distinguish article files from standard XML files by adding the `.asm` suffix.


### ID naming conventions

Working with assemblies, you need to distinguish between two types of IDs:

* `external IDs`: These are visible to the world.
* `internal IDs`: Internal references inside the assembly used to organize the content snippets.

External IDs are built in a similar fashion as file names. As with file names, never include the 
topic type in your ID.

```
<NAME> := <TOPIC>[-<SUBTOPIC]-<SNIPPET-TOPIC>-<TITLE>
```

To build an internal ID, prefix the external ID with an underscore (`_`).


### Image naming conventions

Make sure your images can be associated with the topic they belong to. Use a similar naming scheme 
for images that you use for topic files.


```
<NAME> := <TOPIC>[-<SUBTOPIC]-<SNIPPET-TOPIC>-<TITLE>
```
## Version info

We maintain a changelog for each article. Add a version to the changelog whenever there is a 
*release* of your article, i.e. whenever you ask for a rebuild and repost of said article. Do not 
artificially bloat the changelog by entering every single commit. Also, provide concise and 
meaningful version information that the reader benefits from. This information might one day end up 
being sent out to readers as update notifications on content they subscribed to.

## Metadata

Once your article is done, add a metadata layer to the assembly file. Check the `assembly.asm.xml` 
file for XML synthax and possible values. The following metadata types are currently supported:

* Internal
* SEO
* Search
* Publishing info
* Social media

### Internal 

1. Add maintainer info (e-mail address) to the assembly and all the topic files. Use this information to contact the original author, in case you want to reuse a piece and would like to start a conversation on changing the file.
1. Determine whether the article needs to be translated and add a list of languages.
1. If you have reused the content from existing legacy (non-modular) docs, adjust the pointer in the 
XML comments of your file. By adding a similar pointer to the legacy doc piece, you make sure that 
you keep both docs in sync. This is done using a plain XML comment.

### SEO

Add some search engine-related information to your file:
1. `title`- 29-55 characters
1. `description` - max. 150 characters

### Search

Add as much search-related data to your article as possible. Choose the appropriate tags:
* `productname`
* `productversion`
* `architecture`
* `category`

### Publishing info

Provide the reader with some guidance on the article's "age" (`updated`).

### Social media

Provide an ultra-short (55 chars) description (`social-descr`) of your doc to make sure it 
gets properly shared via Facebook and Twitter.
