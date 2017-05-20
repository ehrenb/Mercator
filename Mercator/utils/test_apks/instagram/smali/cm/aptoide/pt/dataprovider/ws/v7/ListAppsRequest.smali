.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;
.source "ListAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore",
        "<",
        "Lcm/aptoide/pt/model/v7/ListApps;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final LINES_PER_REQUEST:I = 0x6


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "https://ws75.aptoide.com/api/7/"

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->url:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static of(I)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;-><init>(I)V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;)V

    return-object v0
.end method

.method public static ofAction(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;-><init>(Ljava/lang/String;)V

    const-string v2, "listApps"

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->remove(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->containsLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->get()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    invoke-direct {v3, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 42
    invoke-virtual {v0, v3, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v2, v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7Url;->get()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    sget-object v4, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 45
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-direct {v3, p1, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;I)V

    .line 44
    invoke-virtual {v0, v3, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v2, v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->getUrl()Ljava/lang/String;

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
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->getUrl()Ljava/lang/String;

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
            "Lcm/aptoide/pt/model/v7/ListApps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->url:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listApps(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListAppsRequest(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;->getUrl()Ljava/lang/String;

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
