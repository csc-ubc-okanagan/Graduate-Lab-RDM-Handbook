---
title: "03 File Naming"
---

## Introduction

File naming isn't exactly fun, but it is crucial for organizing, describing, and managing research.

First, some general rules and a quick reference, then we break these down and explain the processes behind them.

### General Rules

* File names should only contain letters in the English alphabet, numbers from `1-9`, dashes `-`, and underscores `_`.
* Do not use spaces or special characters, including `# % & < > : " /  | ? * { } $ ! ' @ + =`
* File names should be broken down into conceptual components that are separated by underscores `_`.
* If more than one word is needed in each conceptual component, these are separated by dashes `-`.
* All file names should start with the last name of the creator of the file, followed by the project name, and then what the file contains. Additional blocks may be added as needed, these may include dates, versions, if a file is restricted etc.
* All of these components should be meaningful (read on for what it means for a file name to be meaningful!)
* All file names should end with a file type extension.

<div class="note">
Depending on what the file pertains to, how exactly these guidelines are implemented will differ slightly.
</div>

### Quick Reference

| Type | Format & Example |
| --- | --- |
| Maunscript | **F** LastName_Project_File-contents_Version.file-type<br />**E** VisDunbar_SMS-DB-Prev_Manuscript_V0.docx |
| Feedback |  **F** LastName_Project_File-contents_Version_Editor-Initial.file-type<br />**E** VisDunbar_SMS-DB-Prev_Manuscript_V0_NR.docx |
| Figure, Plots, Images | **F** LastName_Project_Figure-title_Version.file-type<br />**E** VisDunbar_SMS-DB-Prev_Fig1_V0.docx |
| Scripts | **F** LastName_Project_Script_Version.file-type<br />**E** VisDunbar_SMS-DB-Prev_Data-Clean_V0.docx |
| Data | **F** LastName_Date_Project_Data-file-description.file-type<br />**E** VisDunbar_20210901_SMS-DB-Prev_P-Data.docx |

## What’s in a name

File names need to achieve two primary goals, they need to make sense to a human reading them and they need to be constructed in a way that allows a computer to parse or process them. That is, file names should be **human interpretable** and **machine readable**.

### Human interpretable

To be human interpretable, a file name needs to be meaningful. To do this, it needs to convey some basic information to a person reading it. We do this by integrating metadata into the file name. The metadata elements we include are:

* Who created the file
* The date on which it was created
* The project to which it is connected
* The nature of the contents of the file
* If it’s been modified
* The type or format of the file

That is, we should be able to look at a file name and tell, who created it, when it was created, what it is related to, what is inside of it, if it has been updated, and what application we should expect to be able to open it with.

<div class="note">
By using underscores <code>_</code> to break up the metadata in a file name and by always using the same patterns, we quickly become atune to these patterns and picking out specific files from a long list becomes increasingly easy.
</div>

All said, that's a fair bit of information to hold in a file name. However, using standard truncation can be useful to manage overly long file names.

### Machine readable

A file name that is machine readable or machine interpretable means creating file names in such a way that they can be sorted by an application along specified delimiters. This means building our names according to set patterns, which can then be parsed, and if necessary, described. Lastly, it means building our names in such a way that if we move them from one computer to another, from one application to another, or from one operating system to another, the files remain interpretable in exactly the same way.

<div class="note">
By using underscores <code>_</code> to break up the metadata in a file name and by always using the same patterns, we can computationaly isolate files based on each of these attributes irrespective of the directory structure in which we store them, and, for example, find all files from a particular creator, project, or created on a specific date.
</div>

### Special characters

Different computing environments (applications, operating systems etc) handle character encoding in idiosyncratic ways. If you've ever opened a document and seen what look like odd characters or numbers in boxes in the middle of words, this is becuase the original encoding does not match the encoding of the system you're using.

This same thing can happen in file names and even produce errors when trying to read files. For this reason, we want to work with the safest subset of characters available to us; those base characters recognized by all systems. This means not using special characters.

Special characters are all characters except:

* Any character that is a part of the English alphabet
* Numbers from `0 - 9`
* Dashes `-`
* Underscores `_`

<div class="note">
A space <code> </code> is a special character, which means that your file names should not have spaces.
</div>

When operating in a multi-lingual or non-English environment, this can prove problematic, but it is an unfortunate legacy of the development of computer standards that has yet to be fully resolved.

## File Naming Conventions

### Order

Convention often has file naming proceed in the following order, with each element separated by an underscore `_`, and words within an element joined with a dash `-`. The file type is generally added with a period `.` and is usually automatically generated when an application creates a file. More elements can be added as needed.

| Element-1 | \_Element-2 | \_Element-3 | \_Element-4 | \_Element-5 | .Element-6
| -------- | -------- | -------- | -------- | -------- | -------- |
| Last-Name | \_Date | \_Project | \_File-Contents | \_Version | .File-type |

### Dates

Dates should be written in the following format `yyyymmdd`. They should contain no spaces, no dashes, no words, just 8 numbers. Months and Days that are from `1 - 9` should be led by a `0`. For example, January 23, 2020, should be written **20200123**. When written this way, your computer will always sort your files from the earliest date to the latest date when sorted in ascending order.

### Versions

Manual version tracking through file nameing convetions is achieved by adding `_Vn` where `n` is the version number. With each major change, we increase `n` by `1`. So version 1 would read `_V1`, and when updated, it would read `_V2`.

<div class="note">
Versions are very important for things like manuscripts and interpretations of data, such as figures and other visualizations, which we will continue to change and modify or update throughout a project. Data, however, while it has a collection date, should not be 'updated', and should not then be versioned. If new data sets are derived from the original data, they should be named and dated accordingly.
</div>

Version control through file naming is described in more detail in the manual version control section on version control.


## Roles and Responsibilities


It's possible that there may be multiple projects occuring within your lab, and it's worth noting that these different projects don't need to adhere to the same naming conventions (in fact, depending on the projects, it may be preferable to have different conventions).  However, what is important is that all files within a project are named consistently, and that there is documentation for file naming that all project members are introduced to when onboarded, and can easily be found for reference.  Designating a person to create, introduce, and update the file naming documentation will be extremely valuable in keeping your project organized.

It's also worth noting that things can get chaotic from time to time, and consistent naming may begin to slip.  This happens to the best of us, but designating a person to periodically check on files and update any inconsistencies is a great safeguard to keep things from slipping too far.

## Questions

1. What files do you anticipate creating across the projects in your lab?
2. What baseline file naming conventions do you expect team members to use when creating files?
3. Who (what role) will be responsible of informing new lab members about file naming conventions to employ?
4. Who should questions about file naming be directed to?
5. Who is responsible for ensuring that file naming across projects is kept up to a minimum standard? How often will this be reviewed?

