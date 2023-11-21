**Introduction**  
The purpose of this analysis was to determine the initial population size of a bacterial cultyre, the rate of growth and the carrying capacity of the population. The model is based on a population of bacteria formed from 900µl of growth media and 100µl of *E.coli* mixed together in a test tube. The test tube was then left for a duration of time to allow the bacteria to grow, so that the dyanmics of population growth can be modelled. *E.coli* grow very quickly and so in an environment rich in resources, i.e. the growth media, the bacteria will undergo exponential growth. However, when the resources are used and there is little left, the population will cease to grow and will become bacteriostatic as the population cannot grow any further. This is the maximum that the population can grow to and is known as the carrying capacity, or the parameter, k. 
The exponential growth of the population can be modelled through: 
$Nt = (K * N0 * e^(rt))/(K - N0 + N0 * e^(rt))$

**Methodology**  
In order to model the population growth, a repository from GitHub was forked containing the relevant data (experiment3.csv). The repository was forked to create a copy and a devolpment branch was created inside this fork so that any changes that are made are not immediately committed to the main branch. A license and README file were added before the analysis could begin.
To complete the analysis, Posit Cloud was used as an RStudio interface that could be pushed to GitHub. Three scripts were used in PositCloud to fully analyse data. These scripts were named, plot_data, fit_linear_model, and plot_data_and_model.
In plot_data, modelling of the population began by plotting the exponential growth of the bacterial population. Using the ggplot2 package, a sigmoidal growth curve was produced, with time (t) (arbitrary units) on the x axis and population size on the y (y). 
The second part of the plot_data script involved transforming the exponential data through a logarithmic transformation which linearlised the data. This could then be plotted as a log10 transformation of the exponential data.

In the second script, fit_linear_model, the parameters of the model could be elucidated through a linear model approximation. Two cases were looked at specifically to determine the model parameters. The first case was when K (the carrying capacity) >> N0 (i.e. K is much larger than the initial population size), when t is small (t~0). Modelling this would allow us to determine the rate that the population would have to grow at to reach k, therefore providing the r parameter. The second case looks at when Nt = k, or when the population size at time t is equal to k, i.e. when the population has reached the carrying capacity. Completing a linear model of this allows the carrying capacity to be determined. 

The first and second scripts provide the parameters that are needed to estimate the initial population size in the third script. The thrid script, plot_data_and_model, both the data and model are plotted against each other to determine the accuracy of the estimates of k and r, while also allowing estimation of the initial population size. To find the initial population size, the value of k must be imputted into the equation: 
$N0 = e ^(Nt)$ 

**Results**  
plot_data:
As mentioned, this graph showed a sigmoidal growth curve frpom 0e+00 at N0 to approximately 5e+09 at the plateau, k. This script generated both exponential and logarithmic models of the bacterial population growth. These were displayed on graphs with time (t) (arbitrary units) on the x axis and population size on the y (y), and allowed us to visualise the data.

fit_linear_model: 
This script allowed for estimation of the parameters in the model through the exploration of two specific cases. In case 1, k >> N0 

conclusions:
- what conclusions can be made?
- what could've been better?- i.e. the red line could have been closer to the dotted line to be more accurate. - under approximation of Nt/k as a result of the chosen value of t > 3000 in the fit_linear_model script. This means that the estimation of both k and N0 are lower than they should be. If I were to repeat this analysis, I would use a higher value of t, for example t > 3500, because at this point in time, the bacterial population had become bacteriostatic as was no longer increasing, and therefore accurately represents the value of the carrying capacity. 
