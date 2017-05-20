.class public Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListAppsUpdatesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;,
        Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPLIT_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p3, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private getBody(Ljava/util/List;I)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;I)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;)V

    add-int/lit8 v0, p2, 0x64

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p2

    .line 125
    :goto_0
    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->setApksData(Ljava/util/List;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, p2, 0x64

    goto :goto_0
.end method

.method private static getInstalledApks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getAllInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 63
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    .line 64
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1WithColon([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;ZLcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;)Lrx/d;
    .locals 1

    .prologue
    .line 98
    invoke-interface {p0, p2, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listAppsUpdates(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$1(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lrx/d;->b(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 106
    return-object p0
.end method

.method static synthetic lambda$null$3(Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;)Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$4(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 110
    return-object p0
.end method

.method static synthetic lambda$null$5(Ljava/util/List;)Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;-><init>()V

    .line 116
    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;->setList(Ljava/util/List;)V

    .line 117
    return-object v0
.end method

.method public static of(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    .line 53
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->getInstalledApks()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, p0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v2, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->canEqual(Ljava/lang/Object;)Z

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
    .line 32
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    return v0
.end method

.method synthetic lambda$loadDataFromNetwork$6(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;ZLjava/lang/Integer;)Lrx/d;
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 90
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->getBody(Ljava/util/List;I)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v2}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    .line 95
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/b/e;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listAppsUpdates(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Z)Lrx/d;

    move-result-object v0

    goto :goto_1
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
            "Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;->getApksData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "ListAppsUpdatesRequest()"

    return-object v0
.end method
