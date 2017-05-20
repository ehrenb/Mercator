.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "RecommendationDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private appIcon:Ljava/lang/String;

.field private appId:J

.field private appName:Ljava/lang/String;

.field private avatarResource:I

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private packageName:Ljava/lang/String;

.field private similarAppsNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private similarPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

.field private timestamp:Ljava/util/Date;

.field private titleResource:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Recommendation;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/Recommendation;",
            "IIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
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
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->avatarResource:I

    .line 60
    iput p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->titleResource:I

    .line 61
    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appId:J

    .line 62
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->packageName:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appName:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appIcon:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->abUrl:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    .line 67
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarPackageNames:Ljava/util/List;

    .line 68
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->date:Ljava/util/Date;

    .line 69
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->timestamp:Ljava/util/Date;

    .line 70
    move-object/from16 v0, p14

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 71
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 72
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 73
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 74
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/Recommendation;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 18

    .prologue
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getSimilarApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 83
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    const/4 v9, 0x0

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 95
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v4

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getTimestamp()Ljava/util/Date;

    move-result-object v13

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v0 .. v17}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/Recommendation;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v0
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 144
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 145
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarResource()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->avatarResource:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimilarAppPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimilarAppsText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_similar_to:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    .line 126
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v5

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 127
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 128
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 132
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_similar_and:I

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->similarAppsNames:Ljava/util/List;

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v3, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getStyledTitle(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_recommends_title:I

    .line 108
    invoke-static {p1, v3}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 107
    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceRecommendation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->titleResource:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleResource()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->titleResource:I

    return v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_recommendation:I

    return v0
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 166
    return-void
.end method
