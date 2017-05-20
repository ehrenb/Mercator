.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;
.source "GetStoreDisplaysRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore",
        "<",
        "Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2, p3, p4, p5}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->url:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;-><init>(Ljava/lang/String;)V

    const-string v3, "getStoreDisplays"

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->remove(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->get()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    invoke-direct {v3, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 43
    invoke-virtual {v0, v3, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v2, v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;

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
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->getUrl()Ljava/lang/String;

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

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->getUrl()Ljava/lang/String;

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
            "Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getStoreDisplays(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetStoreDisplaysRequest(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
