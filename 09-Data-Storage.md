---
title: "09 Data Storage"
---

## Introduction

Data Storage is a term made up of three components. In this section we will walk you through determining the amount of storage, where to store your active research data, and finally, storing your data for the long term, generally known as data preservation. Backing up your data, while also a storage issue, is handled separately. 

Data storage is important but becomes urgent when you don't have enough space to store all your data files. This is especially true if you are part way through a research project and are unable to save and/or capture data because you have run out of data storage space. If you are uncertain how to estimate the amount of storage you require, people in Research Computing and Advanced Research Computing are available to help you quickly and easily determine this.

 

### General Rules

1. Know what the subject of your data is as this will determine where you can store it and whether or not additional security measures are recommended or required
2. Determine approximations for how much data your project will generate
3. Outline whether your collaborators (if any) are from within UBC or outside of UBC
4. 

* Determine what level of security your files and data require. Working with human data *may* require different storage than data that is not of human origin or relating to human participants or subjects.
* Allocate storage for original (raw) data, cleaned or organized data, processed and analyzed data, documentation that informs users about your data, draft papers, charts, visualizations, photos, ans supplementary items that go within your papers. You will likely also need some, generally small, amount of space for the admimistrative documents of your project such as grant applications and the like.
* Allocate sufficient storage in different locations for back-ups.
* Arrange for sufficient or additional storage well before it is actually required. Sometimes you have instant access to needed additional storage, and in other cases, it takes time to gain access.
* Decide who needs access to which files. Principal Investigators (PIs) and lab managers often have access to all the files at all times while students beginning work in the lab may only have access to the files into which they are entering data. Graduate students and post docs may have access to more files. Record who has access to which files. Record all the locations (specific drive, or other exact location) and who has access to which locations.
* Apply standardized file names to all your files (see Chapter 2) and directory structures (see Chapter 3) to all storage locations

<div class="note">
Depending on what types of information the file contains, how exactly these guidelines are implemented will differ slightly.
</div>

### Quick Reference

| Type | Stoage Location |
| --- | --- |
| Data about non-humans | **Teams** Good for collaborating on documents.<br />**OneDrive** Cloud Storage good for many kinds of data and file formats |
| Non-sensitive Human data| **Teams** Good for collaborating on documents.<br />**OneDrive** Cloud Storage good for many kinds of data and file formats |
| Big Data |  **UBC Administered** Sockeye or Chinook.<br />**Contact** Consult an ARC consultant about your requirements. www.arc.ubc.ca <br /> **Compute Canada** Consult an ARC consultant about your requirements. www.arc.ubc.ca



### Storage locations NOT recommended by UBC

* **Drop Box** Cloud storage servers are located in the US and do not provide meet the Freedom of Information and Protection of Privacy Act (FIPPA) requirements for UBC researchers.
*  **Google Drive** Cloud storage servers are located in the US and do not provide meet the Freedom of Information and Protection of Privacy Act (FIPPA) requirements for UBC researchers.


    
**How *many* copies of files and the locations of these copies matters.**


A **best practice** for files is to have <br/> 
    ***3*** copies in
    ***2*** formats (i.e. laptop harddrive and removeable harddrive)
    ***1*** stored off-site

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



## Questions

1. Where will active project storage occur? (laptop, lab computer, OneDrive, Teams etc)
2. Where will active projects be backed up to? How often will back-ups be run?
3. At project completion, how long will the following be kept (UBC minimum requirements, other...)
    a. Data
    b. Code
    c. Manuscripts and posters
4. At project completion, where will files be stored?
5. At time of publication / presentation, where will files be shared? (Dataverse, OSF, OneDrive etc.)
6. Will the lab use Dataverse for data deposit?
    a. What will the structure of Dataverse look like?
7. Will you use disk level encryption? If so, whe, and what service?
8. Will you use file level encryption? If so, when, and what service?