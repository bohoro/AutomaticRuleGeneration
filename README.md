##Automatic Rule Generation Using Supervised Machine Learning
###Brian O'Horo

Rules based systems are a very popular approach to solving complex business problems.  Rules are flexible and allow the business system to change behavior usually without requiring a new code release.  In addition, rules based systems are typically more interpretable then other modeling approaches such as support vector machines or neural networks.  This interpretability may trump the accuracy gained by black box style machine learning approaches.

Core system rules can be constructed by specialized subject matter experts with deep understanding of the business problem or they can be dynamically constructed by machine learning if historically labeled data exists.  This paper will show you how rules can be automatically created using historical data and R.

For illustration of this approach we will use the popular Iris flower data set.  The Iris flower data set or Fisher's Iris data set is a multivariate data set introduced by Sir Ronald Fisher (1936) as an example of discriminant analysis. It is sometimes called Anderson's Iris data set because Edgar Anderson collected the data to quantify the morphologic variation of Iris flowers of three related species. Two of the three species were collected in the Gaspé Peninsula "all from the same pasture, and picked on the same day and measured at the same time by the same person with the same apparatus".  We will use this data as a proxy for a categorization problem such as the identification of fraud.

See http://rpubs.com/bohoro/AutomaticRuleGeneration for the clean write-up.
