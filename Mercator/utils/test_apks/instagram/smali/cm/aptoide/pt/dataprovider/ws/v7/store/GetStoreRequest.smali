.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;
.source "GetStoreRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore",
        "<",
        "Lcm/aptoide/pt/model/v7/store/GetStore;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;",
        ">;"
    }
.end annotation


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p3, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->createDefault()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;)V

    .line 37
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;->setContext(Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)V

    .line 39
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    const-string v3, ""

    const-string v4, "https://ws75.aptoide.com/api/7/"

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;

    invoke-direct {v2, v3, v4, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;)V

    return-object v2
.end method

.method public static ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->createDefault()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;)V

    .line 48
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    invoke-direct {v3, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;-><init>(Ljava/lang/String;)V

    const-string v4, "getStore"

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->remove(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->get()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://ws75.aptoide.com/api/7/"

    .line 49
    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;

    invoke-direct {v2, v3, v4, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;)V

    return-object v2
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->canEqual(Ljava/lang/Object;)Z

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
    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->url:Ljava/lang/String;

    iget-object v0, v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->url:Ljava/lang/String;

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->url:Ljava/lang/String;

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
            "Lcm/aptoide/pt/model/v7/store/GetStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getStore(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
