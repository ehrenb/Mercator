.class public Lcom/seatgeek/sixpack/g;
.super Ljava/lang/Object;
.source "Sixpack.java"


# static fields
.field public static final DEFAULT_LOG_LEVEL:Lcom/seatgeek/sixpack/a/b;

.field public static final DEFAULT_URL:Lokhttp3/HttpUrl;

.field public static final NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final NAME_REGEX:Ljava/lang/String; = "^[a-z0-9][a-z0-9\\-_ ]*$"

.field public static final SIXPACK_LOG_TAG:Ljava/lang/String; = "Sixpack"


# instance fields
.field private final api:Lcom/seatgeek/sixpack/SixpackApi;

.field private final clientId:Ljava/lang/String;

.field private logLevel:Lcom/seatgeek/sixpack/a/b;

.field private logger:Lcom/seatgeek/sixpack/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "http://localhost:5000/"

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    sput-object v0, Lcom/seatgeek/sixpack/g;->DEFAULT_URL:Lokhttp3/HttpUrl;

    .line 41
    const-string v0, "^[a-z0-9][a-z0-9\\-_ ]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/seatgeek/sixpack/g;->NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    sget-object v0, Lcom/seatgeek/sixpack/a/b;->NONE:Lcom/seatgeek/sixpack/a/b;

    sput-object v0, Lcom/seatgeek/sixpack/g;->DEFAULT_LOG_LEVEL:Lcom/seatgeek/sixpack/a/b;

    return-void
.end method

.method constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/seatgeek/sixpack/g;->DEFAULT_LOG_LEVEL:Lcom/seatgeek/sixpack/a/b;

    iput-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    .line 56
    sget-object v0, Lcom/seatgeek/sixpack/a/e;->INSTANCE:Lcom/seatgeek/sixpack/a/e;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/e;->a()Lcom/seatgeek/sixpack/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    .line 60
    iput-object p2, p0, Lcom/seatgeek/sixpack/g;->clientId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-static {p1, p2, v0, p3}, Lcom/seatgeek/sixpack/g;->a(Lokhttp3/HttpUrl;Ljava/lang/String;Lcom/seatgeek/sixpack/a/b;Lokhttp3/OkHttpClient;)Lcom/seatgeek/sixpack/SixpackApi;

    move-result-object v0

    iput-object v0, p0, Lcom/seatgeek/sixpack/g;->api:Lcom/seatgeek/sixpack/SixpackApi;

    .line 62
    return-void
.end method

.method static a(Lokhttp3/HttpUrl;Ljava/lang/String;Lcom/seatgeek/sixpack/a/b;Lokhttp3/OkHttpClient;)Lcom/seatgeek/sixpack/SixpackApi;
    .locals 4

    .prologue
    .line 208
    invoke-static {p0}, Lcom/seatgeek/sixpack/g;->a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 211
    if-nez p3, :cond_0

    .line 212
    invoke-static {}, Lcom/seatgeek/sixpack/g;->c()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 217
    :cond_0
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/seatgeek/sixpack/a/a;

    sget-object v3, Lcom/seatgeek/sixpack/a/e;->INSTANCE:Lcom/seatgeek/sixpack/a/e;

    invoke-virtual {v3}, Lcom/seatgeek/sixpack/a/e;->a()Lcom/seatgeek/sixpack/a/d;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/seatgeek/sixpack/a/a;-><init>(Lcom/seatgeek/sixpack/a/d;)V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 218
    invoke-static {p2}, Lcom/seatgeek/sixpack/g;->b(Lcom/seatgeek/sixpack/a/b;)Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 220
    invoke-static {p1}, Lcom/seatgeek/sixpack/g;->a(Ljava/lang/String;)Lokhttp3/Interceptor;

    move-result-object v2

    .line 222
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 223
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 227
    invoke-static {}, Lcom/seatgeek/sixpack/g;->e()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    .line 229
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 230
    invoke-virtual {v3, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 235
    const-class v1, Lcom/seatgeek/sixpack/SixpackApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/SixpackApi;

    return-object v0
.end method

.method static a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 0

    .prologue
    .line 276
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/seatgeek/sixpack/g;->DEFAULT_URL:Lokhttp3/HttpUrl;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lokhttp3/Interceptor;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/seatgeek/sixpack/g$1;

    invoke-direct {v0, p0}, Lcom/seatgeek/sixpack/g$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/seatgeek/sixpack/c;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 381
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Exception converting Experiment: httpResponseCode=%d, name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 386
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    aput-object v5, v3, v4

    .line 384
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Exception converting Experiment: httpResponseCode=%d, name=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/seatgeek/sixpack/a/b;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 257
    :goto_0
    return-object v0

    .line 252
    :cond_0
    sget-object v0, Lcom/seatgeek/sixpack/a/b;->VERBOSE:Lcom/seatgeek/sixpack/a/b;

    if-ne p0, v0, :cond_1

    .line 253
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    .line 254
    :cond_1
    sget-object v0, Lcom/seatgeek/sixpack/a/b;->DEBUG:Lcom/seatgeek/sixpack/a/b;

    if-ne p0, v0, :cond_2

    .line 255
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    .line 257
    :cond_2
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0
.end method

.method static c()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    return-object v0
.end method

.method private e(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/e;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/seatgeek/sixpack/e;

    invoke-virtual {p1}, Lcom/seatgeek/sixpack/c;->d()Lcom/seatgeek/sixpack/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/seatgeek/sixpack/e;-><init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V

    return-object v0
.end method

.method private static e()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/f;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/seatgeek/sixpack/f;

    invoke-virtual {p1}, Lcom/seatgeek/sixpack/c;->d()Lcom/seatgeek/sixpack/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/seatgeek/sixpack/f;-><init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/seatgeek/sixpack/e;Ljava/lang/String;)Lcom/seatgeek/sixpack/b;
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/seatgeek/sixpack/g;->b(Lcom/seatgeek/sixpack/e;Ljava/lang/String;)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->api:Lcom/seatgeek/sixpack/SixpackApi;

    iget-object v1, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-interface {v0, v1, p2}, Lcom/seatgeek/sixpack/SixpackApi;->convert(Lcom/seatgeek/sixpack/c;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-instance v0, Lcom/seatgeek/sixpack/b;

    iget-object v1, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-direct {v0, p0, v1}, Lcom/seatgeek/sixpack/b;-><init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;)V

    return-object v0

    .line 195
    :cond_0
    iget-object v1, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/c;I)V

    .line 196
    new-instance v0, Lcom/seatgeek/sixpack/ConversionError;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-direct {v0, v1, v2}, Lcom/seatgeek/sixpack/ConversionError;-><init>(Ljava/lang/Throwable;Lcom/seatgeek/sixpack/c;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    :goto_0
    iget-object v1, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-virtual {p0, v1, v0}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/c;Ljava/lang/Exception;)V

    .line 200
    new-instance v1, Lcom/seatgeek/sixpack/ConversionError;

    iget-object v2, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    invoke-direct {v1, v0, v2}, Lcom/seatgeek/sixpack/ConversionError;-><init>(Ljava/lang/Throwable;Lcom/seatgeek/sixpack/c;)V

    throw v1

    .line 198
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a()Lcom/seatgeek/sixpack/d;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/seatgeek/sixpack/d;

    invoke-direct {v0, p0}, Lcom/seatgeek/sixpack/d;-><init>(Lcom/seatgeek/sixpack/g;)V

    return-object v0
