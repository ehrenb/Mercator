.class public Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;
.source "SearchPagerTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$BundleCons;
    }
.end annotation


# instance fields
.field private addSubscribedStores:Z

.field private adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private transient endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

.field private hasMultipleFragments:Z

.field private transient listSearchAppsRequest:Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

.field private transient listSearchAppsSuccessRequestListener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<",
            "Lcm/aptoide/pt/model/v7/ListSearchApps;",
            ">;"
        }
    .end annotation
.end field

.field private mapPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private refreshed:Z

.field private searchAbTest:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;",
            ">;"
        }
    .end annotation
.end field

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->refreshed:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->mapPackages:Ljava/util/Map;

    .line 56
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->listSearchAppsSuccessRequestListener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    .line 86
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 88
    return-void
.end method

.method private isConvert(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest",
            "<",
            "Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->hasMultipleFragments:Z

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->alternative()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;->FOLLOWED_STORES:Lcm/aptoide/pt/v8engine/analytics/abtesting/SearchTabOptions;

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-ne p2, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic lambda$load$6(Ljava/lang/Throwable;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$load$7(Lcm/aptoide/pt/database/realm/MinimalAd;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
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

.method static synthetic lambda$null$1(Lcom/seatgeek/sixpack/b;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;-><init>()V

    .line 110
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "addSubscribedStores"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v1, "has_multiple_fragments"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;-><init>()V

    .line 99
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method


# virtual methods
.method public getContentViewId()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_fragment:I

    return v0
.end method

.method synthetic lambda$load$8(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->refreshed:Z

    .line 143
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchAdDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchAdDisplayable;-><init>(Lcm/aptoide/pt/database/realm/MinimalAd;)V

    invoke-virtual {p0, v1, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 144
    return-void
.end method

.method synthetic lambda$new$5(Lcm/aptoide/pt/model/v7/ListSearchApps;)V
    .locals 3

    .prologue
    .line 59
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListSearchApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    .line 64
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addSubscribedStores:Z

    if-eqz v2, :cond_0

    .line 65
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 69
    :cond_0
    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;Ljava/util/LinkedList;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->c(Lrx/b/b;)V

    .line 82
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addDisplayables(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->mapPackages:Ljava/util/Map;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$null$3()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->searchAbTest:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addSubscribedStores:Z

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->isConvert(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->searchAbTest:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;->convert()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 78
    :cond_0
    return-void
.end method

.method synthetic lambda$null$4(Ljava/util/LinkedList;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->mapPackages:Ljava/util/Map;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)Lrx/b/a;

    move-result-object v0

    .line 79
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;

    invoke-direct {v1, p2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;-><init>(Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Lrx/b/a;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->load(ZZLandroid/os/Bundle;)V

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->getInstance()Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    move-result-object v0

    const-string v1, "search-result"

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->searchAbTest:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromSearch(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 140
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)Lrx/b/b;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 146
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->storeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->query:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->storeName:Ljava/lang/String;

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v2

    .line 150
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v4}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    move-result-object v2

    .line 156
    :goto_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    iput-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->listSearchAppsRequest:Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->listSearchAppsSuccessRequestListener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$5;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 159
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 164
    :goto_1
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->query:Ljava/lang/String;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addSubscribedStores:Z

    .line 153
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresIds()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getSubscribedStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v3

    .line 154
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->of(Ljava/lang/String;ZLjava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    goto :goto_1
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->loadExtras(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->query:Ljava/lang/String;

    .line 124
    const-string v0, "storeName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->storeName:Ljava/lang/String;

    .line 125
    const-string v0, "addSubscribedStores"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addSubscribedStores:Z

    .line 126
    const-string v0, "has_multiple_fragments"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->hasMultipleFragments:Z

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    .line 117
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->onCreate(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "query"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "storeName"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "addSubscribedStores"

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->addSubscribedStores:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
