.class public Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "SetStoreRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"


# instance fields
.field private final multipartBody:Lokhttp3/MultipartBody$Part;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/OkHttpClient;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p4, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->multipartBody:Lokhttp3/MultipartBody$Part;

    .line 35
    return-void
.end method

.method private static getBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x2

    .line 55
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 57
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    return-object v0
.end method

.method static synthetic lambda$getBuilder$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;
    .locals 7

    .prologue
    .line 39
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;

    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v2, "multipart/form-data"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 47
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 49
    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    const-string v5, "https://ws75-primary.aptoide.com/api/7/"

    const-string v6, "store_avatar"

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    .line 51
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-direct {v4, v0, v5, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/OkHttpClient;)V

    return-object v4
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;J)Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;
    .locals 11

    .prologue
    .line 66
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;

    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;J)V

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v2, "multipart/form-data"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 74
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 76
    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    const-string v5, "https://ws75-primary.aptoide.com/api/7/"

    const-string v6, "store_avatar"

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    .line 78
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-direct {v4, v0, v5, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/OkHttpClient;)V

    return-object v4
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getMultipartBody()Lokhttp3/MultipartBody$Part;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getMultipartBody()Lokhttp3/MultipartBody$Part;

    move-result-object v0

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getMultipartBody()Lokhttp3/MultipartBody$Part;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->multipartBody:Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getMultipartBody()Lokhttp3/MultipartBody$Part;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->multipartBody:Lokhttp3/MultipartBody$Part;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->get()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->editStore(Lokhttp3/MultipartBody$Part;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetStoreRequest(multipartBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->getMultipartBody()Lokhttp3/MultipartBody$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
