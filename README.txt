
Note: All work has been done in Jupyter Notebook so that I can show my exploratory work and present my code properly. I have also attached html file of my notebook as a backup. I have done Relative Ability Estimate in python and Question Selection Analysis  and IRT in R. 


Contents
1. IRT.R: EM estimation using 2PL model 
2. coeff.csv: Output of IRT.R Discrimination
3. RelAbilityEstimate.pynb (Python jupyter notebook) - Collaborative + Relative Ability Estimate
4. RelAbilityEstimate.html (Open in Chrome/Firefox) - Jupyter Notebook -> Html Version
5. Discrm_Coll_RelAbility.csv - Output RelAbilityEstimate.pynb Item Discrimination values
6. QuestionSelectionAnalysis.pynb (R jupyter notebook)
7. QuestionSelectionAnalysis.html (Open in Chrome/Firefox) - Jupyter Notebook -> Html Version 
8. question_eliminated_1/2.csv and question_kept_1/2.csv : Final Decision of selection made output of QuestionSelectionAnlaysis.pynb


Ouput files already provided for IRT.R and RelAbilityEstimate.pynb which have a high running time.

Since I have used R as well, jupyter requires installation of R kernel on the system for it. 
Installation through Anaconda: conda install -c r r-essentials


I recommend to go through my work in the following order

Reviewing my work
1. Report (See Flowchart for flow)
2. RelAbilitiyEstimate.html (Jupyter notebook python html)
3. IRT.R (Running EM estimate takes 2 hours and installs ltm package automatically active net connection required) 
4. QuestionSelectionAnalysis.html (Jupyter notebook R html)
5. Final Output : question_eliminated_1/2.csv and question_kept_1/2.csv

Running the code Order
	5.1 ITR.R Takes 2 hrs (Ouput already present in the folder as coeff.csv)
	5.2 RelAbilityEstimate.pynb 10 mins (Ouput already present in the folder as Discrm_Coll_RelAbility.csv))
	5.3 QuestionSelectionAnalysis.pynb
	5.4 plot_IIC.R (Works only if IRT.R was run in the same environment)
