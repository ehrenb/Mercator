.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "GetAppRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/GetApp;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p4, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static getAppIdFromUrl(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 108
    :try_start_0
    const-string v0, "app_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 109
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    const/4 v2, 0x0

    if-lez v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    :goto_1
    return-wide v0

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-class v1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-wide/32 v0, 0xc2c83d

    goto :goto_1
.end method

.method public static of(JLjava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 89
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v3, p2, v1, p6}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->setStoreUser(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getPasswordSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->setStorePassSha1(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-virtual {v0, v2, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v1, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v1
.end method

.method public static of(JLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 8

    .prologue
    .line 67
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 70
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v4, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v2
.end method

.method public static of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 52
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v5, v1, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v4, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v2
.end method

.method public static of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 61
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v5, p2, v1, p5}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v4, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 42
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v4, p0, p1, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v0, v4, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v2
.end method

.method public static ofAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 6

    .prologue
    .line 97
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->getAppIdFromUrl(Ljava/lang/String;)J

    move-result-wide v0

    .line 98
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v2, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v4, "https://ws75.aptoide.com/api/7/"

    new-instance v5, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v5, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(J)V

    invoke-virtual {v2, v5, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v3, v4, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v3
.end method

.method public static ofMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v1

    .line 78
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v4, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-direct {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;)V

    return-object v2
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    return v0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getApp(Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
