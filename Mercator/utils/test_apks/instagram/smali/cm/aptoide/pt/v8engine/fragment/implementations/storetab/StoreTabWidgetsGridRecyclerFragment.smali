.class public abstract Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;
.source "StoreTabWidgetsGridRecyclerFragment.java"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;-><init>()V

    .line 31
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 33
    return-void
.end method


# virtual methods
.method synthetic lambda$loadGetStoreWidgets$0(Ljava/lang/String;ZLcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/d;
    .locals 8

    .prologue
    .line 38
    .line 39
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentialsFromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v1

    .line 40
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v5

    .line 42
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isMatureSwitchOn()Z

    move-result v7

    move-object v0, p3

    move v2, p2

    .line 38
    invoke-static/range {v0 .. v7}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->loadWidgetNode(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadGetStoreWidgets$1(Lcm/aptoide/pt/model/v7/GetStoreWidgets;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->storeTheme:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->parse(Lcm/aptoide/pt/model/v7/GetStoreWidgets;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadGetStoreWidgets(Lcm/aptoide/pt/model/v7/GetStoreWidgets;ZLjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets;",
            "Z",
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
    .line 37
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p3, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Ljava/lang/String;Z)Lrx/b/e;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Lcm/aptoide/pt/model/v7/GetStoreWidgets;)Lrx/b/e;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    return-object v0
.end method
