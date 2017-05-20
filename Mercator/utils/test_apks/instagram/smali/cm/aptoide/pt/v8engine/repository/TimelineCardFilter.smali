.class public Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;
.super Ljava/lang/Object;
.source "TimelineCardFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;
    }
.end annotation


# instance fields
.field private final duplicateFilter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;

.field private final installedAccessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;Lcm/aptoide/pt/database/accessors/InstalledAccessor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->duplicateFilter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;

    .line 19
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->installedAccessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 20
    return-void
.end method

.method private filterAlreadyDoneUpdates(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ")",
            "Lrx/d",
            "<+",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->installedAccessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lrx/d;->c(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/b/e;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method private filterInstalledRecommendation(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ")",
            "Lrx/d",
            "<+",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->installedAccessor:Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    .line 37
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/Recommendation;->getRecommendedApp()Lcm/aptoide/pt/model/v7/listapp/App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->isInstalled(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/b/e;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$filter$0(Lcm/aptoide/pt/model/v7/timeline/TimelineItem;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 27
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$filter$1(Lcm/aptoide/pt/model/v7/timeline/TimelineItem;)Lcm/aptoide/pt/model/v7/timeline/TimelineCard;
    .locals 1

    .prologue
    .line 28
    invoke-interface {p0}, Lcm/aptoide/pt/model/v7/timeline/TimelineItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    return-object v0
.end method

.method static synthetic lambda$filterAlreadyDoneUpdates$5(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Lcm/aptoide/pt/database/realm/Installed;)Lrx/d;
    .locals 2

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v1

    move-object v0, p0

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getVercode()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 57
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$filterInstalledRecommendation$4(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Ljava/lang/Boolean;)Lrx/d;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->duplicateFilter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;->clear()V

    .line 24
    return-void
.end method

.method public filter(Lcm/aptoide/pt/model/v7/timeline/TimelineItem;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineItem",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->duplicateFilter:Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;

    .line 28
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;)Lrx/b/e;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;)Lrx/b/e;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$filter$2(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->filterInstalledRecommendation(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$filter$3(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;->filterAlreadyDoneUpdates(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
