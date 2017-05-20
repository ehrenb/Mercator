.class abstract Lcm/aptoide/accountmanager/ws/v3accountManager;
.super Lcm/aptoide/pt/networkclient/WebService;
.source "v3accountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/networkclient/WebService",
        "<",
        "Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

.field private accessTokenRetry:Z

.field protected final map:Lcm/aptoide/accountmanager/ws/BaseBody;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    const-class v0, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    new-instance v1, Lcm/aptoide/accountmanager/ws/v3accountManager$1;

    invoke-direct {v1}, Lcm/aptoide/accountmanager/ws/v3accountManager$1;-><init>()V

    invoke-static {v1, v4}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 54
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v2

    const-string v3, "https://webservices.aptoide.com/webservices/"

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 46
    const-string v0, "invalid_token"

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 47
    iput-boolean v4, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->accessTokenRetry:Z

    .line 58
    new-instance v0, Lcm/aptoide/accountmanager/ws/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/BaseBody;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    .line 59
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v1

    const-string v2, "https://webservices.aptoide.com/webservices/"

    invoke-direct {p0, v0, p1, v1, v2}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 46
    const-string v0, "invalid_token"

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->accessTokenRetry:Z

    .line 67
    new-instance v0, Lcm/aptoide/accountmanager/ws/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/BaseBody;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    .line 68
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    const-string v1, "https://webservices.aptoide.com/webservices/"

    invoke-direct {p0, v0, p1, p2, v1}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 46
    const-string v0, "invalid_token"

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->accessTokenRetry:Z

    .line 75
    new-instance v0, Lcm/aptoide/accountmanager/ws/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/BaseBody;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    .line 76
    return-void
.end method


# virtual methods
.method public getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    return-object v0
.end method

.method synthetic lambda$null$0(ZLjava/lang/String;)Lrx/d;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    invoke-virtual {v0, p2}, Lcm/aptoide/accountmanager/ws/BaseBody;->setAccess_token(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    .line 99
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$observe$1(ZLjava/lang/Throwable;)Lrx/d;
    .locals 5

    .prologue
    .line 83
    instance-of v1, p2, Lretrofit2/adapter/rxjava/HttpException;

    if-eqz v1, :cond_2

    .line 86
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->converterFactory:Lretrofit2/Converter$Factory;

    const-class v2, Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lretrofit2/adapter/rxjava/HttpException;

    move-object v1, v0

    .line 89
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-interface {v2, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;

    .line 91
    const-string v2, "invalid_token"

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-boolean v1, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->accessTokenRetry:Z

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcm/aptoide/accountmanager/ws/v3accountManager;->accessTokenRetry:Z

    .line 95
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->invalidateAccessToken(Landroid/content/Context;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager$$Lambda$4;->lambdaFactory$(Lcm/aptoide/accountmanager/ws/v3accountManager;Z)Lrx/b/e;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 102
    :cond_0
    new-instance v1, Landroid/accounts/NetworkErrorException;

    invoke-direct {v1}, Landroid/accounts/NetworkErrorException;-><init>()V

    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v2, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;

    invoke-direct {v2, p2}, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;-><init>(Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {v2, v1}, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;->setBaseResponse(Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;)Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    :cond_2
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v1

    goto :goto_0
.end method

.method public observe(Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcm/aptoide/pt/networkclient/WebService;->observe(Z)Lrx/d;

    move-result-object v0

    .line 80
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 81
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/ws/v3accountManager;Z)Lrx/b/e;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 114
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
