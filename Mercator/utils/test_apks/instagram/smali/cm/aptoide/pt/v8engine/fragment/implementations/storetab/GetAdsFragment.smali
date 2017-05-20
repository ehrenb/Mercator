.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;
.source "GetAdsFragment.java"


# static fields
.field private static final adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDisplayables(ZLjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromHomepageMore()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildDisplayables$0(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 23
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 25
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAdDisplayable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;->tag:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAdDisplayable;-><init>(Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
