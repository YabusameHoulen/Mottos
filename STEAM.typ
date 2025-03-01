#import "@preview/numbly:0.1.0": numbly
#import "theme.typ": *

#set text(font: ("Times New Roman", "微軟正黑體"))
#let quoteblock(attribution, inset: 20pt, outset: 10pt, body) = rect(
  fill: luma(95%),
  stroke: 0.5pt,
  inset: inset,
  outset: outset,
  width: 100%,
  {
    set quote(block: true)
    quote(attribution: attribution)[
      #set align(horizon)
      #body
    ]
  },
)
#show: metropolis-theme.with(
  aspect-ratio: "16-9",

  footer: self => self.info.institution,

  config-common(),


  config-info(
    title: [STEAM Motto Collections],
    subtitle: [The Wisdom Quotes I Appreciate],
    author: [岡崎夢美教授],
    date: datetime.today(),
    institution: [東雲研究所],
    logo: emoji.crystal,
  ),
)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

= #emoji.telescope Science #emoji.planet

== #emoji.cat Physics
#slide()[
  #quoteblock([Jules Henri Poincaré 《科學與方法》])[
    科學家不是因為有用才研究自然的。他們研究自然出於喜愛，他們喜愛是因為它美，假若大自然不是美的，則它的知識不值得追求，而人生也不值得過了...
  ]
  #v(2em)
  #quoteblock([Jules Henri Poincaré 《科學與方法》])[
    我指的是根源於自然各部分的和諧秩序、純理智能夠把握的內在美...正因為簡潔和浩瀚都是美的，所以我們優先尋求簡潔的事實和浩瀚的事實；所以我們追尋恆星的巨大軌道，用顯微鏡探察奇異的細小，在地質年代中追蹤過去的遺蹟
  ]
]

#slide()[
  #quoteblock([Paul Adrien Maurice Dirac], inset: 10pt)[
    The amount of theoretical ground one has to cover before being able to solve problems of real practical value is rather large, but this circumstance is an inevitable consequence of the fundamental part played by transformation theory and is likely to become more pronounced in the theoretical physics of the future.
  ]
  #v(1em)
  #quoteblock([Steven Weinberg])[
    The effort to understand the Universe is one of the very few things that lifts human life above the level of farce, and gives it some of the grace of tragedy.
  ]
]

#slide()[
  #quoteblock([Subrahmanyan Chandrasekhar _The Mathematical Theory of Black Holes_])[
    The black holes of nature are the most perfect macroscopic objects there are in the universe: the only elements in their construction are our concepts of space and time. And since the general theory of relativity provides only a single unique family of solutions for their descriptions, they are the simplest objects as well.
  ]
  #v(1em)
  #quoteblock([Sydney Coleman])[
    The career of young theoretical physicist consists of treating the harmonic oscillator in ever-increasing levels of abstraction.
  ]
]

#slide()[
  #quoteblock([Johannes Kepler])[
    The squares of the periodic times are to each other as the cubes of the mean distance.
  ]
  #v(1em)
  #quoteblock([Albert Einstain (may be...)], inset: 0pt)[
    Physics (Everything) should be made as simple as possible, but not simpler. \

    It can scarcely be denied that the supreme goal of all theory is to make the irreducible basic elements as simple and as few as possible without having to surrender the adequate representation of a single datum of experience.
  ]
]

= #emoji.computer Techology #emoji.computermouse

== #emoji.pencil Computation
#slide()[
  #quoteblock([John von Neumann])[
    I've developed an obscene interest in computation, and I'll be returning to the United States a better and impure man.
  ]
  #v(1em)
  #quoteblock([Paul Graham (Lisp Hacker)])[
    當我發現自己的程序中用到了設計模式，我就覺得這表明某個地方出錯了。程序的形式應該僅反映它要解決的問題。代碼中任何外加的形式都是一個信號，（至少對我來說）表明我對問題的抽象還不夠深入，也經常提醒我，自己正在動手完成的事情，本應該寫代碼通過宏的自動擴展來完成。
  ]

]

