---
title: "07 Documentation"
---

## Introduction

When naming files we embed metadata into our file naming conventions to encode relevant information for the reader. But we can only store so much information in a file name. So we also include three additional files:

* A `_README` file which resides in our **root folder** and elaborates on the contents of our folder structure.
* A `_README` file that resides in our **data directory** and discusses some of the particulars of the how, where, and who did the actual data collection.
* A `_DATA-DICTIONARY` file that also resides in our **data directory** and elaborates on how our data is stored and organized.

These files - containing a brief description of the major folder contents, naming conventions, and data structure - are critical for transparency and reproducibility because they allow others to easily understand the contents of your directory and data without needing to ask you. This is especially helpful when working with a group or sharing directories with others.

### General Rules

A readme file and data dictionary should:

* Exist in at least two locations, the root directory and the data directory.
* Be prepended with an underscore `_`. This will push these files to the top of the directory for easy access.
* Be written as plain text.
* `_README` and `_DATA-DICTIONARY` files should be in all caps, so they really stand out; this should be the first thing you look at when looking at any directory or folder, as this is your guide to its contents.

<div class="note">
Occasionally, certain systems and applications (such as GitHub), will not properly recognize a <code>readme</code> file that is preceded by an underscore <code>_</code>. In these situations, the underscore should be ommitted.
</div>

## Readmes

### File Formats

Readme files and data dictionaries should be written in plain text; this will ensure that the files describing your project can be opened on any computer at virutally any point in time. A word processor document from 15 years ago might be a challenge to open today. A plain text file from the 1980s won't have the same issue. You will often see readme files called `_README.txt` or `_DATA-DICTIONARY.txt`

#### Markdown

While plain text works well, using a markup language in plain text can be beneficial. Markup is a way of formatting plain text files, allowing us to provide additional meaning to our content. For example, in plain text, if we want to emphasize content, we don't really have a way of doing this. In a popular markup language, Markdown, we can use italics and bolding if needed. We can also create lists and tables. So you kind of get the best of both worlds.

Learn the basic syntax of Markdown [here](https://www.markdownguide.org/basic-syntax/).

### Root Folder

To create a root folder `readme` file, use any markdown or text editor (e.g. Typora, notepad etc.), open a new file and save it to the root folder for your project, ensuring the file type is `.md`.

Name your readme file `_README.md`.

Next, we want to add some content to our `_README.md`. The purpose of this document, at a bare minimum, is to describe the directory structure of our project. To adequately describe our directory structure we should include:

* A brief description of the project or purpose of the root folder
* Date when the root folder was created and who created it
* Date when the readme file was last updated and who updated it
* A brief description of the contents of each major folder within the root folder
* A brief description of file naming conventions used within the directory

To see an example root directory readme file click here.

### Data directory `readme`

Next, we want to create another `readme` file, but this file will be placed within the subfolder that contains our project's data. To do this, open any markdown or text editor (e.g. Typora, notepad etc.), open a new file and save it to the data subfolder for your project, ensuring the file type is `.md`. Name your readme file `_README.md`.

The purpose of this readme file is to provide a description of data collection methods. We will include, at a minimum:

* Date when the data directory was created and who created it
* Date when the readme file was updated and who updated it
* A brief description of each data that was collected, the methods used for collection, and the date range for when each dataset was collected
* A description of who was involved in data collection
* A brief description of where the data was collected

To see an example data directory readme file click here.

### Data Dictionaries

Lastly, we need to create a data dictionary which elaborates on how our data is stored and organized. To do this, open any markdown or text editor (e.g. Atom, Typora, notepad etc.), open a new file and save it to the data subfolder for your project. This time we will save the file as `_DATA-DICTIONARY.md`.

A data dictionary helps others understand the meaning of each element in your datasets within the broader context of the project. Typically you will have an individual readme file for each dataset. This file should include:

* Date when the data dictionary was created and who created it
* Date when the data dictionary file was updated and who updated it
* A description of the raw data file
* A description of each variable for all datasets including data type, units, number of levels if categorical, and a description of variable levels where relevant
* When describing variables you need to provide the full names and definitions of each variable because often variables are abbreviated in datasets

To see an example data dictionary click here.

## Roles and Responsibilities

It's important to remember that having a documentation system that your team can easily update throughout a project is more benefical than one that begins with great detail, but is difficult to maintain.  As the project grows and new files and folders are created, clearly identifying what information team members need to document, and where that information needs to be put, will help keep things on track.  It is also worth considering having a person who periodically will check the documentation to ensure that it's accurate, and can update any inconsistencies.

## Questions

1. What baseline documentation are team members expected to create? (readme, data dictionary, code books, code documentation...)
2. Where should these documentation file reside?
3. What would a template for each of these look like? Or what baseline information would you expect each piece of documentation to include?
4. What format should this documentation be stored in?
5. Who is responsible within a given project for ensuring adequate documentation is created and maintained?
6. Who is responsible for ensuring that documentation across projects is kept up to a minimum standard? How often will this be reviewed?
7. Where will roles and responsibilities for lab processes be tracked?
8. Where will roles and responsibilities for specific projects be tracked / articulated?