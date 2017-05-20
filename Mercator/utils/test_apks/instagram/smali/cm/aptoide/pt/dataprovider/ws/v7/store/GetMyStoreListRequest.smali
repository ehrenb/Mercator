.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "GetMyStoreListRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;,
        Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/store/ListStores;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;",
        ">;"
    }
.end annotation


# static fields
.field private static useEndless:Z


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->url:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;
    .locals 4

    .prologue
    .line 33
    sput-boolean p3, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->useEndless:Z

    .line 35
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;

    .line 37
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->createDefault()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v3

    invoke-direct {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;)V

    invoke-virtual {v0, v2, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, p0, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->url:Ljava/lang/String;

    const-string v1, "getSubscribed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;->setRefresh(Z)V

    .line 46
    :cond_0
    sget-boolean v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->useEndless:Z

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getMyStoreListEndless(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;Z)Lrx/d;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getMyStoreList(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;Z)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