#slide()[
  #quoteblock([Richard Hamming])[
    The purpose of computing is insight, not numbers.
  ]
  #v(1em)
  #quoteblock([Pablo Picasso])[
    Computers are useless. They can only give you answers.
  ]
  #v(1em)
  #quoteblock([Alan Key])[
    The best way to predict the future is to invent it.
  ]
]


#slide()[
  #quoteblock([Donald Knuth])[
    We should forget about small efficiencies, say about 97% of the time: premature optimization is the root of all evil.
  ]
  #v(2em)
  #quoteblock([Rob Pike (Co-Creator of Go)])[
    併發指同時處理多件事。 並行指同時做多件事\
    兩者不同，但有聯繫：
    一個關於結構，一個關於執行 \
    併發用於制定方案，用來解決可能（但未必）並行的問題
  ]
]

#slide()[
  #quoteblock([Brain Harvey and Matthew Wright _Simple Scheme_'s Preface])[
    計算機的教學方法分為兩個流派，可以描述如下：

    + *保守派* 計算機程序已經變得及其巨大而複雜，超過了人類思維所能承載的極限。 因此，計算機科學的教育任務是訓練平庸的程序員，這樣500個人合作便能開發出恰好滿足需求的程序。

    + *激進派* 計算機程序已經變得及其巨大而複雜，超過了人類思維所能承載的極限。 因此，計算機科學的教育任務是教人如何擴展思維，打破常規，學習以更廣博、 更強大和更靈活的方式思考，讓思維超越程序。 編程思想的各個方面在程序中必會得到充分體現。
  ]
]

== #emoji.computer Programming
#focus-slide()[
  #image("Figures/Techology/compiling.png", fit: "stretch", width: 117%, height: 135%)
]

#slide()[
  #quoteblock([Anonymous：Programming Belongs to the People], inset: 15pt)[
    編程屬於人民，而不是在大學和專家圈的大祭司。 因為編程就是力量，在一個民主的世界裡，每個人都必須擁有權力。 他是否使用是他自己的決定，但這種權力必須可訪問和簡單。 這是閱讀和寫作的新能力，當我們的世界進入人工智能和第三次工業革命時代變化時，編程就像石器時代能夠處理長矛一樣，是你在這個世界上的生存技能。
  ]
  #v(1em)
  #quoteblock([Brian W. Kernighan 和 P. J. Plauger 《編程格調》])[
    所有人都知道調試程序的難度是寫程序的兩倍。所以如果你寫程序的時候儘可能地“精明”，那麼未來將如何調試它？
  ]

]

#focus-slide()[
  #columns(gutter: 0pt)[
    #image("Figures/Techology/Python.png", height: 80%)
    #image("Figures/Techology/C++.png", height: 80%)
  ]
]

#slide()[
  #quoteblock([Python 仁慈的獨裁者])[
    不管別人怎麼說或怎麼想，我從未覺得Python受到函數式語言太多的影響。我非常熟悉像C和Algol 68這樣的命令式語言。雖然我把函數定為一等對象，但是並不把Python當作函數式編程語言。\
    The History of Python: Origins of Python's *Functional* Features
  ]
  #v(1em)
  #quoteblock([Guido van Rossum], inset: 10pt)[
    我不希望在道德上有義務為一個Python版本一直添加類型提示。我堅信，類型提示有存在必要，然而很多時候得不償失。用與不用由你自己選擇，這多好..._Type Hints by Guido van Rossum(2015)_ (Youtube Vedio)
  ]
]

#slide()[
  #quoteblock([Bjarne Stroustrup 《C++語言的設計與演化》])[
    抽象類表示接口
  ]
  #v(1em)
  #quoteblock([Alan Runyan])[
    Python 是給法定成年人使用的語言
  ]
  #v(1em)
  #quoteblock([《Python 之禪》])[
    如果存在多種可能，則不要猜測 (程序員討厭驚喜)
  ]
]