.end method

.method a(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/e;
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/seatgeek/sixpack/g;->c(Lcom/seatgeek/sixpack/c;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->api:Lcom/seatgeek/sixpack/SixpackApi;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/seatgeek/sixpack/SixpackApi;->participate(Lcom/seatgeek/sixpack/c;Ljava/util/List;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Lcom/seatgeek/sixpack/e;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/b/c;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/b/c;->a()Lcom/seatgeek/sixpack/a;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/seatgeek/sixpack/e;-><init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V

    move-object v0, v1

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/seatgeek/sixpack/g;->e(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/e;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/c;Ljava/lang/Exception;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/seatgeek/sixpack/g;->e(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/e;

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/seatgeek/sixpack/a/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    .line 100
    return-void
.end method

.method public a(Lcom/seatgeek/sixpack/a/d;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    .line 114
    return-void
.end method

.method a(Lcom/seatgeek/sixpack/c;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 366
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Exception with Experiment: name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    aput-object v5, v3, v4

    .line 369
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-interface {v0, v1, v2, p2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Exception with Experiment: name=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Set;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/seatgeek/sixpack/a;",
            ">;",
            "Lcom/seatgeek/sixpack/a;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Created new Experiment: name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    .line 285
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Created new Experiment: name=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Created new Sixpack client with sixpackUrl=%s, clientId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 313
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Created new Sixpack client"

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/f;
    .locals 6

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/seatgeek/sixpack/g;->d(Lcom/seatgeek/sixpack/c;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->api:Lcom/seatgeek/sixpack/SixpackApi;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    const/4 v1, 0x1

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p1

    .line 161
    invoke-interface/range {v0 .. v5}, Lcom/seatgeek/sixpack/SixpackApi;->participate(Lcom/seatgeek/sixpack/c;Ljava/util/List;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lcom/seatgeek/sixpack/f;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/b/c;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/b/c;->a()Lcom/seatgeek/sixpack/a;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/seatgeek/sixpack/f;-><init>(Lcom/seatgeek/sixpack/g;Lcom/seatgeek/sixpack/c;Lcom/seatgeek/sixpack/a;)V

    move-object v0, v1

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/seatgeek/sixpack/g;->f(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/f;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/seatgeek/sixpack/g;->a(Lcom/seatgeek/sixpack/c;Ljava/lang/Exception;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/seatgeek/sixpack/g;->f(Lcom/seatgeek/sixpack/c;)Lcom/seatgeek/sixpack/f;

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method b(Lcom/seatgeek/sixpack/e;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Converting Experiment: name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s, kpi=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v4, v4, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v4, v4, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v5, v5, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v5, v5, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    .line 355
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Converting Experiment: name=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/e;->baseExperiment:Lcom/seatgeek/sixpack/c;

    iget-object v4, v4, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Warning! Using auto-generated client id of %s. If your client id changes on each instance creation, you won\'t get the same test results"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method c(Lcom/seatgeek/sixpack/c;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Participating in Experiment: name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    aput-object v5, v3, v4

    .line 327
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Participating in Experiment: name=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! Using default Sixpack url of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/seatgeek/sixpack/g;->DEFAULT_URL:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". If your server instance is not set up locally on your machine your requests will fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method d(Lcom/seatgeek/sixpack/c;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 338
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Prefetching Experiment: name=%s, alternatives=%s, forcedChoice=%s, trafficFraction=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->alternatives:Ljava/util/Set;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->forcedChoice:Lcom/seatgeek/sixpack/a;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/seatgeek/sixpack/c;->trafficFraction:Ljava/lang/Double;

    aput-object v5, v3, v4

    .line 341
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logLevel:Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, Lcom/seatgeek/sixpack/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/seatgeek/sixpack/g;->logger:Lcom/seatgeek/sixpack/a/d;

    const-string v1, "Sixpack"

    const-string v2, "Prefetching Experiment: name=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/seatgeek/sixpack/c;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/seatgeek/sixpack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
