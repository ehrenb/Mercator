.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;
.source "MyStoresSubscribedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment",
        "<",
        "Lcm/aptoide/pt/model/v7/store/ListStores;",
        ">;"
    }
.end annotation


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;-><init>()V

    .line 37
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 39
    return-void
.end method

.method private getStoresDisplayable(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment$$Lambda$3;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 75
    if-eqz v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->layout:Lcm/aptoide/pt/model/v7/Layout;

    sget-object v3, Lcm/aptoide/pt/model/v7/Layout;->LIST:Lcm/aptoide/pt/model/v7/Layout;

    if-ne v0, v3, :cond_2

    .line 77
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_2
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    return-object v2
.end method

.method static synthetic lambda$getStoresDisplayable$4(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/store/Store;)I
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$null$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected buildAction()Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/b",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;)Lrx/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequest(ZLjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            "+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .line 44
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 45
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 44
    invoke-static {p2, v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method protected getErrorRequestListener()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildAction$0(Lcm/aptoide/pt/model/v7/store/ListStores;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->getStoresDisplayable(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->addDisplayables(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$getErrorRequestListener$3(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 58
    const-string v1, "AUTH-5"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->shouldAddObjectView(Ljava/util/List;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->loadLocalSubscribedStores(Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 61
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->finishLoading(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$null$1(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->getStoresDisplayable(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;->addDisplayables(Ljava/util/List;)V

    return-void
.end method
