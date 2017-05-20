.class public Lcm/aptoide/pt/database/accessors/InstalledAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "InstalledAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Installed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method static synthetic lambda$get$7()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$get$8([Ljava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "packageName"

    .line 69
    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 72
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$0()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$1(Lio/realm/ao;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "name"

    .line 35
    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 37
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsList$4()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsList$5(Ljava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "packageName"

    .line 58
    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 61
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isInstalled$3(Lcm/aptoide/pt/database/realm/Installed;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get([Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$8;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$9;->lambdaFactory$([Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/InstalledAccessor;)Lrx/b/e;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 74
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllSorted()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lio/realm/ao;->a:Lio/realm/ao;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->getAllSorted(Lio/realm/ao;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllSorted(Lio/realm/ao;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/ao;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$1;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$2;->lambdaFactory$(Lio/realm/ao;)Lrx/b/e;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/InstalledAccessor;)Lrx/b/e;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 39
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 40
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$6;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/InstalledAccessor;)Lrx/b/e;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 63
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 83
    return-void
.end method

.method public bridge synthetic insert(Lio/realm/ad;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->insert(Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insertAll(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public isInstalled(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/InstalledAccessor$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$9(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAllSorted$2(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAsList$6(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