#slide()[
  #quoteblock([Alan Perlis])[
    語法糖誘發分號癌
  ]
  #v(1em)
  #quoteblock([Lalo Martins])[
    說起來，Python 就是包裹在一堆語法糖中的字典
  ]
  #v(1em)
  #quoteblock([Esther Nam and Travis Fischer\ "Character Encoding and Unicode in Python"])[
    文本給人類閱讀，字節序列供計算機處理
  ]
]

#slide()[
  #quoteblock([Alan Key])[
    ...我們需要推翻過去，提出一套全新的繼承理論（始終如此。 例如：繼承和實例化混淆了語用（例如分解代碼以節省空間）和語義（例如特化、泛化等）
  ]
  #v(0.5em)
  #quoteblock([Alan Key])[
    有些人對類型系統非常虔誠，作為一名數學家，我喜歡類型系統的想法，但從來沒有人造出一個範圍合理的類型系統！
  ]
  #v(0.5em)
  #quoteblock([PEP544 Ivan Levkivskyi], inset: 1pt)[
    類型檢查不是檢查x的類型是不是T，而是判斷x的類型是否與T相容。檢查相容的開銷更大，難怪即便是很短的Python腳本，Mypy也要用幾秒鐘才完成類型檢查
  ]
]

#slide()[
  #quoteblock([Larry Wall], inset: 30pt)[
    *私有屬性的安全性和保障性*: Perl不會強制你保護隱私。你應該呆在客廳外，因為你沒有受到邀請，而不是因為裡面有把槍
  ]
  #v(1em)
  #quoteblock([James Gosling])[
    有些事情讓我不安，比如運算符重載。 我決定不支持運算符重載，這完全是個人選擇，因為我見過太多C++程序員濫用它。
  ]
]

#slide()[
  #quoteblock([Michele Simionato · 深度思考Python的人])[
    抨擊線程的往往是系統開發者，他們考慮的使用場景對一般的應用程序開發者來說，也許一生都不會遇到... 應用程序開發者遇到的使用場景，99%的情況下只需知道如何派生一堆獨立的線程，然後用隊列收集結果
  ]
  #v(2em)
  #quoteblock([Alvaro Videla 和 Jason J. W W. Williams \ 《RabbitMQ實戰：高效部署分佈式消息隊列》 ])[
    常規異步編程解決方案有一種“不成功便成仁”式的傲骨俠風，這就是問題所在：你孤注一擲重寫代碼，要麼徹底避免阻塞，要麼純屬浪費時間...
  ]
]

#slide()[
  #quoteblock([Alan Key _the Early History of Smalltalk_])[
    *想想哪些類是真正需要的* \ 起初我們推動繼承思想是為了讓新手順利使用只能由專家設計的框架開發作品
  ]
  #v(1em)
  #quoteblock([Hynek Schlawack \ Subclassing in Python Redux])[
    至於可讀性，適當的組合比繼承要好。由於讀代碼的頻率比寫代碼要高很多，因此一般情況下要避免使用子類，特別是不要混合多種類型的繼承，也不要使用繼承來共享代碼
  ]
]

#slide()[
  #quoteblock([Alan Martelli])[
    不要通過*叫聲、 走路姿勢*等像不像鴨子來判斷它*是不是*鴨子，具體檢查什麼取決於你想使用語言的哪些行為。
  ]
  #v(1em)
  #quoteblock([Martin Fowler and Kent Beck 《重構：改善既有代碼的設計》])[
    *數據類就像小孩子*。 作為起點很好，但若要讓它們像成熟的對象那樣參與整個系統的工作，它們就必須承擔一定責任。
  ]
]

