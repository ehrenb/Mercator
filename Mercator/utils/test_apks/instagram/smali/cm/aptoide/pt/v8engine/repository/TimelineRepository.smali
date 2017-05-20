.class public Lcm/aptoide/pt/v8engine/repository/TimelineRepository;
.super Ljava/lang/Object;
.source "TimelineRepository.java"


# instance fields
.field private final action:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final filter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->action:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->filter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;

    .line 37
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 39
    return-void
.end method

.method private getTimelineCardDatalist(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineItem",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;)",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcm/aptoide/pt/model/v7/Datalist;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/Datalist;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setCount(I)V

    .line 69
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setOffset(I)V

    .line 70
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setTotal(I)V

    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setHidden(I)V

    .line 72
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setLoaded(Z)V

    .line 73
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setLimit(Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setNext(I)V

    .line 75
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/model/v7/Datalist;->setList(Ljava/util/List;)V

    .line 76
    return-object v0
.end method

.method private getTimelineList(Lcm/aptoide/pt/model/v7/Datalist;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineItem",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineItem",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getTimelineCards$1(Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTimelineCards(Ljava/lang/Integer;ILjava/util/List;Z)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->action:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 43
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->of(Ljava/lang/String;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)Lrx/b/b;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)Lrx/b/e;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineStats(Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/TimelineStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 81
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;->of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getTimelineCards$0(Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->filter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->clear()V

    return-void
.end method

.method synthetic lambda$getTimelineCards$4(Lcm/aptoide/pt/model/v7/Datalist;)Lrx/d;
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->getTimelineList(Lcm/aptoide/pt/model/v7/Datalist;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;)Lrx/b/e;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineRepository;Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$2(Lcm/aptoide/pt/model/v7/timeline/TimelineItem;)Lrx/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->filter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->filter(Lcm/aptoide/pt/model/v7/timeline/TimelineItem;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->getTimelineCardDatalist(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    return-object v0
.end method
