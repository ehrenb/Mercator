.class public abstract Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.super Lcm/aptoide/pt/networkclient/WebService;
.source "V7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "B::",
        "Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;",
        ">",
        "Lcm/aptoide/pt/networkclient/WebService",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final BASE_HOST:Ljava/lang/String; = "https://ws75.aptoide.com/api/7/"


# instance fields
.field private final INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

.field private final MAX_RETRY_COUNT:I

.field private accessTokenRetry:Z

.field protected final body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->getDefaultUserAgentGenerator()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 73
    const-string v0, "AUTH-2"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->MAX_RETRY_COUNT:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    .line 80
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p3}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 73
    const-string v0, "AUTH-2"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->MAX_RETRY_COUNT:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    .line 94
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    .line 95
    return-void
.end method

.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lokhttp3/OkHttpClient;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-direct {p0, v0, p2, p3, p4}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 73
    const-string v0, "AUTH-2"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->MAX_RETRY_COUNT:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    .line 100
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    .line 101
    return-void
.end method

.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->getDefaultUserAgentGenerator()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 73
    const-string v0, "AUTH-2"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->MAX_RETRY_COUNT:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    .line 90
    return-void
.end method

.method private static getDefaultUserAgentGenerator()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v0

    return-object v0
.end method

.method private handleToken(Lrx/d;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TU;>;Z)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Z)Lrx/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDefaultUserAgentGenerator$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$retryOnTicket$1(Ljava/lang/Object;)Lrx/d;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->QUEUED:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-object v0, p0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response;

    .line 112
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcm/aptoide/pt/dataprovider/util/ToRetryThrowable;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/util/ToRetryThrowable;-><init>()V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method private retryOnTicket(Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TU;>;)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)Lrx/b/e;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lrx/d;->j(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    return-object v0
.end method

.method synthetic lambda$handleToken$5(ZLjava/lang/Throwable;)Lrx/d;
    .locals 2

    .prologue
    .line 146
    instance-of v0, p2, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v0, :cond_2

    .line 147
    const-string v1, "AUTH-2"

    move-object v0, p2

    check-cast v0, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    .line 148
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->accessTokenRetry:Z

    .line 152
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->invalidateAccessToken()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Landroid/accounts/NetworkErrorException;

    invoke-direct {v0}, Landroid/accounts/NetworkErrorException;-><init>()V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$null$2(Ljava/lang/Throwable;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 122
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/util/ToRetryThrowable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 123
    return-object v2

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->isNoNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcm/aptoide/pt/dataprovider/exception/NoNetworkConnectionException;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/dataprovider/exception/NoNetworkConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 128
    :cond_1
    instance-of v0, p1, Lretrofit2/adapter/rxjava/HttpException;

    if-eqz v0, :cond_2

    .line 130
    :try_start_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-direct {v1, p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;-><init>(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->converterFactory:Lretrofit2/Converter$Factory;

    const-class v2, Lcm/aptoide/pt/model/v7/BaseV7Response;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-virtual {v0, v2, v3, v4}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v0

    check-cast p1, Lretrofit2/adapter/rxjava/HttpException;

    .line 133
    invoke-virtual {p1}, Lretrofit2/adapter/rxjava/HttpException;->response()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-interface {v0, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response;

    .line 130
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->setBaseResponse(Lcm/aptoide/pt/model/v7/BaseV7Response;)Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic lambda$null$4(ZLjava/lang/String;)Lrx/d;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;->setAccessToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$retryOnTicket$3(Lrx/d;)Lrx/d;
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lrx/d;->a(II)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)Lrx/b/f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lrx/d;->a(Lrx/d;Lrx/b/f;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 141
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public observe(Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcm/aptoide/pt/networkclient/WebService;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->retryOnTicket(Lrx/d;)Lrx/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->handleToken(Lrx/d;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
