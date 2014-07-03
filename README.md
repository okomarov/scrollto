##### Description
Matlab function to programmatically scroll the Variables Editor of the IDE

![Manual scrolling vs scrollto()](https://raw.githubusercontent.com/okomarov/scrollto/master/scrollto.gif)

##### Syntax

      SCROLLTO(NAME, POS) Opens the base workspace variable specified by
                      NAME and programmatically scrolls to POS.

      NAME    should be a string, i.e. a 1 by N char, pointing to a
              2-dimensional existing variable in the base workspace.
              It also works with indexed variables, e.g. 'c{1}', if
              the referenced object is a supported scrollable class.

      POS     can be a linear index or a pair of subscripts,
              e.g. [20, 7].

##### Supported classes
The spreadsheet visualization is implemented in the Variables Editor for 2D variables of the following classes:

  * [numeric](http://www.mathworks.co.uk/help/matlab/ref/isnumeric.html)
  * [logical](http://www.mathworks.co.uk/help/matlab/ref/logical.html)
  * [cell](http://www.mathworks.co.uk/help/matlab/ref/cell.html)
  * [timeseries](http://www.mathworks.co.uk/help/matlab/ref/timeseries-class.html)
  * [table](http://www.mathworks.co.uk/help/matlab/ref/table.html) (from R2013b)
  * [categorical](http://www.mathworks.co.uk/help/matlab/ref/categorical.html) (from 2013b)
  * [dataset](http://www.mathworks.co.uk/help/stats/dataset.html) (Statistics Toolbox)

##### Examples

      % Scroll a simple logical variable
      a   = false(1e6,100);
      pos = randi(1e8,1);
      scrollto('a',pos)

      % Scroll somewhere else
      scrollto('a',[1e5, 28])

      % Wrap into a structure and scroll the indexed variable
      s.foo = a;
      scrollto('s.foo',pos)

      % Wrap into cell and scroll with several levels of nesting
      c = {s};
      scrollto('c{1}.foo', pos)

      % Scroll 3D array
      a = rand(10,10,10);
      scrollto('a(:,:,2)',[5,2])


#### Additional resources
- Blog article from Undocumented Matlab: [Variables Editor scrolling](http://undocumentedmatlab.com/blog/variables-editor-scrolling/)
- The [Undocumented Matlab](http://undocumentedmatlab.com/) blog by Yair Altman. A gold mine of Matlab's undocumented features. 



