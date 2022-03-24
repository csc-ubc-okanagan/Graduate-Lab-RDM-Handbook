# File Formats {-}

For every research project, it's important to consider which file formats you'll use to save and store your data and files.  In some instances, the file formats you use will be dictated by software, instruments, or other factors in your research project or field, but in other cases, you may have the option to choose between several different formats. The type of data that you're working with will also play a factor in determining the file formats you use, but considering your workflows and project goals should play a large role in selecting formats. 

## File Format Best Practices {-}

* If possible, collect data in open and non-proprietary formats 
* If not possible to collect open / non-proprietary formats, try to pick a format that can be easily converted to an open format
* Consider software and formats that are widely used within your discipline
* Be aware of software, hardware, and licensing requirements for viewing and working with data
* Be aware of using elements such as colour or highlighting as a form of metadata, as they may be lost if converted to a different format


### Recommended formats for sharing, resuse, and preservation


| **Data Type**  | **Recommended Formats** | **Accepted Formats** | 
|--------------- |  ----------------------- | --------------------- |
| **Tabular data with extensive metadata** (variable labels, code labels, defined missing values|  .por (SPSS portable format) | .sav, .dta, .mdb,.accdb |
| **Tabular data with minimal metadata** (column headings, variable names) | .csv, .tab | .txt, .xls, .xlsx, .mdb, .accdb, .dbf, .ods | 
| **Textual data** | .rtf, .txt, .xml | .html, .doc/.docx |
| **Image data** | .tiff (TIFF 6.0) |  	.jpeg, .jpg, .jp2, .gif, .tif, .tiff, .raw, .psd, .bmp, .png, .pdf |
| **Audio data** | .flac | .mp3, .aif, .wav |
| **Video data** | .mp4, .ogv, .ogg, .mj2 | .avchd |
| **Documentation and scripts** | .rtf, .pdf, .xhtml, .htm, .odt | .txt, .doc/.docx, .xls, .xlsx, .xml |
| **Geospatial data** (vector and raster data) | .shp, .shx, .dbf, .prj, .sbx, .sbn, .tif, .tfw, .dwg, .gml | .mdb, .mif, .kml, .dxf, .svg |
| **Chemistry data** (spectroscopy) | .jdx (JCAMP) |    | 

Source: [Oregon State University](https://guides.library.oregonstate.edu/research-data-services/data-management-types-formats)

### Raw Data

Raw data referse to data that has been gathered or collected in its initial state, and has not yet been processed, cleaned, organized, or analyzed in any way.  Depending on the type of data you are working with and how its generated, you may or may not have the option to choose your raw file formats (for example, if your data is dependent on instruments or software).  

General recommendations for raw data file formats:
* Save a copy of your raw data in its original format, and do not alter or clean in any way.  In case things go sideways, it's always good to have to have a fallback.
* If possible, save a copy of your raw data in one of the recommended formats (preferable) or accepted formats above.  


### Processed Data

Processed data refers to data that has been cleaned, organized, and or manipulated in ways that allow the data to be analyzed.  When actively processing data, select file formats that allow you and your team to to easily share, open, and read files.  If you are creating any code or scripts to clean or analyze your data, follow the same guidelines in regards to the formats in which they are saved.  For both your data and code, if you are using proprietary or non-open formats, consider how you may convert these files to the recommended formats above once processing is complete.

### Data for Deposit

Deposited data refers to data that is place into a digital repository for long-term archiving.  For this type of data, the recommended formats from above are most condusive to the long-term access of your data and files.  


### Manuscrips {-}

When preparing and working on manuscripts, one of the most common file formats is <code>.doc/.docx</code>, which generally requires Microsoft Word in order to create, edit, or view, but other applications like Open Office and LibreOffice can read these files as well.  While these are proprietary formats, they are widely accepted formats and are thus in the 'accepted formats' category.  

Depending on the nature of your manuscript and how you intend to develop, edit, share, and disseminate, the formats in the "Textual data" section are all viable options.


### Documentation files {-}

Documentation files, such as READMEs and data dictionaries, should be written in plain text so that they can be easily opened by any computer at any point in time. <code>.txt</code> is a popular plain text format, and widely used for documentation files and other instructional documents.  

In addition to <code>.txt</code> files, Markdown, which is saved as <code>.md</code> files, is an authoring language that makes it easy to create HTML documents without having to type all the extra characters of HTML.  Markdown can be read by any application that will open a <code>.txt</code> file, and is increasingly being used for technical documentation.  With that said, there may be systems that will not render an <code>.md</code> file with the desired formatting, so depending on your workflow and how you plan to disseminate and potentially archive your work, this may not be the ideal file format.  

## Questions {-}

* What file formats will be used for what content types?
* Are any of your files bound to specific software or instruments?  If so, do all your collaborators have access to these?
* Have you looked into how to convert any proprietary file formats you may have into non-proprietary formats?
