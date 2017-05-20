.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;
.source "SocialStoreLatestAppsDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;
    }
.end annotation


# instance fields
.field private abTestingUrl:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private latestApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;",
            ">;"
        }
    .end annotation
.end field

.field private sharedStore:Lcm/aptoide/pt/model/v7/store/Store;

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private storeName:Ljava/lang/String;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;

.field private userSharer:Lcm/aptoide/pt/model/v7/Comment$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>()V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JJLcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;",
            "Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;",
            "Lcm/aptoide/pt/v8engine/repository/SocialRepository;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getOwnerStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v8

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v10

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getMy()Lcm/aptoide/pt/model/v7/timeline/My;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getLikes()Ljava/util/List;

    move-result-object v12

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getDate()Ljava/util/Date;

    move-result-object v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-object/from16 v14, p13

    move-object/from16 v15, p10

    .line 46
    invoke-direct/range {v2 .. v15}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;JJLcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;Lcm/aptoide/pt/model/v7/Comment$User;ZLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V

    .line 50
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->storeName:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->avatarUrl:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->latestApps:Ljava/util/List;

    .line 54
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->abTestingUrl:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 56
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 57
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->sharedStore:Lcm/aptoide/pt/model/v7/store/Store;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 61
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 62
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;
    .locals 14

    .prologue
    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getApps()Ljava/util/List;

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

    .line 69
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v7, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_1
    const-string v2, ""

    .line 81
    const-string v3, ""

    .line 82
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getOwnerStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getOwnerStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getOwnerStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_2
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    .line 89
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getLikes()J

    move-result-wide v6

    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;->getStats()Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/timeline/SocialCardStats;->getComments()J

    move-result-wide v8

    move-object v1, p0

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JJLcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)V

    return-object v0
.end method


# virtual methods
.method public getAbTestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->abTestingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->latestApps:Ljava/util/List;

    return-object v0
.end method

.method public getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->sharedStore:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_store_latest_apps:I

    return v0
.end method

.method public like(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2, p3}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->like(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 114
    return-void
.end method
