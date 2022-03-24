---
title: "05 Version Control"
---

# Version Control {-}

Version control can be tackled in a couple of different ways.

Version control - although not using this wording - was arguably first born in the context of records management, reliant originally on prescribed annotations, but more recently on naming conventions and multiple copies – or versions – of documents being created and managed.

But software developers working in distributed environments really pioneered the way forward in how we track changes in a document and across a project, especially in a digital environment, using version control systems.

In research, version control comes into play in a variety of ways, sometimes in the context of software, sometimes data, as well as in our methods, protocols, and manuscripts.

Version control helps to keep you sane as you track changes through a project in a logical, stepwise manner. Version control also increases the transparency of your work, providing a window into the evolution of a document, concept, or project.

## Undo vs Version Control {-}

We should differentiate between version control for sanity and transparency and version histories for recovery or tracked changes.

Tracking every change made is more about recovery than versioning. Versioning instead is very much about capturing moments of significant change or phases of implementation.

When we think recovery, it’s more like having an undo function: the whoops moment, I made a mistake — I didn’t mean to delete that paragraph or I didn’t mean to put that file in the trash — let me undo that.

When we think of version control, we should be thinking of a timestamp to capture significant decisions made in the transition or evolution of a project, ideally accompanied by a description of what these changes were.

This is a continuum, and the difference between recovery and version control is more nuanced than this, but this dichotomy helps to highlight the role of version control in tracing change over time versus recovering from a mistake. In fact, wedding these two concepts together in the implementation of a version control system can provide for the best of both worlds.

## Manual {-}

Manual version control is handled by file naming convetions, and was touced on in the section on file naming.

Depending on the file type, or data / information held within a file, the file naming conventions used may differ. For files where a date is extremely relevant, such as with data, the date may form the primary means of versioning. This may then be supplemented with a version number to indicate modifications to the date versioned file.

For example, say I've collected data over several days, each collected in it's own file. I might have something like the following using our file naming conventions:

```
VisDunbar_20210901_SMS-DB-Prev_P-Data.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data.csv
```

Now, I should keep an unmodified version of each, so I might call those V0 to supplement the date:

```
VisDunbar_20210901_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data_V0.csv
```

<div class = "note">
You may wish to set the file permissions on your <code>V0</code> data to <code>read only</code> to ensure that they cannot be edited accidentally.
</div>

I might then merge and go through and standardize the data, ensuring any blank values are set to `NA` and all character data matches on upper and lower cases. To do this, I would make a copy of each V0, indicate that these are the working copy somehow, maybe appeninding `V1`, and then merge them and make these changes to a new file that captures this information in a meaningful way, updating the date component to reflect the full span and resetting the version to `V0`.

```
VisDunbar_20210901_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210901_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210901-20210912_SMS-DB-Prev_P-Data_V0.csv
```

If there are meaningul ways in which the amalgamated data should be parsed for analysis, I may choose to update the version number to capture these modifications to the data file. In this scenario `V > 0` indicates a working copy and `V = 0` indicates a copy of record.

```
VisDunbar_20210901_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210901_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210905_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210912_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210901-20210912_SMS-DB-Prev_P-Data_V0.csv
VisDunbar_20210901-20210912_SMS-DB-Prev_P-Data_V1.csv
VisDunbar_20210901-20210912_SMS-DB-Prev_P-Data_V2.csv
```

For files where date is of less relevance, such as a manuscript, a version number may be the primary means of versioning changes. This may then be supplemented with a date and / or an initial to indicate modifications to this version. So, say we have the following file

```
VisDunbar_SMS-DB-Prev_Manuscript_V0.docx
```

I only want to update the version between major edits, so if I distribute the file for review by my co-authors, I would expect those to be returned to me with dates and initials so that I can keep track of things.

```
VisDunbar_SMS-DB-Prev_Manuscript_V0.docx
VisDunbar_SMS-DB-Prev_Manuscript_V0_20210902_MM.docx
VisDunbar_SMS-DB-Prev_Manuscript_V0_20210910_NR.docx
```

After recieving these suggestions and edits, I would copy and rename `V0` to `V1` and carry on implementing the edits into `V1`.

```
VisDunbar_SMS-DB-Prev_Manuscript_V0.docx
VisDunbar_SMS-DB-Prev_Manuscript_V0_20210902_MM.docx
VisDunbar_SMS-DB-Prev_Manuscript_V0_20210910_NR.docx
VisDunbar_SMS-DB-Prev_Manuscript_V1.docx
```

For some files it may be necessary to indicate a working copy. For instance, a script to process data may have a current working version, but you want to test something out. This test should not be done directly to the working version, but it also hasn't passed quality control and ready to be released as the next version. One way to implement this is by appending additional information onto the version. So say I have the following script

```
VisDunbar_SMS-DB-Prev_Data-Clean_V2.docx
```

And we have an idea to update it, to test this out I would copy `V2` and then indicate that this copy is a working copy by appending a `1`

```
VisDunbar_SMS-DB-Prev_Data-Clean_V2.docx
VisDunbar_SMS-DB-Prev_Data-Clean_V2-1.docx
```

or a `W` for `working`

```
VisDunbar_SMS-DB-Prev_Data-Clean_V2.docx
VisDunbar_SMS-DB-Prev_Data-Clean_V2-W.docx
```

Once the working copy is shown to work and has been ok'd by the team, I'll rename it to the next version

```
VisDunbar_SMS-DB-Prev_Data-Clean_V2.docx
VisDunbar_SMS-DB-Prev_Data-Clean_V3.docx
```

<div class = "note">
    If you anticipate there ever being more than 10 versions of any document, ensure that you use a double digit system <code>V00, V01, V02</code> etc to maintain a propoer sort order.
</div>

## Automatic {-}

Automated version control systems save us from having to update file names. Instead the metadata that manual naming systems use to record version information is stored elsewhere as part of the system managing the versions.

For some work, or some projects, you may be asked to work with platforms like OSF or GitHub. The former is desigbned to provide you with version control for binary files - files like Excel, Word, PDF etc - while the latter is designed for plain text files.

Using these systems is beyond the scope of this manual, suffice to say, that manual naming conventions as they relate to versioning can be ignored.

## Implementation {-}

| Version protocol | Meaning |
| --- | --- |
| V0 | Copy of record. Do not edit. |
| V1...V*n* | Staged version. Represents a significant change or update. |
| V*n*\_YYYYMMDD_FL | Working document of verson *n*, includes dates and First name Last Name initials of editor |

## Roles and Responsibilities {-}

Whatever system, or systems, of version control you decide to use, ensuring that there is someone in the group to document and update the relevant procedures.  Also, designating a team member to periodically check for and correct any inconsistencies is very helpful in keeping project data and files organized.

## Questions {-}

1. What system of version control will you use for:
    a. Manuscripts
    b. Code
    c. Data
    d. Documentation
    e. Figures and images
2. For manual naming conventions, what convention will you use for
    a. Manuscripts
    b. Code
    c. Data
    d. Documentation
    e. Figures and images
3. How will you ensure that raw data files are not edited / worked on?

