.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListSearchAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/ListSearchApps;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p3, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/4 v5, 0x0

    .line 37
    new-instance v7, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v7, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 44
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v3, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 46
    invoke-virtual {p2, p1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 47
    invoke-virtual {v7, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v6, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v6

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v2, p0, v4, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static of(Ljava/lang/String;ZLjava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 59
    new-instance v7, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v7, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/Boolean;)V

    .line 62
    invoke-virtual {v7, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v6, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v6

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v2, p0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static of(Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 75
    new-instance v7, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v7, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/Boolean;)V

    .line 78
    invoke-virtual {v7, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v6, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v6

    .line 83
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v2, p0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListSearchApps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listSearchApps(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
