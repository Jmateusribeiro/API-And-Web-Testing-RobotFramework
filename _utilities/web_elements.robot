*** Settings ***
Documentation     web elements


*** Variables ***
#### Web elements of page: https://the-internet.herokuapp.com/ ####
${pageTitle}                        The Internet
${pageIntroText}                    Welcome to the-internet
${framesFunction}                   Frames
${nestedFramesFunction}             Nested Frames
${dataTablesFunction}               Sortable Data Tables
${dataTablesTitle}                  Data Tables
${emailTable1}                      //table[@id='table1']//tr/td[3]
${emailTable2}                      //table[@id='table2']//td[@class='email']
