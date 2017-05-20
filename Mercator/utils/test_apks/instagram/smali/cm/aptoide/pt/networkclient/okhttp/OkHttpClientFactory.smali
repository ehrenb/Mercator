.class public Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;
.super Ljava/lang/Object;
.source "OkHttpClientFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static cache:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

.field private static httpClientInstance:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanInMemoryCache()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    invoke-virtual {v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;->clean()V

    .line 101
    :cond_0
    return-void
.end method

.method public static getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->httpClientInstance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    new-instance v1, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheKeyAlgorithm;

    invoke-direct {v1}, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheKeyAlgorithm;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;-><init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V

    sput-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 62
    new-instance v1, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;

    sget-object v2, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/L2Cache;

    invoke-direct {v1, v2}, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;-><init>(Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 66
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xa00000

    .line 72
    invoke-static {v1, v2, v0, p0}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->newClient(Ljava/io/File;ILjava/util/List;Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->httpClientInstance:Lokhttp3/OkHttpClient;

    .line 74
    :cond_1
    sget-object v0, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->httpClientInstance:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 40
    new-instance v1, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;-><init>(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 44
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 46
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static newClient(Ljava/io/File;ILjava/util/List;Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)Lokhttp3/OkHttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;",
            ")",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x2d

    .line 80
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    new-instance v0, Lokhttp3/Cache;

    int-to-long v2, p1

    invoke-direct {v0, p0, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 89
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/networkclient/okhttp/UserAgentInterceptor;-><init>(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 93
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
