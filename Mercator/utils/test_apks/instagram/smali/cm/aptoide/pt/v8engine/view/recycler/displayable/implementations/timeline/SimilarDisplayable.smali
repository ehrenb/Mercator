.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "SimilarDisplayable.java"


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

.field private similarAppsPackageNames:Ljava/util/List;
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

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Similar;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/Similar;",
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
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->avatarResource:I

    .line 60
    iput p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->titleResource:I

    .line 61
    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appId:J

    .line 62
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->packageName:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appName:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appIcon:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->abUrl:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    .line 67
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsPackageNames:Ljava/util/List;

    .line 68
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->date:Ljava/util/Date;

    .line 69
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->timestamp:Ljava/util/Date;

    .line 70
    move-object/from16 v0, p14

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 71
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 72
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 73
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 74
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/Similar;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 18

    .prologue
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getSimilarApps()Ljava/util/List;

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

    .line 82
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    const/4 v9, 0x0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 94
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getUpdated()Ljava/util/Date;

    move-result-object v12

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/Similar;->getTimestamp()Ljava/util/Date;

    move-result-object v13

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v0 .. v17}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/Similar;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v0
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 135
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 136
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarResource()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->avatarResource:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimilarAppsText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_similar_to:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v5

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 118
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 119
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 123
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_similar_and:I

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsNames:Ljava/util/List;

    .line 130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v3, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarToAppPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->similarAppsPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getStyledTitle(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_recommends_title:I

    .line 106
    invoke-static {p1, v3}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 105
    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceRecommendation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->titleResource:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleResource()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->titleResource:I

    return v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_similar:I

    return v0
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 164
    return-void
.end method
