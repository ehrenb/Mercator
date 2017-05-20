.class public Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;
.super Ljava/lang/Object;
.source "GetStoreMetaRequestFactory.java"


# instance fields
.field private final accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final storeCredentialsFromStoreName:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 27
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    .line 28
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->storeCredentialsFromStoreName:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;

    .line 29
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private newGetStoreMetaRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->storeCredentialsFromStoreName:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;->get(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AccessToken;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreMetaRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 33
    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    return-object v0
.end method
