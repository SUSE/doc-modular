### Description

Describe the overall goals of this pull request.


### Are there any relevant issues/feature requests?

* bsc#...
* jsc#SLE-...


### Is this (based on) existing content?

* old xml:id...
* old URL...

### Check the articles's configuration
* Make sure that all references and parameters are properly set in the DC file:
  - [ ] Check the DC file name (hypenated, human-readable): *`TOPIC[-SUBTOPIC]-TITLE`*. Once set and published, this **must not ever** be changed again once the article is published.
  - [ ] Set profiling attributes, if necessary.
* Make sure the article's root ID in the `*.asm.xml` file matches the one provided in the DC file. **Do not ever** change this ID again once the article is published.
  
### Check the article's metadata
- [ ] Is `dm:maintainer` for Bugzilla tickets set (add your e-mail address)?
- [ ] Is `dm:translation` set (`yes`/`no`)?
- [ ] Is the `maintainer` meta tag set (on assembly and topics)?
- [ ] Are `title` and `meta title` set? `title` determines the title that's displayed in PDF/HTML. `meta title` is used for search engines and social media and should not exceed *55 characters*.
- [ ] Are `description` and `social-descr` set? `description` is displayed on search engine results pages and should not exceed *150 characters*. `social-descr` is are displayed when the article is shared via social media and shout not exceed *55 characters*.
- [ ] Is `series` set? This tag determines which type of documentation your article belongs to. *not supported yet, more info to come*.
- [ ] Is `productname` set to the respective product name(s) and version(s)? Use the approved product acronym. *Do not use entities*.
- [ ] Is 
- [ ] ... type

### Maintain the revision history
Check the [SUSE Documentation Style Guide](https://documentation.suse.com/style/current/single-html/docu_styleguide/#sec-revhistory) for detailed instructions on how to maintain a revision history for your document.
- [ ] Create a meaningful `revdescription` entry.
- [ ] Set the revision history date to the date of your merge commit. The date format has to be *YYYY-MM-DD*.

### Before you hand off your article
- [ ] 

### Detailed information
<!-- -->


