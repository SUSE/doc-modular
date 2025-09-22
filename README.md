Modular Documentation
=====================

This is the source of the official SUSE modular documentation. The repository currently covers the documentation for the SLE 16 product family, SUSE Linux Micro and SUSE AI.

# What is this about?

For the above SUSE products we provide modular documentation, using topic-based authoring. This approach allows us to reuse pieces of information across articles (and across different product variants) without duplicating source content.

# Goal

Our goal is to write task-based documentation that helps readers find a solution to their problem quickly. For this purpose, the documentation is split into a set of articles (so called 'Smart Docs').   

# Smart Doc articles

Each article stands for itself. It minimally includes the following:

* requirements
* context
* instructions
* examples
* troubleshooting
* FAQs

Technically, Smart Doc articles are built from individual topics, like "building blocks". Each topic is an information unit that is

* self-contained,
* serves one distinct purpose (see the four topic types provided),
* can be reused in multiple articles.

# Topic types

According to their purpose, we dinstinguish between four topic types:
   * Task: *instructs* (how to?)' - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/tasks/task.xml)
   * Concept: *explains* (what is?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/concepts/concept.xml)
   * Reference: *informs* (e.g. list of options, table with config files, default settings) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/references/reference.xml)
   * Glue: helps *navigate* (combines texts or structures that do not fit into any of the other categories): Typical glue topics are the "For more information" and the "What's next" sections. - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/glues/glue.xml)

Articles are built by bundling these topics into assembly files - organizational units that structure the topics. The assemblies are used to build coherent and meaningful documents [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/articles/assembly.xml).

# Tools

To build documents and validate assemblies, DAPS version 4.X Beta 11 and geekodoc are needed. To install the requried tools, proceed as follows:

1. Add the documentation zypper repository:

    `sudo zypper ar https://download.opensuse.org/repositories/Documentation:/Tools/ Documentaton:Tools`

2. Refresh your repositories:

    `sudo zypper ref`

2. Install daps and geekodoc:

    `sudo zypper in daps geekodoc`


# Conventions

For a comprehensive list of conventions for modular docs, turn to the [templates README](https://github.com/SUSE/doc-modular/blob/main/templates/README.md).
