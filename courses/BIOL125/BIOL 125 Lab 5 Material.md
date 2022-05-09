# Plankton Biodiversity

> Based on the TA giving the lab report draft back to students it seems it would be pretty simple to shift to a student #Potential/Peer_review

## INTRODUCTION:

**PLANKTON:**

Plankton are microscopic organisms that live in water and that drift with the currents. Three groups of organisms make up the plankton found in lakes:

1. **Phytoplankton** includes algae, photosynthetic protists and cyanobacteria. They are *primary producers* because they can convert inorganic CO2 to organic carbon. 
2. **Zooplankton**s are primary consumers that feed on phytoplankton. Some that feed on other zooplankton are considered *secondary consumers*. Zooplankton can be animals, like rotifers or small crustaceans called cladocerans and copepods. They can also be protists but these are less common. Since protists require different collection techniques, they are usually considered in a separate category termed *microzooplankton*. 
3. **Bacterioplankton**, include all bacteria except cyanobacteria. They can be autotrophs or heterotrophs and are important for recycling nutrients in aquatic ecosystems. We will not consider them in this laboratory because special techniques are required to see them.

**BIODIVERSITY:**

Biodiversity is a measurable aspect of all communities. It can be used to describe a community in the same way that height or eye colour can be used to describe a person. The most widely used definition of biodiversity is **species diversity**. This aspect takes account of the number of species present and the number of individuals in each species. Another use of the term biodiversity deals with **genetic diversity**, or the genetic variability that exists among individuals within a community or population. A third use of the word biodiversity includes **ecosystem** or **habitat diversity**. This refers more to physical diversity; diversity in landscapes – from prairie grasslands to coastal rainforests, from alpine meadows to coral reefs. 

**SPECIES DIVERSITY:**

Species diversity is a combination of: 
* Species Richness: the number of *different species* present in a community 
* Evenness: **how many individuals** there are in each species 

**Species richness** is the simplest method for evaluating diversity. Since it is often impossible to enumerate all the species in a natural community, many methods of estimating the richness from a sub-sample of a community have been developed. 

**Evenness** describes how individuals are distributed among species in a community. Example: If a community has ten species each with 100 individuals, does it have the same diversity as a community with ten species, one with 990 individuals, the others with 1 each? 

