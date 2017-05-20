.class public abstract Lcm/aptoide/pt/networkclient/WebService;
.super Ljava/lang/Object;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static debug:Z

.field private static defaultConverterFactory:Lretrofit2/Converter$Factory;


# instance fields
.field private final baseHost:Ljava/lang/String;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final converterFactory:Lretrofit2/Converter$Factory;

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    sget-boolean v0, Lcm/aptoide/pt/networkclient/WebService;->debug:Z

    invoke-static {p2, v0}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcm/aptoide/pt/networkclient/WebService;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lokhttp3/OkHttpClient;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcm/aptoide/pt/networkclient/WebService;->httpClient:Lokhttp3/OkHttpClient;

    .line 62
    iput-object p3, p0, Lcm/aptoide/pt/networkclient/WebService;->converterFactory:Lretrofit2/Converter$Factory;

    .line 63
    iput-object p1, p0, Lcm/aptoide/pt/networkclient/WebService;->clazz:Ljava/lang/Class;

    .line 64
    iput-object p4, p0, Lcm/aptoide/pt/networkclient/WebService;->baseHost:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private createService()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/WebService;->httpClient:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcm/aptoide/pt/networkclient/WebService;->converterFactory:Lretrofit2/Converter$Factory;

    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/networkclient/WebService;->baseHost:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcm/aptoide/pt/networkclient/WebService;->getRetrofit(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lretrofit2/CallAdapter$Factory;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/networkclient/WebService;->clazz:Ljava/lang/Class;

    .line 103
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createServiceObservable()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/networkclient/WebService;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private defaultErrorRequestListener()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService$$Lambda$6;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultConverter()Lretrofit2/Converter$Factory;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v0, Lcm/aptoide/pt/networkclient/WebService;->defaultConverterFactory:Lretrofit2/Converter$Factory;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 70
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 71
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 72
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 73
    sget-object v1, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->SNAKE_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 74
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 76
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 78
    invoke-static {v0}, Lretrofit2/converter/jackson/JacksonConverterFactory;->create(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/JacksonConverterFactory;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/networkclient/WebService;->defaultConverterFactory:Lretrofit2/Converter$Factory;

    .line 80
    :cond_0
    sget-object v0, Lcm/aptoide/pt/networkclient/WebService;->defaultConverterFactory:Lretrofit2/Converter$Factory;

    return-object v0
.end method

.method private getRetrofit(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lretrofit2/CallAdapter$Factory;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/WebService;->retrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/networkclient/WebService;->retrofit:Lretrofit2/Retrofit;

    .line 120
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/WebService;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcm/aptoide/pt/networkclient/WebService;->debug:Z

    return v0
.end method

.method static synthetic lambda$defaultErrorRequestListener$3(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 141
    const-class v0, Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Erro por implementar"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    return-void
.end method

.method static synthetic lambda$execute$2(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 134
    invoke-interface {p0, p1}, Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onLoadDataFromNetwork()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method private prepareAndLoad(Ljava/lang/Object;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/WebService;->onLoadDataFromNetwork()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/networkclient/WebService;->loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static setDebug(Z)V
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcm/aptoide/pt/networkclient/WebService;->debug:Z

    return-void
.end method


# virtual methods
.method public execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/networkclient/WebService;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Z)V

    .line 125
    return-void
.end method

.method public execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<TU;>;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcm/aptoide/pt/networkclient/WebService;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 149
    return-void
.end method

.method public execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<TU;>;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p3}, Lcm/aptoide/pt/networkclient/WebService;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/networkclient/WebService$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)Lrx/b/b;

    move-result-object v1

    .line 134
    invoke-virtual {v0, p1, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 135
    return-void
.end method

.method public execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<TU;>;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/WebService;->defaultErrorRequestListener()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcm/aptoide/pt/networkclient/WebService;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 129
    return-void
.end method

.method protected isNoNetworkException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 152
    instance-of v0, p1, Ljava/net/UnknownHostException;

    return v0
.end method

.method synthetic lambda$createServiceObservable$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/WebService;->createService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$observe$0(ZLjava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/networkclient/WebService;->prepareAndLoad(Ljava/lang/Object;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected abstract loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation
.end method

.method public observe()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/networkclient/WebService;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
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
    .line 88
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/WebService;->createServiceObservable()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/networkclient/WebService$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/networkclient/WebService;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 89
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
