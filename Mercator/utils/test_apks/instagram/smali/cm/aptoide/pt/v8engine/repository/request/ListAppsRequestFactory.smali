.class Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;
.super Ljava/lang/Object;
.source "ListAppsRequestFactory.java"


# instance fields
.field private final accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final storeCredentialsProvider:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 26
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/interfaces/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;

    .line 28
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newListAppsRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;->fromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->accessToken:Lcm/aptoide/pt/interfaces/AccessToken;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AccessToken;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 32
    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {p1, v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    move-result-object v0

    return-object v0
.end method