![img](https://lh5.googleusercontent.com/LJYSAamTqZ1hc4aHeo3z1gnz0SA_dlJ5l5SsItZ7Wtovs6D1H-UKdpjaAxj59QJ_XZwaamcr07fyCz5HJpqBI7HNOTvEPaNpPY0ZHU1wWzRLGED7xWadbukLndnfJhf7yKMXXqw)

**Figure 5.** Concepts of species diversity.

Community A has the same number of species as community B but the relative abundances are more even.  Thus, A is more diverse than B. Community C has the same abundance pattern as B but has more species, so it is more diverse than B. In this case, is A or C more diverse? We need to use some more sophisticated calculations, or Diversity Indices, to determine that.

**SPECIES DIVERSITY INDICES:**

Quantifying species diversity allows us to compare multiple communities, or the diversity of a single community over time. 

The **Shannon-Wiener Index** measures uncertainty. If diversity is *low* then the certainty of encountering species X is high. If diversity is *high*, then the certainty of encountering species X is low. High diversity = high uncertainty.  It is a logarithmic measure of diversity weighted by the relative abundance of each species. 

H’ = - Σpi log pi

Where H' = Shannon-Weiner diversity index*p* *i* = the proportional abundance (the proportion of species *i* in the total sample of individuals)

The larger the value of H', the greater the diversity. 

H'=0 is true only when community is made up of one species. 

**Simpson’s Index**, like the Shannon Wiener Index, considers the proportional abundance of each species.  It is a measure of *dominance* – *i.e.,* a community with *high* diversity will have *low* dominance of one species. 
D=/_1//   Σpi2

Where D=Simpson’s diversity index pi=proportional abundance of *i*
Values for the Simpson’s Index can range from 1 to the value that represents the total number of species in the community.

**COMPARING THE TWO INDICES:**

The Shannon-Wiener Index emphasizes rarer species whereas the Simpson’s Index emphasizes dominant species. The choice of using one index over the other depends on what you want to emphasize. If you were interested in assessing the recovery of a lake after a catastrophic event, the Shannon-Weiner Index might be best because it would be more sensitive to the return of initially rare species. Under other circumstances, you might only be interested in evaluating species that were relatively abundant and therefore more important as a significant source of food for fish. Simpson’s Index would probably be better in that case.

**EVENNESS MEASURES:**

Sometimes you will want to simply measure the evenness of two communities. Since diversity indices are calculated by considering evenness, we can generate this value from the diversity index itself. This is done by scaling one of the diversity indices against its maximum value. 

For example:
 ED = D/Dmax  	*For Simpson’s Index, D**max* *=species richness.* 

or   EH’ =H’/H’max*For the Shannon Weiner Index, H'**max* *= log (species richness).* 



The maximum value of “1” occurs when the abundances of all species in the community are equal.

**Sample Calculations:**

> I wonder if we could provide this data and example on #Potential/RLanguage, I'm not sure if there is a package that currently uses these calculations or if we'd have to make a formula for it. (**Note: R package used in BIOL 309 lab does these calculations**)

Assume the following data set measured all individuals in a community:

|       | Tree species  | # of individuals | proportional abundance, pi |
|-------|---------------|------------------|----------------------------|
| 1     | Hemlock       | 1940             | 0.521                      |
| 2     | Beech         | 1207             | 0.324                      |
| 3     | Yellow Birch  | 171              | 0.046                      |
| 4     | Sugar Maple   | 134              | 0.036                      |
| 5     | Black Birch   | 97               | 0.026                      |
| 6     | Red Maple     | 93               | 0.025                      |
| 7     | Black Cherry  | 34               | 0.009                      |
| 8     | White Ash     | 22               | 0.006                      |
| 9     | Basswood      | 15               | 0.004                      |
| 10    | Yellow Poplar | 7                | 0.002                      |
| 11    | Magnolia      | 4                | 0.001                      |
| Total |               | 3724             | 1.000                      |

The **Species Richness** of this community is 11.

Calculate the **Shannon-Wiener Index** as follows:

H'= - [(0.521)(log0.521) + (0.324)(log0.324) + .....] = 0.55 

Calculate the **Simpson’s Index** as follows:

D = 1/[(0.521)2 + (0.324)2 + ......] = 2.62 

Note that it makes no sense to compare the Shannon Weiner index and the Simpson index for the same community. Instead compare *the same index* for two different communities, or the same community at 2 different times.

Calculate the **Shannon-Wiener Evenness Measure** as follows:

EH’ = 0.55 /log (11) = 0.55/1.04 = 0.53

Calculate **Simpson’s Measure of Evenness** as follows:

ED = 2.62 /11 = 0.24

Notice that these two evenness measures are significantly different even though they are based on the same data. Because the Shannon Weiner Index is more sensitive to rare species, its index value is higher than the Simpson’s Index value.

## PLANKTON ANALYSIS

**COLLECTING DATA FROM YOUR SAMPLE**

1. Obtain a depression slide and place a drop of sample into the dimple. Put a cover slip on it.
2. Using the 40X objective lens, scan around the slide to get a 'feel' for the organisms present. Try identifying them to major taxonomic group using the key provided.  There will be other guides available in the lab if you want to identify an organism beyond the scope of the key.
3. Once you have gotten comfortable with the range of organisms in your samples, make a sketch of each type of organism that you observe. This does not have to be Rembrandt quality, just a sketch so that you can identify and recognise the different types of organisms. The actual name of the organism is not important for calculating the indices or richness, as long as you are able to categorize all individuals in your sample. Remember that organisms may look slightly different when viewed from different angles. Think of looking directly at the front end of a dog versus directly at the back end. You may have to build up a little 3-D image of the organism.

> It would be good for these to be proper figures with captions and if students could incorporate these into their #Potential/Open_notebooks. Then they could describe the different characteristics they noted on that figure and use those to justify which organism they think it is. Emphasizing #Potential/Research_transparency 

5. Once you have a sketch of all the different types in your sample, count the number of individuals of each type in your field of view. Remember that many algae are unicellular, so you may have to estimate the number of cells in a filament or clump of algae.

> If they do estimate it would be important for them to explicitly state that ( #Potential/Research_transparency ) and maybe provide a range of possible number of cells, then take the average.

7. Obtain another sample and repeat steps 3) and 4). If you encounter the same organisms as in your first location, then just add the number of individuals to the first set. If you encounter new organisms, add them to the list and count how many you see. At the end, you should have a tally sheet that looks something like the one on the following page.

