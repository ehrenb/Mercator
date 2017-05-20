.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;
.super Ljava/lang/Object;
.source "AccessTokenRequestBodyAdapter.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;


# static fields
.field private static final JSONOBJECT_ERROR:Ljava/lang/String; = "Couldn\'t build store_properties json"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final baseBody:Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

.field private final decorator:Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

.field private storeEdit:Ljava/lang/Boolean;

.field private storeName:Ljava/lang/String;

.field private storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

.field private storeTheme:Ljava/lang/String;

.field private storeid:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeEdit:Ljava/lang/Boolean;

    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->baseBody:Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    .line 33
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->decorator:Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    .line 34
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeName:Ljava/lang/String;

    .line 35
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p5, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 36
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->accessToken:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;J)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeEdit:Ljava/lang/Boolean;

    .line 42
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->baseBody:Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    .line 43
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->decorator:Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    .line 44
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->accessToken:Ljava/lang/String;

    .line 46
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    invoke-direct {v0, p5, p6}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 47
    iput-object p7, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeEdit:Ljava/lang/Boolean;

    .line 48
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeid:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method private createBodyPartFromLong(Ljava/lang/Long;)Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 83
    :cond_0
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method private createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string p1, ""

    .line 90
    :cond_0
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->decorator:Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->baseBody:Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    .line 53
    new-instance v1, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 54
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 55
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 57
    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeEdit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "store_id"

    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeid:Ljava/lang/Long;

    invoke-direct {p0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->createBodyPartFromLong(Ljava/lang/Long;)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :try_start_0
    const-string v2, "store_properties"

    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 61
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const-string v0, "access_token"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "store_name"

    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :try_start_1
    const-string v2, "store_properties"

    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->storeProperties:Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$StoreProperties;

    .line 69
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 68
    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/AccessTokenRequestBodyAdapter;->getAccessToken()Ljava/lang/String;

    .line 99
    return-void
.end method
