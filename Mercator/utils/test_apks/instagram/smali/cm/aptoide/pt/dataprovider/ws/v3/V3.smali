.class public abstract Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.super Lcm/aptoide/pt/networkclient/WebService;
.source "V3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/networkclient/WebService",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;",
        "TU;>;"
    }
.end annotation


# static fields
.field protected static final BASE_HOST:Ljava/lang/String; = "https://webservices.aptoide.com/webservices/3/"


# instance fields
.field private final INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

.field private accessTokenRetry:Z

.field protected final map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v1

    .line 58
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->isDebug()Z

    move-result v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 59
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v2

    .line 57
    invoke-direct {p0, v0, v1, v2, p1}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 49
    const-string v0, "invalid_token"

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->INVALID_ACCESS_TOKEN_CODE:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->accessTokenRetry:Z

    .line 60
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    .line 61
    return-void
.end method

.method protected static addNetworkInformation(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-string v1, "simcc"

    invoke-virtual {p1, v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->isSimStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "mcc"

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->getMobileCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "mnc"

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->getMobileNetworkCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "simcc"

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->getSimCountryISO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/ErrorResponse;

    .line 67
    iget-object v0, v0, Lcm/aptoide/pt/model/v3/ErrorResponse;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string v0, "Server failed with empty error list."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    const-string v0, "Server returned null response."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$null$1(ZLjava/lang/String;)Lrx/d;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->setAccess_token(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$observe$2(ZLjava/lang/Throwable;)Lrx/d;
    .locals 5

    .prologue
    .line 95
    instance-of v1, p2, Lretrofit2/adapter/rxjava/HttpException;

    if-eqz v1, :cond_1

    .line 98
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->converterFactory:Lretrofit2/Converter$Factory;

    const-class v2, Lcm/aptoide/pt/dataprovider/ws/v3/GenericResponseV3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v1, v2, v3, v4}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lretrofit2/adapter/rxjava/HttpException;

    move-object v1, v0

    .line 100
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-interface {v2, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v3/GenericResponseV3;

    .line 102
    const-string v2, "invalid_token"

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v3/GenericResponseV3;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-boolean v1, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->accessTokenRetry:Z

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->accessTokenRetry:Z

    .line 106
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->invalidateAccessToken()Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v3/V3;Z)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 112
    :cond_0
    new-instance v2, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV3Exception;

    invoke-direct {v2, p2}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV3Exception;-><init>(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v2, v1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV3Exception;->setBaseResponse(Lcm/aptoide/pt/dataprovider/ws/v3/GenericResponseV3;)Lcm/aptoide/pt/dataprovider/exception/AptoideWsV3Exception;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    :cond_1
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
    .line 94
    invoke-super {p0, p1}, Lcm/aptoide/pt/networkclient/WebService;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v3/V3;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->h(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
