.class public Lcm/aptoide/pt/v8engine/repository/UpdateRepository;
.super Ljava/lang/Object;
.source "UpdateRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Update;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

.field private updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Lcm/aptoide/pt/database/accessors/StoreAccessor;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 37
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 39
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 41
    return-void
.end method

.method private getNetworkUpdates(Ljava/util/List;Z)Lrx/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->TAG:Ljava/lang/String;

    const-string v1, "getNetworkUpdates() -> using %d stores"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 62
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->of(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;->observe(Z)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNetworkUpdates$4(Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;->getList()Ljava/util/List;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getNonExcludedUpdates$17(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$17;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/database/realm/Store;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$10(Lcm/aptoide/pt/database/realm/Update;Ljava/lang/Boolean;)Lrx/d;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$null$16(Lcm/aptoide/pt/database/realm/Update;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->isExcluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$remove$13(Lcm/aptoide/pt/database/realm/Update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeAll$8(Lcm/aptoide/pt/database/realm/Update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$saveNewUpdates$6(Lcm/aptoide/pt/model/v7/listapp/App;)Lcm/aptoide/pt/database/realm/Update;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/realm/Update;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;)V

    return-object v0
.end method

.method static synthetic lambda$sync$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 47
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$19;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private saveNewUpdates(Ljava/util/List;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/App;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/e;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lrx/a;->a(Lrx/h;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private saveNonExcludedUpdates(Ljava/util/List;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/e;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Ljava/util/List;)Lrx/b/b;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/b;)Lrx/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->contains(Ljava/lang/String;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->getAllSorted(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getNonExcludedUpdates()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->getAll()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$remove$14(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->removeAll(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$remove$15(Lcm/aptoide/pt/database/realm/Update;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->remove(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$removeAll$9(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->removeAll(Ljava/util/List;)V

    .line 97
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$removeAllNonExcluded$5(Ljava/util/List;)Lrx/a;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->removeAll(Ljava/util/List;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$saveNewUpdates$7(Ljava/util/List;)Lrx/h;
    .locals 5

    .prologue
    .line 83
    sget-object v0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->TAG:Ljava/lang/String;

    const-string v1, "filter %d updates for non excluded and save the remainder"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->saveNonExcludedUpdates(Ljava/util/List;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$saveNonExcludedUpdates$11(Lcm/aptoide/pt/database/realm/Update;)Lrx/d;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->isExcluded(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Update;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$saveNonExcludedUpdates$12(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 115
    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->saveAll(Ljava/util/List;)V

    .line 118
    :cond_0
    return-void
.end method

.method synthetic lambda$setExcluded$18(ZLcm/aptoide/pt/database/realm/Update;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p2, p1}, Lcm/aptoide/pt/database/realm/Update;->setExcluded(Z)V

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->insert(Lio/realm/ad;)V

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$sync$2(ZLjava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getNetworkUpdates(Ljava/util/List;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sync$3(Ljava/util/List;)Lrx/a;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->removeAllNonExcluded()Lrx/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->saveNewUpdates(Ljava/util/List;)Lrx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcm/aptoide/pt/database/realm/Update;)Lrx/a;
    .locals 1

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Lcm/aptoide/pt/database/realm/Update;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/util/List;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$12;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/b;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->remove(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public removeAll(Ljava/util/List;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/e;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public removeAllNonExcluded()Lrx/a;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->getAll(Z)Lrx/d;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/e;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/h;->c(Lrx/b/e;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Update;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->insert(Lio/realm/ad;)V

    .line 127
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->save(Lcm/aptoide/pt/database/realm/Update;)V

    return-void
.end method

.method public setExcluded(Ljava/lang/String;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->updateAccessor:Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public sync(Z)Lrx/a;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->getAll()Lrx/d;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 46
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;Z)Lrx/b/e;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/UpdateRepository;)Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/h;->c(Lrx/b/e;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
