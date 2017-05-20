.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "VideoDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private appId:J

.field private avatarUrl:Ljava/lang/String;

.field private baseLink:Lcm/aptoide/pt/v8engine/link/Link;

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

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

.field private videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Video;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/Video;",
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
    .line 55
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    .line 56
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->videoTitle:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

    .line 58
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->baseLink:Lcm/aptoide/pt/v8engine/link/Link;

    .line 59
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->title:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->thumbnailUrl:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->avatarUrl:Ljava/lang/String;

    .line 62
    iput-wide p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->appId:J

    .line 63
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->abUrl:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    .line 65
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->date:Ljava/util/Date;

    .line 66
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 67
    move-object/from16 v0, p14

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 68
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 69
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 70
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/Video;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;
    .locals 19

    .prologue
    .line 75
    const-wide/16 v10, 0x0

    .line 77
    const/4 v12, 0x0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 85
    :cond_0
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v5

    const/4 v3, 0x3

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    .line 87
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;->get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v6

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getName()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getPublisher()Lcm/aptoide/pt/model/v7/timeline/Publisher;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/timeline/Publisher;->getLogoUrl()Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getApps()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Video;->getDate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v3, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v2 .. v18}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/Video;Ljava/lang/String;Lcm/aptoide/pt/v8engine/link/Link;Lcm/aptoide/pt/v8engine/link/Link;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v2
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppRelatedText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_related_to:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 125
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 126
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    .line 118
    invoke-virtual {v0, v1, v3, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->baseLink:Lcm/aptoide/pt/v8engine/link/Link;

    return-object v0
.end method

.method public getLink()Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->link:Lcm/aptoide/pt/v8engine/link/Link;

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
    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get([Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 110
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
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->relatedToAppsList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_video:I

    return v0
.end method

.method public sendOpenVideoEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 139
    return-void
.end method
