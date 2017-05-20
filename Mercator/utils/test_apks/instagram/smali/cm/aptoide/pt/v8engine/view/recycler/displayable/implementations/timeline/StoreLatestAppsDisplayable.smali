.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "StoreLatestAppsDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;
    }
.end annotation


# instance fields
.field private abUrl:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private latestApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;",
            ">;"
        }
    .end annotation
.end field

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private storeName:Ljava/lang/String;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Ljava/util/Date;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;",
            ">;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;",
            "Ljava/util/Date;",
            "Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;",
            "Lcm/aptoide/pt/v8engine/repository/SocialRepository;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    .line 38
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->storeName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->avatarUrl:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->latestApps:Ljava/util/List;

    .line 41
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->abUrl:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 43
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->date:Ljava/util/Date;

    .line 44
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 45
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 46
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;
    .locals 10

    .prologue
    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getApps()Ljava/util/List;

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

    .line 53
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v7, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 62
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;->getLatestUpdate()Ljava/util/Date;

    move-result-object v7

    move-object v1, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Ljava/util/Date;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    return-object v0
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->latestApps:Ljava/util/List;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_store_latest_apps:I

    return v0
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 81
    return-void
.end method
