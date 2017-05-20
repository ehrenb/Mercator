.class public Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;
.super Ljava/lang/Object;
.source "PostCacheInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final BYPASS_HEADER_KEY:Ljava/lang/String; = "X-Bypass-Cache"

.field public static final BYPASS_HEADER_VALUE:Ljava/lang/String; = "true"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cache:Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/okhttp/cache/Cache",
            "<",
            "Lokhttp3/Request;",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/okhttp/cache/Cache",
            "<",
            "Lokhttp3/Request;",
            "Lokhttp3/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;

    .line 21
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 34
    const-string v2, "X-Bypass-Cache"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Response;

    .line 44
    if-eqz v0, :cond_4

    .line 45
    iget-object v2, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->TAG:Ljava/lang/String;

    const-string v3, "cache hit \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_4
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->TAG:Ljava/lang/String;

    const-string v2, "cache hit but with null result \'%s\'"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_5
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->TAG:Ljava/lang/String;

    const-string v2, "cache miss \'%s\'"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/PostCacheInterceptor;->cache:Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;

    invoke-interface {v2, v1, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
