.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;
.source "SocialRecommendationDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private appIcon:Ljava/lang/String;

.field private appId:J

.field private appName:Ljava/lang/String;

.field private avatarResource:I

.field private packageName:Ljava/lang/String;

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

.field private titleResource:I

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;ILcm/aptoide/pt/model/v7/store/Store;ILcm/aptoide/pt/model/v7/Comment$User;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V
    .locals 18

    .prologue
    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v12

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getLikes()Ljava/util/List;

    move-result-object v14

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getDate()Ljava/util/Date;

    move-result-object v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-object/from16 v10, p3

    move-object/from16 v16, p17

    move-object/from16 v17, p19

    .line 47
    invoke-direct/range {v4 .. v17}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;JJLcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;Lcm/aptoide/pt/model/v7/Comment$User;ZLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V

    .line 51
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->avatarResource:I

    .line 52
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->titleResource:I

    .line 53
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 54
    move-wide/from16 v0, p6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appId:J

    .line 55
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->packageName:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appName:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appIcon:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->abUrl:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 60
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 61
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 62
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 20

    .prologue
    .line 73
    const/4 v11, 0x0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 81
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    .line 82
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v0 .. v19}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;ILcm/aptoide/pt/model/v7/store/Store;ILcm/aptoide/pt/model/v7/Comment$User;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V

    return-object v0
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 99
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarResource()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->avatarResource:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->titleResource:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 92
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleResource()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->titleResource:I

    return v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation:I

    return v0
.end method

.method public like(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, p3}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->like(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 112
    return-void
.end method
