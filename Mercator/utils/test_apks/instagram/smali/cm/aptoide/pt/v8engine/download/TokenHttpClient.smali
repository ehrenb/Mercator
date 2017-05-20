.class public Lcm/aptoide/pt/v8engine/download/TokenHttpClient;
.super Ljava/lang/Object;
.source "TokenHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenHttpClient"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final oemid:Ljava/lang/String;

.field private final userData:Lcm/aptoide/pt/actions/UserData;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/interfaces/AptoideClientUUID;Lcm/aptoide/pt/actions/UserData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 39
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->userData:Lcm/aptoide/pt/actions/UserData;

    .line 40
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->oemid:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->addMirrorToDownloadEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private addMirrorToDownloadEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    if-nez p3, :cond_1

    .line 98
    invoke-virtual {v0, p4}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setMirrorApk(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 100
    invoke-virtual {v0, p4}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setMirrorObbMain(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 102
    invoke-virtual {v0, p4}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setMirrorObbPatch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$customMake$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webservices.aptoide.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "application/json"

    .line 51
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"access_token\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 55
    :cond_0
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public customMake()Lokhttp3/OkHttpClient$Builder;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$1;->lambdaFactory$()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;-><init>(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)V

    .line 57
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient$1;-><init>(Lcm/aptoide/pt/v8engine/download/TokenHttpClient;)V

    .line 61
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$customMake$1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->userData:Lcm/aptoide/pt/actions/UserData;

    .line 59
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->getDefaultVername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->oemid:Ljava/lang/String;

    .line 58
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$NetworkUtils;->getDefaultUserAgent(Lcm/aptoide/pt/interfaces/AptoideClientUUID;Lcm/aptoide/pt/actions/UserData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
