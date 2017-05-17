# lazyCoverLetter
Required Cover Letters can sometimes be annoying, especially if you strongly feel that they will not be read by the recruiters anyways. This lazy cover letter project takes your template and substitutes the date, the company name and job title to whatever you specify without you worrying about forgetting to change one of these.

<b>Features</b>
<ul>
<li> Changes all instances of the company name in your document to the new one </li>
<li> Changes all instances of position title to the new one </li>
<li> Automatically update the date in the cover letter </li>
<li> Automatically render your file and save as a PDF </li>
</ul>


<b> Setup </b>

1. Download and install MacTex from here http://www.tug.org/mactex/mactex-download.html (For now lazy cover letter is only guaranteed to work on mac.)
2. Download this repository as zip (From the green button on top of this page that says: clone or download)
3. Format your cover letter in LateX and follow these guidelines:

    a. Wherever you want to put a weekday in your template (Mon-Sun) put the word wday between brackets <> (This will automatically update it)
    
    b. Wherever you want to put the day of the month (0-31) put put the word day between brackets <> (This will automatically update it)
    
    c. Wherever you want to put month (Jan-Dec) put put the word month between brackets <> (This will automatically update it)
    
    d. Wherever you want to put year (20XX) put the word year between brackets <> (This will automatically update it)
    
    e. Wherever you want to put a company name put the word company between brackets <> (You will be prompted to enter a company name for every new cover letter)
4. Name your cover letter mycl.tex and put the script (script.sh) in the same directory where mycl.tex is

<b> Steps to generate a new cover letter </b>

1. In Finder, navigate to the folder containing mycl.tex and the script
2. Open terminal (hold command and press space, this will pop the spotlight search, then search for terminal)
3. in terminal write cd then press space, then drag the folder containing the cover letter to terminal. Press enter
4. write ./script.sh
5. You will be prompted to enter a company name, enter the company name and do not include special characters like '&' and press enter
6. The script is going to update the dates automatically and change the company name everywhere you want it to be changed. The output is a pdf file in the same folder of the texfile called mycl.tex
