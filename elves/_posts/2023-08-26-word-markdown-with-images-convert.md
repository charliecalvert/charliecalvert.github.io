---
layout: post
date: 2023-08-23 07:56:20 -0700
title: Convert Word Doc with Images to Markdown
categories: tech
---

# Convert Word to Markdown with Images

If you find that the GIMP is not on your PowerPoint path, you can use
this line do you set it up:

\$env:PATH=\"C:\\Program Files\\GIMP 2\\bin;\$env:PATH\"

## Themes

Themes are found on the design tab.

Themes are saved here:

*C:\\Users\\charl\\AppData\\Roaming\\Microsoft\\Templates\\Document
Themes*

## Templates

You can choose to save a document as a template. Choose **save as** and
then save it as a **.dotx** file. Usually saved here:

*C:\\Users\\charl\\OneDrive\\Documents\\Custom Office Templates*

See this [custom template
guide](https://www.customguide.com/word/how-to-create-a-template-in-word).

12 the styles from the document,

- choose file \| options.

- Select Addins

- Manage \| Templastes \| Go

- Attach \| Browse to:

- C:\\Users\\charl\\OneDrive\\Documents\\Custom Office Templates

- Automatically update document styles \| Ok

See this video on [Tricks to Apply Styles](https://youtu.be/W_HwKlgdhGE)
by [PickUpBrain](https://www.youtube.com/@pickupbrain), or [search for
it](https://www.youtube.com/results?search_query=templates) on YouTube.

This is a test.

![A statue of a seated buddha Description automatically
generated](./media/image1.jpg){width="5.555555555555555in"
height="4.166666666666667in"}

Test 2:

![A statue of a person with many hands Description automatically
generated](./media/image2.jpg){width="5.555555555555555in"
height="4.166666666666667in"}

    Const a=1;

##

## <https://d.docs.live.net/441f942a988a6348/Writing/Tech-Information>

## History

CASCADETRAIL\\C:\\Users\\charl\> history

Id Duration CommandLine

\-- \-\-\-\-\-\-\-- \-\-\-\-\-\-\-\-\-\--

1 0.006 cd .\\Downloads\\

2 0.209 pandoc.exe -f docx -t markdown .\\Test.docx -o

3 0.173 pandoc.exe -f docx -t markdown .\\Test.docx -o Test.md

4 0.044 ls

5 0.009 cat .\\Test.md

6 0.007 rm .\\Test.md

7 0.044 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

8 0.001 cat .\\Test.md

9 0.013 ls .\\media\\

10 0.031 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

11 0.033 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

12 0.022 history

13 0.453 pandoc.exe -f markdown -t docx .\\Test.md -o Test01.docx

14 0.039 pandoc.exe \--extract-media=. -f docx -t markdown
.\\Test01.docx -o Test01.md

15 0.064 pandoc.exe -f markdown -t docx .\\Test01.md -o Test02.docx

16 0.042 pandoc.exe \--extract-media=. -f docx -t markdown
.\\Test02.docx -o Test03.md

17 0.011 history

18 0.006 cd ..

<https://www.washingtonpost.com/>

19 0.006 cd .\\OneDrive\\Writing\\Tech-Information\\

CASCADETRAIL\\C:\\Users\\charl\\OneDrive\\Pictures\\Spirit\> history

Id Duration CommandLine

\-- \-\-\-\-\-\-\-- \-\-\-\-\-\-\-\-\-\--

1 0.008 \"C:\\Program Files\\GIMP 2\\bin\"

2 0.102 PATH=%PATH%;\"C:\\Program Files\\GIMP 2\\bin\"

3 0.020 env:PATH=%PATH%;\"C:\\Program Files\\GIMP 2\\bin\"

4 0.035 \$env:PATH=%PATH%;\"C:\\Program Files\\GIMP 2\\bin\"

5 0.000 \$env:PATH=\$env:%PATH%;\"C:\\Program Files\\GIMP 2\\bin\"

6 0.006 \$env:PATH=\$env:PATH;\"C:\\Program Files\\GIMP 2\\bin\"

7 0.005 \$env:PATH

8 0.006 \$env:PATH=\"C:\\Program Files\\GIMP 2\\bin;\$env:PATH\"

9 0.000 \$env:PATH

10 0.103 gimp-console-2.10.exe \--help

11 0.002 cd .\\OneDrive\\Pictures\\Spirit\\

12 3.311 gimp-console-2.10.exe -b \"(batch-resize \\\"\*.JPG\\\")\" -b
\"(gimp-quit 0)\"

13 0.008 ls

14 1.709 gimp-console-2.10.exe -b \"(batch-resize \\\"\*.JPG\\\")\" -b
\"(gimp-quit 0)\"

15 1.709 gimp-console-2.10.exe -b \"(batch-resize \\\"\*.JPG\\\")\" -b
\"(gimp-quit 0)\"

16 0.014 history

17 0.028 pandoc \--list-highlight-styles

18 0.029 pandoc -o custom-reference.docx \--print-default-data-file
reference.docx

19 0.004 ls

20 0.049 word.exe .\\custom-reference.docx

CASCADETRAIL\\C:\\Users\\charl\\AppData\\Roaming\\GIMP\\2.10\\scripts\>
history

Id Duration CommandLine

\-- \-\-\-\-\-\-\-- \-\-\-\-\-\-\-\-\-\--

1 0.010 cd C:\\Users\\charl\\AppData\\Roaming\\GIMP\\2.10

2 0.018 cd .\\scripts\\

3 0.011 ls

4 0.008 cat .\\batch-update.scm

5 1.167 code .

6 0.006 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe -b\"

7 0.004 ls

8 0.000 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe -b\"
function-test.scm

9 0.006 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe -b
function-test.scm\"

10 0.000 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe\" -b
\"function-test.scm\"

11 0.000 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe\"
\"-b\" \"function-test.scm\"

12 0.000 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe\"
\\\"-b\\\" \"function-test.scm\"

13 0.034 C:\\Users\\charl\\AppData\\Roaming\\GIMP\\2.10\\brushes\\ -b
\"(batch-resize \\\"\*.JPG\\\")\" -b \"(gimp-qu...

14 0.012 ls

15 0.000 \"c:\\Program Files\\GIMP 2\\bin\\gimp-console-2.10.exe\" -b
\"(batch-resize \\\"\*.JPG\\\")\" -b \"(gimp-...

CASCADETRAIL\\C:\\Users\\charl\\AppData\\Roaming\\GIMP\\2.10\\scripts\>

CASCADETRAIL\\C:\\Users\\charl\> history

Id Duration CommandLine

\-- \-\-\-\-\-\-\-- \-\-\-\-\-\-\-\-\-\--

1 0.006 cd .\\Downloads\\

2 0.209 pandoc.exe -f docx -t markdown .\\Test.docx -o

3 0.173 pandoc.exe -f docx -t markdown .\\Test.docx -o Test.md

4 0.044 ls

5 0.009 cat .\\Test.md

6 0.007 rm .\\Test.md

7 0.044 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

8 0.001 cat .\\Test.md

9 0.013 ls .\\media\\

10 0.031 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

11 0.033 pandoc.exe \--extract-media=. -f docx -t markdown .\\Test.docx
-o Test.md

12 0.022 history

13 0.453 pandoc.exe -f markdown -t docx .\\Test.md -o Test01.docx

14 0.039 pandoc.exe \--extract-media=. -f docx -t markdown
.\\Test01.docx -o Test01.md

15 0.064 pandoc.exe -f markdown -t docx .\\Test01.md -o Test02.docx

16 0.042 pandoc.exe \--extract-media=. -f docx -t markdown
.\\Test02.docx -o Test03.md

17 0.011 history

18 0.006 cd ..

19 0.006 cd .\\OneDrive\\Writing\\Tech-Information\\

20 0.011 ls

21 0.001 cd ..

22 0.001 cd ..

23 0.092 cd1

24 0.001 cd ..

25 0.006 ls
