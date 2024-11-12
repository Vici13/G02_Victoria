# **a.	Title**
## Investigating the influence of sex on memory performance depending on the extraversion Level of the participants.

# **b.	Abstract**
This study investigates the influence of sex on memory performance, considering the extraversion level of participants. Previous research has suggested that both extraversion and sex can independently influence cognitive functions, including memory, but their interaction remains understudied. We hypothesized that extraversion would significantly affect memory performance, with extraverts performing better on tasks requiring quick retrieval and introverts excelling in tasks demanding focused attention. Additionally, we expected that sex differences would moderate these effects, with males and females showing different patterns of memory performance based on their extraversion levels.

# **c.    Keywords**
Memory, Extraversion, FMRI


# **d.	Introduction**
Memory is a fundamental cognitive function that influences a wide range of daily activities, from learning and decision-making to recalling past experiences. Over the years, researchers have sought to understand the factors that contribute to individual differences in memory performance. While traditional studies often focus on biological factors, environmental influences, and cognitive strategies, more recent research has turned attention to personality traits as potential moderators of memory abilities. One such trait, extraversion, has gained particular interest due to its influence on a range of psychological outcomes, from social interactions to mental health.

Extraversion, one of the key dimensions of the Five-Factor Model of personality, is characterized by traits such as sociability, energy, and assertiveness. Individuals who score high on extraversion tend to be more outgoing, active, and enthusiastic, while those who score low (introverts) are typically more reserved and focused on solitary activities. The relationship between extraversion and cognitive performance is still not fully understood, particularly when it comes to complex functions such as memory. Some studies suggest that extraverts may have advantages in certain memory tasks due to their heightened levels of arousal and stimulation-seeking behaviors, while introverts may excel in others due to their preference for deep, focused attention.

Recent investigations into sex differences in cognitive functions have also raised intriguing questions about how biological and sociocultural factors might shape memory performance. While both males and females perform similarly on certain memory tasks, studies have suggested that there may be differences in the ways that men and women approach or process memory. These differences could potentially interact with personality traits like extraversion, creating varying patterns of performance across different groups. The present study seeks to investigate how the influence of extraversion on memory performance may differ between males and females, examining whether personality traits, in combination with sex, can offer deeper insights into cognitive variability.

# **e.	Methods**
Sample Description
We used data from a large-scale, single-center fMRI study conducted at the University Hospital of Basel, Switzerland, between 2008 and 2016. The study has been described before (Egli et al., 2018; Heck et al., 2017; Spalek et al., 2015) and consisted of healthy young adults recruited from the city of Basel and the surrounding areas. Data from N = 1’525 subjects was available (data lock April 2015). We excluded subjects with corrupted or incomplete fMRI or behavioral data (see section 2.5), resulting in a final sample size of N = 1000 subjects.

Study design
All participants received general information about the study beforehand and gave their written informed consent for participation upon arrival at the day of the experiment. Subjects had no history of neurological or psychiatric illness, and did not take any medication (except oral contraception) at the time of the experiment. Procedures were approved by the ethics committee of the Cantons of Basel-Stadt and Basel-Landschaft.

Episodic Memory
We used a picture free recall task to assess episodic memory. For picture encoding, 72 pictures, divided into three valence groups (negative, neutral, and positive), as well as 24 scrambled pictures were presented during the MRI scans by using MR-compatible LCD goggles.Pictures were presented in an event-related design, for 2.5 s in a quasi-randomized order so that a maximum of four pictures of the same category were shown consecutively. A fixation-cross appeared on the screen for 500 ms before each picture presentation. Four additional pictures showing neutral
objects were used to control for primacy and recency effects in memory. In an unannounced recall task outside of the scanner, subjects had to freely recall the previously presented pictures, 10 min after the end of picture encoding. An unannounced free recall test was used to avoid recall performance to be influenced by interindividual differences in learning strategies, potentially reflecting non-mnemonic processes. Participants had to write down a short description (a few words) of the previously seen pictures. Primacy and recency Pictures that were remembered as well as training pictures were excluded from the analysis. No time limit was set for this task. Two trained investigators independently rated the descriptions for recall success (inter-rater reliability >98%). No details were required for correct scoring as
pictures were all distinct from each other. The total number of freely recalled pictures was defined as the episodic memory performance phenotype.

Variables

Sex: A binary variable (0 = female, 1 = male) was included to investigate sex-based differences in memory performance. The variable was later recoded into a factor with appropriate labels (female and male).
Extraversion: This continuous variable measured the participants' extraversion levels, with higher values indicating greater extraversion.
Memory Performance: Two continuous variables were used to represent memory performance: short-term memory (EM_SD) and long-term memory (EM_LD). These variables were assessed via standardized tests.
Combined Memory Variable (EM): A composite memory variable was calculated by averaging the scores of EM_SD and EM_LD, which provided a general measure of cognitive performance.

