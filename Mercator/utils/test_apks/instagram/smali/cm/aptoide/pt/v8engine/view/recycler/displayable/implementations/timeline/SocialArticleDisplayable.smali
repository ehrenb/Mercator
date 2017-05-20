.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;
.source "SocialArticleDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private appId:J

.field private articleTitle:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private developerLink:Lcm/aptoide/pt/v8engine/link/Link;

.field private link:Lcm/aptoide/pt/v8engine/link/Link;

.field private packageName:Ljava/lang/String;

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

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/SocialArticle;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;JJLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/SocialArticle;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/link/Link;",
            "Lcm/aptoide/pt/v8engine/link/Link;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            "Lcm/aptoide/pt/model/v7/Comment$User;",
            "JJ",
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
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getLikes()Ljava/util/List;

    move-result-object v14

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v15, p18

    move-object/from16 v16, p20

    move-object/from16 v17, p19

    .line 62
    invoke-direct/range {v4 .. v17}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;JJLcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;Lcm/aptoide/pt/model/v7/Comment$User;ZLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V

    .line 65
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->articleTitle:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

    .line 67
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->developerLink:Lcm/aptoide/pt/v8engine/link/Link;

    .line 68
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->title:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->thumbnailUrl:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->avatarUrl:Ljava/lang/String;

    .line 71
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->appId:J

    .line 72
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->abUrl:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 74
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    .line 75
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->date:Ljava/util/Date;

    .line 76
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 77
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 78
    move-object/from16 v0, p21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 79
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 80
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/SocialArticle;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;
    .locals 26

    .prologue
    .line 86
    const-wide/16 v11, 0x0

    .line 92
    const/4 v13, 0x0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 100
    :cond_0
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v6

    const/4 v2, 0x3

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    .line 102
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v7

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getName()Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getLogoUrl()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v15

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v18

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getApps()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;->getDate()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v4, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    invoke-direct/range {v3 .. v25}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/SocialArticle;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;JJLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v3
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppRelatedToText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_related_to:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 146
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 147
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 140
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    .line 139
    invoke-virtual {v0, v1, v3, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->developerLink:Lcm/aptoide/pt/v8engine/link/Link;

    return-object v0
.end method

.method public getLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->packageName:Ljava/lang/String;

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
    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get([Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 127
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
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->relatedToAppsList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_article:I

    return v0
.end method

.method public isGetApp(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->appId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public like(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, p3}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->like(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public sendOpenArticleEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 164
    return-void
.end method
