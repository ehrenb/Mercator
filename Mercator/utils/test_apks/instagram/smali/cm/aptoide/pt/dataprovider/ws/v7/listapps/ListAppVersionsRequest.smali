.class public Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListAppVersionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_LIMIT:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->MAX_LIMIT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static of(IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;-><init>()V

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setLimit(Ljava/lang/Integer;)V

    .line 49
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setOffset(I)V

    .line 50
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setLimit(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {v1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setOffset(I)V

    .line 81
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;-><init>()V

    .line 40
    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->MAX_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setLimit(Ljava/lang/Integer;)V

    .line 41
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, v1, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setStoresAuthMap(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)V

    .line 71
    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->MAX_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setLimit(Ljava/lang/Integer;)V

    .line 72
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;"
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-direct {v2, p0, p1, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;-><init>(Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)V

    .line 59
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->MAX_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;->setLimit(Ljava/lang/Integer;)V

    .line 60
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, v2, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Ljava/lang/String;)V

    move-object v0, v1

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->canEqual(Ljava/lang/Object;)Z

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
    .line 28
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
            "Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listAppVersions(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "ListAppVersionsRequest()"

    return-object v0
.end method
