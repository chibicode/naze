---
layout: post
title: The Mario Kart Principle of Education
image_path: "mario-kart/1.jpg"
categories: ["1309-September 2013"]
photo_credit: ["http://tinyurl.com/n29mmnj"]
see_also: ["/teaching-code-hardware-problem"]
---

(Note: this article was originally [posted to Medium](https://medium.com/who-i-am/597e51e988db).)

![](/assets/images/mario-kart/1.jpg)

When I was seven years old, I played [Super Mario Kart](http://en.wikipedia.org/wiki/Super_Mario_Kart) almost every day. The first game of the Mario Kart Series, it was also the first game I’d bought that didn’t have an ending. Mario Kart wasn’t something you beat—you could always continue playing. I played days after days—by myself to finish Mario Circuit 1 in under a minute, or against my little brother on Battle Mode.

But above all, I remember its Grand Prix (GP) Mode most vividly. In GP, you compete against 7 computer-controlled characters (CPU) in a series of five races. For each race, the first player to finish gets 9 points, the second gets 6, the third gets 3, the fourth gets 1, and the rest gets 0. Your goal is to win the most number of points in total.

After playing GP Mode countless times, I noticed a pattern. For any given series of five races, the speed of each CPU is set in advance. The fastest CPU will always be the fastest across all five races. Unless something goes wrong, it will finish first or second. Mediocre CPUs will always stay mediocre. The slowest will always stay slow. Although there are 7 CPUs in each race, you’re actually competing against just the top two. The rest doesn’t matter.

Why the predetermined speed? Answer: to make the game more difficult. Suppose that you finish third every time. And assume that each CPU is equally likely to finish in each of the remaining seven spots. Then:

* Your total score will be 3*5 = **15 points**.
* The expected total score of each CPU will be 5*((9+6+1)/7) = **11.429 points**.
* The expected standard deviation of CPU’s total scores will be **7.626 points**. This is calculated by computing the sum of the squares of the differences between each payout and the expected payout divided by 7, multiplying it by 5, and taking the square root of the result.
* If we assume that CPU’s scores form a normal distribution of μ=11.429 and σ=7.626, **your 15 points will get you the overall first place more than two thirds of the time** (thanks [Wolfram Alpha](http://www.wolframalpha.com/input/?i=Prob+x+%3C+15+if+x+is+a+normal+distribution+sigma%3D7.626+mu%3D11.429)).

I’m not a stats person so don’t take my word for it, but the idea is: *if every CPU has the same speed, merely getting the third place every time is enough to get the first place in total on GP Mode*.

Nintendo thought this was unacceptable. Hence they configured some CPUs to be much faster than others, so that you must constantly finish first or second to become the overall winner.

Inevitably, I got bored of GP Mode. After all, I was only playing against the fastest CPU. But soon, I found a way to make GP Mode much more entertaining—by adding a twist. Let me explain how I did it.

## Introducing a little anarchy

In Mario Kart, you can attack opponents using items. For instance, you can throw a green shell at an opponent, and upon hitting, the opponent slows down for a few seconds.

I used these items to interfere the fast CPUs, giving an opportunity for the slow CPUs to catch up. My goal was to upset the established order by allowing slower CPUs to win. To be more specific, I aimed to minimize the maximum difference in CPUs’ scores, across a given set of five races.

However, it wasn’t so easy. Here’s why: *when passed by the slower ones, the fast CPUs become even faster—by 20% or so. Ridiculous!*

The fast CPUs, despite my effort, would quickly come out on top. So I’d attack them again, and the slow CPUs would pass them timidly. Rinse and repeat until the race ends, and hope that the slower ones win.

It was as if CPUs were literally trying to maintain order. Maybe the algorithm was as simple as: *drive 20% faster whenever my current position isn’t equal to the target final position.*

At any rate, this phenomenon made the gameplay more challenging. I eventually got to the point where the maximum difference in CPUs’ scores was less than 10 points, but it sure took a good few months.

## Fast CPUs get faster when beaten by slow CPUs; humans may get motivated when beaten by someone inferior

Did I bring up this story just to illustrate how strange of a seven year old I was? Yes, to some extent. I even learned how to calculate sample standard deviation, when my peers were learning multiplication tables.

Nonetheless, there’s a deeper lesson I learned from playing Mario Kart in this fashion—the lesson I still try to live by.

As I mentioned before, the fast CPUs try harder when they’re passed by the slow CPUs. But I realized that this behavior also applies to humans.

How? Well, we all get emotional when someone we thought was inferior one-ups us. This is especially true when you and your competitor are both young, and thus you being older is not a disadvantage.

And this emotion, if handled appropriately, can turn into motivation.

For example, back in college, although I was a Computer Science major, I didn’t really know how to code. You could pass classes if you were good at taking tests or picking TAs’ brains.

But as I became an upperclassmen, I noticed a flux of younger students—including the ones I used to TA for—diligently learning to code and landing better internships than mine. Seeing them succeed, I felt the urge to ramp up my game and take coding seriously.

Although I graduated from college a while ago, this *damn-it-must-try-harder* moment still hits me, for instance, whenever I read about fresh-out-of-college-entrepreneurs on TechCrunch.

Anyways, here’s my point: the motivation that arises from being passed by someone you thought was inferior, I believe, can become a key engine for improving education. I’ll talk about this next.

## Help underachievers, and indirectly motivate average-achievers

From a macro point of view, the discussion on education tends to gravitate towards either (1) helping overachievers or (2) helping underachievers. (1) is about leadership education, which is lacking in the education system of Japan, my home country. (2) is about closing achievement gaps, which is the goal of U.S. education reform.

As someone involved in education, I personally prefer to focus on (2) helping underachievers rather than on (1). But I’m not necessarily interested in closing achievement gaps.

Instead, here’s why I want to focus on underachievers. As I touched earlier, I believe that, if underachievers beat average-achievers, average-achievers will become motivated. And if average-achievers become motivated enough to beat overachievers, overachievers will be motivated too. It’s like a viral mechanism for motivation.

Am I too naive? Possibly. But this is what I want to do for the rest of my life. I want to teach underachievers to be better than average-achievers at something—could be anything—and then let every average-achievers in the whole world know about my teaching, using the power of the Internet.

If underachievers perform well, and average-achievers become motivated because of that, I think the world would become a nicer place. Simple and idealistic, but this excites me. It’s like playing Super Mario Kart all over again, except I won’t be shooting green shells at overachievers.

## My girlfriend was an underachiever in terms of coding, but she turned into an average-achiever

As one of my initial attempts to achieve this goal, [I taught my girlfriend to code](/teaching-code-hardware-problem). Without a doubt, I’d have to say that she wasn’t cut out for coding.

I found that people who naturally pick up coding fall under one or more of these categories:

1. People who desire to build a software product
2. People who are proficient in mathematical/logical thinking or have studied creative disciplines—art, music, engineering, etc.
3. People who were forced to learn coding—because of school or work
4. People who immediately fell in love with coding—like love at first sight
My girlfriend didn’t fit in any above the above. She didn’t really want to change the world, studied marketing in college, worked as a sales associate, and was initially reluctant to code. If I didn’t teach her, she probably would have never learned to code on her own. (Of course, there are people who didn’t fit on the above criteria but still achieved mastery in programming, but that’s beside the point here.)

But after three months of intense training, she went from zero to being hired as a front-end engineer/designer at a small company in Tokyo. In other words, she went from an underachiever to arguably more than an average-achiever.

I broadcasted a part of her story through my [previous article](/teaching-code-hardware-problem), which was read by 15,000 visitors. Hopefully, this number included a few average-achievers who needed motivation to learn coding. I’d be thrilled if at least one reader thought, “If she can learn to code, I can, too.”

On a side note, my girlfriend probably wouldn’t have gotten into programs like [Dev Bootcamp](http://devbootcamp.com/) or [The Flatiron School](http://flatironschool.com/), an intensive 9-12 week programming camp which caters to extremely motivated non-technical people (see: ["Become an Ios Developer In 8 Weeks": The Truth About Hack Schools](http://www.fastcompany.com/3023456/become-an-ios-developer-in-8-weeks-the-truth-about-hack-schools). Don’t get me wrong: I think focusing on overachievers is a great idea for programming education. It certainly makes sense from a business model perspective. Graduates of such programs are very intelligent and therefore will be highly desired by employers. The program can justify its priciness, as a consequence.

Here’s my opinion, though: along with these overachiever-focused programs, programming education for underachievers should co-exist. Why? Again, because I believe that a program focused on underachievers will motivate average-achievers, a lot more so than overachiever-focused programs will.
