.class public Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;
.super Ljava/lang/Object;
.source "StoreCredentialsProviderImpl.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/StoreCredentialsProvider;


# instance fields
.field private final storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 21
    return-void
.end method


# virtual methods
.method public fromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->getStoreId()Ljava/lang/Long;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->getStoreName()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->get(J)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->get(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>()V

    goto :goto_0
.end method

.method public get(J)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(J)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getPasswordSha1()Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreName()Ljava/lang/String;

    move-result-object v4

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-direct {v1, p1, p2, v2, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getPasswordSha1()Ljava/lang/String;

    move-result-object v6

    .line 51
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-direct {v1, p1, v2, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