> Connection to #Concept/Replication 

![img](https://lh6.googleusercontent.com/ZwNrcfYcwvQK5_o-TD0iY5Dtjn4B61IDSfpvU9aMA0y2LhYpKXY9A1M4y5x8WY73b_aX1d7oYYaSz9xTFEy44x5mbIrsIJjDGog6hJE50yh8gf-mSu0yJ6okP2adqN-r_upk618)



**CALCULATIONS TO PERFORM:**

> Might be able to perform these in #Potential/RLanguage, I'm not sure if there is a package that currently uses these calculations or if we'd have to make a formula for it.

1. Determine the Species Richness for the sample collected in the winter and in the summer. **(  /1)**



2. Calculate the proportional abundance for each of your organism types and prepare a histogram like Figure 5 for your data. **(  /5)**

> #Skill/Data_visualization opportunity in #Potential/RLanguage. Also can refer to #Potential/Biology_data_presentation_guidelines 




3. Calculate a) Shannon-Wiener Index and Evenness, b) Simpson’s Index and Evenness for each sample. Is there a difference? If so, explain. **(  /7 each,  /14 total)**


![img](https://lh4.googleusercontent.com/o9UKD33Ua4giQVFnPywREpf5_aLw8doqXNDIaGgCJ1Jhr4e9i_glLvpJWmq1kV3pQVRZYpp6dHCJ79C8aFTGS4iq8ToEV_Xdj5BnAtIKdMSEYRG36-TyPpczsKBn_QEOqH2kj6w)

![img](https://lh3.googleusercontent.com/E4tGurteSVo4WNScPwogKYM-9HbK_AJDjgxop32tjgOaRI9o0CocYp3MUMe-2d8fFCOmuoJXq--WRRa0Wdhgj1I5rlxn3ubQBJRiulKse7thcoTINGPBLQFMdkbB_U70nEHt5UM)

![img](https://lh4.googleusercontent.com/BSdJZlQP-RAx_PqnP4DImwriuwIV6HB3K535XMRkTWUW0l_Qsu6SsDy3B6EC7hwbrxHDawwqUfksM00apPirf68hOaR6GHxO55ftymdgIwaFv5I_Td8kcg86mJXEhPm99P_JQiU)

![img](https://lh6.googleusercontent.com/j5Hr2sHyi2kYBl8etKWh6BrAnXMnje9fcTYSGT-kKCMkHoH6kaq5HabTrq8XX6QvuqvN2Ig9oAfQWAAR5pgDOvI7sLS3-BwdKzZZDHLnFsLkTLjCDf1_6xM-x9ulurD93r1MXjg)

![img](https://lh6.googleusercontent.com/dvdji0IF4EdSG3vg4sksxlavYkmcSs2Z8b75PpU_BueKgMR4jGM0BhwIZ4Uh0lcMrohvym5a0yFNxJSOuMou9qrRVaiwwiWObyu4o2jq9Q27bZxD59BkP_asKAEMiDQZgwbF8dc)