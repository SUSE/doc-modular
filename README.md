Modular Documentation
=====================

This is the source of the official SUSE modular documentation.

# What is this about?

Smart Docs represent a modular approach to documentation whose goal is producing sets of adaptable, solution-based, easy-to-find and reusable documents.

Rather than covering a complete technology or a set of problems, each Smart Docs article serves one distinct purpose. Each article stands for itself, including requirements, context, instructions, troubleshooting and FAQs.

Smart Docs consist of topics—smaller information units that can be reused in different contexts. Four different topic types are provided:
   * Task (how to?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/tasks/task.xml)
   * Concept (what is?) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/concepts/concept.xml)
   * Reference (e.g. list of options, table with config files, default settings) - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/references/reference.xml)
   * Glue (combines texts or structures that do not fit into any of the other categories): Typical glue topics include the "For more information" and the "What's next" sections. Also use glue topics to add an additional layer of navigation to your article. - [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/glues/glue.xml)

Articles are built by bundling these topics into assembly files - organizational units to structure the topics to create a coherent and meaningful document [XML template](https://github.com/SUSE/doc-modular/blob/main/templates/articles/assembly.xml).

# Conventions

For a comprehensive list of conventions for modular docs, turn to the [templates README](https://github.com/SUSE/doc-modular/blob/main/templates/README.md).
