# Reproducible research: version control and R
1. https://github.com/1075846/logistic_growth

2. https://github.com/1075846/logistic_growth

3. https://github.com/1075846/logistic_growth

4. a. The code produces two randomly generated graphs showing "random walks". The walk angle is determined by a random number generator, which generates a different number (and therefore angle) after every step. There are 500 steps, each step has a length of 0.25 units. The darker the color, the further along in time (more steps). Because the code uses randomly generated values, each time the code is run the walk pattern changes. Therefore, different plots are generated every time.

   b. Random seeds are values determine the starting point for the generation of pseudo-random values in a simulation. The generation of numbers using random seeds is performed by a deterministic algorithm, so the numbers only appear random. This means when a seed is set in R code, the same values will be generated every time the code is run. Therefore, incorporating seeds into R code is important for making research simulations reproducible.

   c. https://github.com/1075846/reproducible-research_homework/blob/dev/question-4-code/random_walk.R

   d. <img width="1142" alt="image" src="https://github.com/user-attachments/assets/79b780d8-ec16-4b72-b304-0dd31b33efd4">

5. a. The table has 33 rows and 13 columns.

   b. A log transformation can be used. https://github.com/1075846/reproducible-research_homework/blob/dev/Question5.R

   c. α = 1181.807 (p = 2.28e-10), which is the exponent of the intercept of the linear model. The corresponding value in Table 2 was 1182 (246–5,675). β = 1.5152 (p = 6.44e-10), which is the gradient. The corresponding value in Table 2 was 1.52 (1.16–1.87). Both p-values demonstrate statistical significance, as they are below 0.05. Furthermore, my calculated values are very similar to the values in Table 2, and are within the confidence intervals. 
  
   d. https://github.com/1075846/reproducible-research_homework/blob/dev/Question5.R

   e. The estimated volume of a 300 kb dsDNA virus is 6697006nm^3. 

## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points. First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers (also make sure that your username has been anonymised). All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   a) A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points) \
   b) Investigate the term **random seeds**. What is a random seed and how does it work? (5 points) \
   c) Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points) \
   d) Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points) 

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \alpha L^{\beta}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   a) Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)\
   b) What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points) \
   c) Find the exponent ($\beta$) and scaling factor ($\alpha$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points) \
   d) Write the code to reproduce the figure shown below. (10 points) 

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  e) What is the estimated volume of a 300 kb dsDNA virus? (4 points) 
