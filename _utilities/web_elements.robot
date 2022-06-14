*** Settings ***
Documentation     web elements


*** Variables ***
#### Web elements of page: https://the-internet.herokuapp.com/ ####
${pageTitle}                The Internet
${pageIntroText}            Welcome to the-internet
#${framesLink}               //a[text()='Frames']
#${nestedFramesLink}         //a[text()='Nested Frames']
#${dataTablesLink}           //a[text()='Sortable Data Tables'}
${frames}                   Frames
${nestedFrames}             Nested Frames
${dataTables}               Sortable Data Tables
${emailTable1}                   //table[@id='table1']//tr/td[3]
${emailTable2}                   //table[@id='table2']//td[@class='email']