Statistical Analysis

Data preprocessing steps included the removal of certain participants based on the "Filter" variable, leading to a final dataset of 833 participants. For descriptive statistics, summary statistics were computed for all key variables. For inferential analysis, t-tests were conducted to assess differences in memory performance (EM_SD and EM_LD) by sex. The relationship between extraversion and memory performance was explored using Pearson's correlation tests. To further examine sex-based differences, linear regression models were applied with memory performance (both EM_SD and EM_LD) as dependent variables and sex as the independent variable. The potential interaction between extraversion and memory performance was also tested. Data validation steps included the verification of normality assumptions using summary statistics and density plots, and checking for multicollinearity among independent variables.

# **f.	Results**
Data Filtering and Validation:
The initial dataset consisted of 1,000 participants, but after applying a filter variable (Filter == 0), 833 participants remained for the analysis. Descriptive statistics revealed that Extraversion scores ranged from 3.0 to 32.0, with a mean of 20.6. Memory performance scores for both short-term (EM_SD) and long-term (EM_LD) ranged widely, with means of 28.9 and 23.6, respectively. The correlation between Extraversion and both short-term and long-term memory performance was not significant (r = 0.03 for EM_SD and r = 0.02 for EM_LD), suggesting no meaningful relationship between these variables in the filtered sample. The dataset was also validated for reliability, with no issues found in the processing of the data.

Main Research Question:
The primary analysis focused on memory performance differences between males and females. A t-test showed a significant difference in short-term memory performance (EM_SD) between males (M = 27.25) and females (M = 30.45), with males scoring lower (t = 4.67, p < 0.001). Similarly, long-term memory performance (EM_LD) was significantly lower in males (M = 20.69) compared to females (M = 26.46; t = 7.90, p < 0.001). These results suggest that sex is a significant factor influencing memory performance, with females outperforming males in both short-term and long-term memory tasks.

Additional Analyses:
Additional analysis examined the correlation between the two memory variables, EM_SD and EM_LD, which showed a strong positive correlation (r = 0.86), indicating that individuals who perform well in short-term memory also tend to perform well in long-term memory. A paired t-test confirmed a significant difference between the two memory measures, with EM_SD (M = 28.86) being significantly higher than EM_LD (M = 23.59; t = 10.26, p < 0.001). These results suggest that short-term memory performance was generally higher than long-term memory performance in this sample.

Sensitivity Analysis:
To assess the robustness of the findings, a sensitivity analysis was conducted by removing the filter variable and including all 1,000 participants. The results of the t-tests and regression analyses remained consistent with the primary analyses. Short-term memory performance continued to show a significant difference by sex (t = 5.01, p < 0.001), and long-term memory performance also showed a significant sex difference (t = 8.71, p < 0.001). Additionally, the regression models indicated that while sex remained a significant predictor of memory performance, Extraversion was not significantly associated with either short-term or long-term memory. This supports the reliability of the findings, irrespective of the filtering process.

# **g.	Discussion** 
The present analysis examined the relationships between sex, extraversion, and memory performance, with a particular focus on episodic memory (short-term and long-term) as well as potential sex differences in these variables. The filtering and validation process revealed a sample of 833 participants after the exclusion of 167 cases based on the filter variable. Notably, the data revealed significant sex differences in episodic memory performance. Men demonstrated significantly lower scores in both short-term (EM_SD) and long-term (EM_LD) memory performance than women, aligning with previous research suggesting gender differences in cognitive abilities. However, the analysis showed no significant correlation between extraversion and memory performance, implying that individual personality traits, at least in this sample, may not influence memory performance in a meaningful way.

In terms of the primary research question, the results provided clear evidence of sex differences in episodic memory, with men showing lower memory scores on average. This finding is consistent with the literature on cognitive sex differences, where women tend to outperform men on tasks involving verbal memory and episodic recall. Furthermore, despite extraversion being explored as a potential moderator, no significant relationship was found between extraversion and either short-term or long-term memory performance, highlighting that personality traits might not play as significant a role in memory performance as initially hypothesized. These findings suggest that factors such as sex, rather than personality, might be more influential in shaping memory performance in this dataset.

Additionally, supplementary analyses explored correlations between different types of memory performance (EM_SD and EM_LD), which were highly positively correlated. This correlation supports the idea that short-term and long-term memory are linked within individuals, suggesting a shared underlying cognitive mechanism. Sensitivity analyses revealed that the results held robust across different datasets, including one without the applied filter. Although extraversion did not emerge as a significant predictor of memory performance in either model, it is worth noting that further research, potentially with a larger and more diverse sample, might provide more nuanced insights into the role of personality traits in cognitive processes. Overall, the current study contributes to our understanding of how demographic variables, such as sex, may influence memory, while also cautioning against overestimating the impact of extraversion in this context.





