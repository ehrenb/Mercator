.class Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;
.super Ljava/lang/Object;
.source "ListStoresRequestFactory.java"


# instance fields
.field private final accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 25
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    .line 26
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public listStores(II)Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AccessToken;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 35
    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {p1, p2, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->ofTopStores(IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)V

    return-object v0
.end method

.method public newListStoresRequest(II)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AccessToken;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 30
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {p1, p2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->ofTopStores(IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    return-object v0
.end method

.method public newListStoresRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AccessToken;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 40
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;->ofAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    return-object v0
.end method
