# Introduction

Fictionary is a game where a master player says an obscure word of the dictionary, and the other players have to suggest a fake but believable definition for this word. After this first step, definitions from every player are shared with everyone anonymously, together with the true definition of the obscure word. Players then have to vote for the true definition. The goal is to fool the other players with one's suggestion.

A number of games of this kind have been developed, and such systems outsource the potential answers of a question to the crowd: this approach has been referred to as *crowdsourcing* [@Doan2011]. More generally, crowdsourcing tends to use the crowd in order to solve some difficult problem. In our case, the problem is: detecting good pitfalls (or *distractors*) in trap questions.

In this paper, we show how such existing techniques could be applied to learning environments.

This paper is organized as follows. First, we mention some background results related to multiple-choice and short-answer questions. Then we describe how hand devices can provide innovative interfaces for question answering. Then we expose a theoretical framework, under which the described games fall. We conclude with potential applications that benefit learning.

# Background Results

Designing questions is a costly process. Anyone who creates a multiple-choice question has to figure out answers that are plausible but fake. The probability of guessing the correct answer may be at least $1/n$, where $n$ is the number of proposals [@Davies2002]. In order to reduce this probability, short answers are preferred. But anyone who creates a short-answer question needs to face user input, which may contain careless errors. Thus, they require to specify a rule for accepting answers, for example, edit distance under a certain threshold, or stemming, and so on.

In order to face this problem, @Brooks2014 propose a framework for grading short answers, by clustering the answers from the examinees, and asking a teacher to grade clusters all at once. They managed to reduce the time spent by teachers grading short answers.

@Silvestre2015 has suggested an app where students have to answer multiple-choice questions using their computer in the classroom, specifying extra information such as an explanation, and their level of confidence in their answer. After this first step, another answer is displayed in their screen from another anonymous student who disagrees and is confident in their answer. They have proven that most students change their incorrect answer into a correct answer on this second step.

# Hand devices as inputs

Jackbox Games has edited a few video games, such as Fibbage or Drawful, where smartphones or tablets can be used as controllers. A main screen is visible by everyone while players’ smartphones are only visible by themselves. Players can join the game room using a code on a website, so no extra application besides a browser is needed [@Weisman2008]. Some question appears on the main screen, and each player can provide or select answers secretly using their smartphone.

Fibbage’s concept is similar to Fictioary: hard questions are asked, and each participant has to provide a wrong answer to this question, which is realistic enough to trick other people into thinking that it is a correct answer. The game then mixes all propositions together with the right answer, and broadcasts them to all players. Then, all players have to select the right answer. An example of question is “Anaetidaephobia is the fear that somewhere in the world a _____ is watching you.”. On the first phase, the crowd can give wrong answers, such as “Canadian” or “Sumo Wrestler”. On the second phase, the screen shows all answers, including the right one\footnote{The right answer here is: “Duck”.}, as shown in Figure \ref{fig-fibbage}. The players may then select which answer they think is the right one. The game then rewards participants who answered correctly, but also those whose fake answers given in first phase tricked other people into selecting them.

\begin{figure}
\centering
  \includegraphics[width=0.9\columnwidth]{figures/fibbage}
  \caption{An example of short-answer question from the game Fibbage, together with answers suggested by all players.}~\label{fig-fibbage}
\end{figure}

This concept can be reused in many learning environments. Hand devices, such as smartphones, tablets or laptops, are very widespread nowadays, especially as more and more countries start offering such devices to their students to help with education. This can allow for an interactive learning environment, where the teacher asks questions and each student can give their own answer.

# Theoretical framework

A session of *smart assessment* is composed of questions. Each question is divided into two or three phases:

A first phase, where a question requires an answer from the crowd, possibly with other data such as an explanation or confidence level.
A second phase where data from the first phase is collected and analyzed in order to perform clustering or matching techniques, in order to build an aggregated or personalized question for the crowd, that is submitted to vote.
An optional third phase, where extra feedback over the answers can be collected from the learners.

\paragraph{Fibbage-like system} In Fibbage, questions require a short answer. The first phase harvests potential answers from the crowd. All of them are displayed anonymously in the second phase in order to set all answers on equal footing. The game system also adds the correct answer, together with extra distractors. After the vote, players can like the answers from the other players, which is extra data for crowdsourcing.

\paragraph{Tsaap-Notes [@Silvestre2015]} In Tsaap-Notes, questions are multiple-choice. The first phase harvests answers, explanations and confidence levels from the crowd. The second phase filters answers in order to keep only the ones with strong confidence. Each learner receives then an answer of an anonymous learner with high confidence who disagrees with them. They can vote for their answer, or the other answer. After the vote, learners can rate their favorite explanations for the correct answer.

The main difference lies in the scoring rules. In games such as Fibbage, players get twice as many points if they can fool anyone with their suggested answer. Consequently, it requires metacognition from the learner [@Flavell1979] and provides better pitfalls than if anyone was requested to give the correct directly at the first phase. Also, it would be less fun.

# Potential applications

\paragraph{Short answer questions turned into multiple-choice} The teacher would benefit a lot from this : they only need to give, to the system, each question and the right answer. Moreover, they can see which wrong answers are commonly given by their students, adapting their teaching in consequence. Also, by saving all these answers in a common database, it would be possible to gather a huge set of questions, and wrong but realistic answers, which would allow to transform these questions into smart multiple-choice questions. The costly process of finding good distractors is outsourced to the crowd.

\paragraph{Spelling pitfalls.} We suggest the straightforward application: let us assume we have access to a list of hard-to-spell words from the dictionary. Using a vocal synthesizer, a spelling app could pronounce a word, then learners would have to suggest potential spelling to this word, then vote for the correct one. Analytics would be an interesting way to harvest potential misspellings of these hard-to-spell words.

# Conclusion

In this paper we presented a framework for designing smart assessments, cut into mainly two phases: harvesting potential answers from the crowd, then make the crowd vote for the best answers. We believe it can lead to promising learning applications where specifying traps is costly for the teacher alone, but almost free using the crowd.