#slide()[
  #quoteblock([])[
    *大鵝類型*指的是，只要`cls`是抽象基類（元類為abc.ABCMeta），就可以使用`isinstance(obj, cls)`
    #strong[#text(fill:red)[不要]]在生產代碼中定義抽象基類（或元類）
  ]
  #v(2em)
  #quoteblock([Raymond Hettinger \ Python 專家])[
    學會描述符後，不僅有更多的工具集可用，還能對Python的運作方式有更深入的理解，不得不由衷讚歎Python設計的優雅
  ]
  #quoteblock([Raymond Hettinger \ 雄辯的Python佈道者])[
    最終，上下文管理器可能幾乎與子程序（subroutine）自身一樣重要。 目前我們只要瞭解上下文管理器的皮毛......Basic等很多語言都有with語句。 但是，在各種語言中with語句的作用不同，而且做的都是簡單的事，雖然可以避免不斷使用點號查找屬性，但是不會做事前準備和事後清理。 不要覺得名字一樣，就意味著作用也一樣。 with語句是非常了不起的功能。
  ]
]

#slide()[
  #quoteblock([Martelli, Ravenscroft and Holden\ “特性的重要性”])[
    特性之所以重要，是因為它的存在使得開發者可以非常安全並且確定可行地將公共數據屬性作為類的公共接口的一部分開放出來
  ]
  #v(2em)
  #quoteblock([Python 垃圾回收])[
    垃圾回收可以延緩實現，或者完全不實現------如何實現垃圾回收是實現的質量問題，只要不把依然可訪問的對象給回收了就行。
  ]
]

#slide()[
  #quoteblock([源自古老的中國諺語])[
    要構建符合Python風格的對象，就要觀察真正的Python對象的行為
  ]
  #v(2em)
  #quoteblock([The Jargon File: Guido van Rossum])[
    你可能想象不到，除了Python之外，Guido還有一個代表性作品：一件時間機器。 人們聲稱Guido有這樣一臺設備，因為急躁的用戶經常請求增加新功能，而得到的答覆往往是“我昨晚剛剛實現了......”
  ]
]


#focus-slide(config: config-page(fill: rgb(23, 25, 29)))[
  #image("Figures/Techology/Big_Julia.png")
]

#slide()[
  #quoteblock([Karpinski])[
    That's everybody's favorite question. There's no good reason, really. \
    It just seemed like a pretty name.
  ]
  #v(1em)
  #quoteblock([Jeff Bezanson])[
    Maybe julia stands for “Jeff’s uncommon lisp is automated”?
  ]
]

#slide()[
  #quoteblock([Joel Spolsky _Strong Typing v.s. Strong Testing_], inset: 0pt)[
    如果一個Python程序有足夠的單元測試，它就可以像C、Java或C\#程序一樣穩健
  ]
  #v(2em)
  #quoteblock([Grant Peterson 《單車手冊：放在口袋裡的單車實用指南》], inset: 30pt)[
    *行動起來*

    忘掉可望不可及的超輕單車，忘掉華麗的運動衫，忘掉在小踏板上厚實的鞋子，忘掉無盡里程的磨練。 像小時候那樣騎車吧，只有跨上單車你才能感受到騎行的真正樂趣。
  ]
]

= #emoji.train Engineering #emoji.airplane

#slide()[
  #quoteblock([Josh Tenenbaum NearIPS 2021])[
    Intelligence is not just about pattern recognition and function approximation. \ It's about modeling the world.
  ]
]


= #emoji.cherries Art #emoji.lipstick

#focus-slide(config: config-page(fill: rgb(255, 255, 255)))[
  #place(
    top + center,
    text(fill: blue)[_You must unlearn what you have learned_],
  )
  #place(
    center + bottom,
    dy: 60pt,
    image("Figures/Art/roxy2.png"),
  )

]

