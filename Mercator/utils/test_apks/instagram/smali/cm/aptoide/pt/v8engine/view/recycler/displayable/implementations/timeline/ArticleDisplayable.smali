.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "ArticleDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private appId:J

.field private articleTitle:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private cardId:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private developerLink:Lcm/aptoide/pt/v8engine/link/Link;

.field private link:Lcm/aptoide/pt/v8engine/link/Link;

.field private relatedToAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;"
        }
    .end annotation
.end field

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private thumbnailUrl:Ljava/lang/String;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Article;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/Article;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/link/Link;",
            "Lcm/aptoide/pt/v8engine/link/Link;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;",
            "Ljava/util/Date;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;",
            "Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;",
            "Lcm/aptoide/pt/v8engine/repository/SocialRepository;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    .line 59
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->cardId:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->articleTitle:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

    .line 62
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->developerLink:Lcm/aptoide/pt/v8engine/link/Link;

    .line 63
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->title:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->thumbnailUrl:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->avatarUrl:Ljava/lang/String;

    .line 66
    iput-wide p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->appId:J

    .line 67
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->abUrl:Ljava/lang/String;

    .line 68
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    .line 69
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->date:Ljava/util/Date;

    .line 70
    iput-object p14, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 71
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 72
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 73
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 74
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/Article;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;
    .locals 21

    .prologue
    .line 79
    const-wide/16 v12, 0x0

    .line 85
    const/4 v14, 0x0

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 93
    :cond_0
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getCardId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v7

    const/4 v2, 0x3

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v8

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getName()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getLogoUrl()Ljava/lang/String;

    move-result-object v11

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getApps()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Article;->getDate()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v4, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v3 .. v20}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/Article;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v3
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppRelatedToText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_related_to:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 133
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 134
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 127
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    .line 126
    invoke-virtual {v0, v1, v3, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->developerLink:Lcm/aptoide/pt/v8engine/link/Link;

    return-object v0
.end method

.method public getLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

    return-object v0
.end method

.method public getRelatedToApplication()Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get([Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 118
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_1
.end method

.method public getRelatedToAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_article:I

    return v0
.end method

.method public sendOpenArticleEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 147
    return-void
.end method
