---
title: "04 Directory Structures"
---

# Directory Structures {-}

While the way we currently organize folders and files on our computer may make sense to us, the structure may become promblamtic if and when we need to share these folders and files with other people. As well, a folder name that is meaningful for us may make no sense to another person.

Like with file naming, conventions for directory structures and directry names will help organize the files on your computer in a way that is meaningful to both you and others. It will also allow for programmatically parsing the files if needed.

## General Rules {-}

* Directory names should only contain letters in the English alphabet, numbers from `1-9`, dashes `-`, and underscores `_`.
* Do not use spaces ` ` or special characters, including `# % & < > : " /  | ? * { } $ ! ' @ + =`
* Directory names should be broken down into components that are separated by underscores `_`.
* If more than one word is needed in each component, these are separated by dashes `-`.

## Quick Reference {-}

A naming conventions for common directories should be used:

* `Data/` for all data directories
* `Manuscript/` for all authored papers
* `Conferences/` for all files realted to conferences
* `Scripts/` for all scripts

## Directory Hierarchies {-}

The highest-ranking folder is generally called the root directory. This folder will contain all of the subfolders and files related to a particular project, including its data, analysis, manusrcipts etc. It will also contain what is called a `readme` file.

The structure should look something like the following:

```
Project-Folder/Data/File-1
Project-Folder/Data/File-2
Project-Folder/Analysis/File-1
Project-Folder/Maunscript/File-1
Project-Folder/Manuscript/File-2
```

Here, our root folder is called `Project-Folder` and it contains three subdirectories, one for data, `Data`, one for analyses, `Analysis`, and one for a manuscript `Manuscript`. Each subdirectory then contains one or many files.

## Directory Naming {-}

Key file naming conventions, such as avoiding special characters, are equally as important for directories as they are for naming files. A special character is anything other than letters in the English alphabet, numbers from `1-9`, dashes `-`, and underscores `_`.

<div class="note">
When we name the root folder we want to clearly communicate what the project is. And similarly, within this root folder, we want clearly labeled subfolders for each relevant aspect of the project. Common discrete subdirectories include ones for figures, data, manuscript etc.
</div>

## Example {-}

LAB SPECIFIC


## Roles and Responsibilities {-}

Much like file naming, the key to keeping your directory structure organized is by being consistent and having regularly updated documentation.  

Depending on your project team, it's possible that not everybody should have the ability to add folders at every level of the hierarchy.  When new directories are created, the person who creates the folder should be responsible for documenting the new addition in the appropriate place.  There should also be a person who is designated to regularly check on the documentation and folders to ensure that everything is accurate, and to update any inconsistencies.

## Questions {-}

1. Will you:
    a. Use a common directory structure across all projects in your lab?
    b. Use a set of common directory structures across all projects in you lab?
2. What will the directory structures look like? Will there be a template that can be copied and pasted? Will the template include placeholder documentation files (readme, data dictionary etc)?
3. What will file naming conventions for diretories be?
4. Who (what role) will be responsible of informing new lab members about the directory structure to employ?
5. Who should questions about directory structure be directed to?
6. Who is responsible for ensuring that directory structures across projects are kept up to a minimum standard? How often will this be reviewed?