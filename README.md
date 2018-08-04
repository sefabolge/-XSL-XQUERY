# -XSL-XQUERY
This project involves writing some XSL transformations (part A) and XQuery expressions (part B).


A XSL Transformation

A.1
Create a file boats select.xsl for selecting the boats with price less than 100,000 pounds, and
length less than 40 feet.
Output: the boat elements (with sub-elements) that match the condition.

A.2
Copy the XSL file (name it boats select html.xsl) and modify the stylesheet such that it generates
the result in HTML.

A.3
Modify your script such that it adds information about the average price and average length of boats:
                <p> avg p r i c e : a l l b o a t s : 90000</p>
                <p> avg p r i c e : r e l e v a n t b o a t s : 70000</p>
                <p> avg l e n g t h : a l l b o a t s : 4 0.5 </p>
                <p> avg l e n g t h : r e l e v a n t b o a t s : 36</p>

Demonstrate the usage of XSL variables for solving this task.

A.4
Split your code over two stylesheets: boats select.xsl and boats xml2html.xsl. The first script selects the
boats, and the second script reads the output of the first script and generates the HTML representation.
What are the advantages/disadvantages of distributing the code over two stylesheets?

B XQuery

B.1
Provide the XQuery script to select the boats with price and length as described for the XSL task.

B.2
Provide the XQuery script producing the HTML output as described above.