#slide()[

  #quoteblock([《愛麗絲鏡中奇遇記》], inset: 30pt)[
    “你不開心，” 白騎士用一種憂慮的聲調說，“讓我給你唱首歌安慰你吧......這首歌的名字叫做《黑線鱈的眼睛》。 ”

    “哦，那是一首歌的曲名，是嗎？” 愛麗絲問到，她試著使自己感到有興趣。

    “不，你不明白，” 白騎士說，看起來有些心煩的樣子，“那是*人家這麼叫*的曲名”。 真正的曲名是《老而又老的老頭兒》
  ]
]

#slide()[
  #quoteblock([Friedrich Nietzsche, Aphorism 146, _Beyond Good and Evil(tr. M. Faber)_], inset: 0pt)[
    Anyone who fights with monsters should take care that he does not in the process become a monster. And if you gaze for long into the abyess, the abyess gazes back into you.
  ]

]

#focus-slide(config: config-page(fill: rgb(0, 0, 0)))[

  #image("Figures/Art/roxy.jpg", fit: "stretch", height: 135%, width: 117%)
]


#focus-slide(config: config-page(fill: rgb(0, 0, 0)))[

  #image("Figures/Art/cover.jpg", fit: "stretch", height: 135%, width: 117%)
]


= #emoji.church Math #emoji.books #emoji.bookmark
#slide()[
  #quoteblock([Pierre-Simon, Marquis de Laplace])[
    Probability theory is nothing but common sense reduced to calculation.
  ]
  #v(1em)
  #quoteblock([Jerry Friedman])[
    (If the statistics field had) incorporated computing methodology from its insception as a fundamental tool, as opposed to simply a convenient way to apply our existing tools, many of the other data related fields (such as ML) would not have needed to exist --- they would have been part of statistics.
  ]
]


#slide()[
  #quoteblock([Richard Elwes], inset: 10pt)[
    _The Classification of Quasithin Groups (Aschbacher and Smith 2004)_ Undoubtedly one of the most extraordinary theorems that pure mathematics has ever seen.
  ]
  The Monster Group, the largest sporadic simple group in finite group theory. It acts on 196833 dimensions over the complex numbers, but on 196882 over a finite field with 2 elements.
  #quoteblock([Richard Borcherds], inset: 0pt)[
    The monster simple group...appears to be rely on numerous bizarre coincidences to exist.
  ]
  String Theory, Sporadic Groups and Moonshine.
  #quoteblock([John Conway], inset: 0pt)[
    Nothing has given me the feeling that I understand why the monster is there. *Moonshine !* series expansion relative to Modular Form of weight 196884.
  ]

]

#slide()[
  #quoteblock([John von Neumann], inset: 10pt)[
    If people do not believe that mathematics is simple, it is only because they do not realize how complicated life is.
  ]
  #v(2em)
  #quoteblock([Hermann Weyl], inset: 0pt)[
    In this drama of mathematics and physics --- which fertilize each other in the dark, but which prefer to deny and misconstrue each other face to face --- I cannot, however, resist playing the role of a messenger, albeit, as I have abundantly learned, often an unwelcome one. (in Hassani's book _Mathematical Physics A Modern Introduction to Its Foundations_)
  ]

]


#slide()[
  #quoteblock([Blaise Pascal, paraphrased], inset: 0pt)[
    I am writing a long book than usual because there is not enough time to write a short one.
  ]
  #v(1em)
  #quoteblock(
    [Michel Talagrand _What is Quantum Field theory_ \ Comments of how a young physicist get trained],
    inset: 4pt,
  )[
    To a mathematician's eye, some physics textbooks are chock-full of somewhat imprecise statesments made about rather ill-defined quantities. It is not rare that those statesments are simply untrue if taken at face value. Moreover arguments full of implicit assumptions are presented in the most authoritative manner.
  ]
]

#slide()[
  #quoteblock([Richard Feynman], inset: 10pt)[
    If all mathematics were to disappear, physics would be set back exactly one week.
  ]
  #v(1em)
  #quoteblock([Michael Atiyah], inset: 10pt)[
    That was the week that God created the universe.
  ]
]
