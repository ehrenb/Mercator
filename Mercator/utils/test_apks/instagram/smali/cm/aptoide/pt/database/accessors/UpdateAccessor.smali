.class public Lcm/aptoide/pt/database/accessors/UpdateAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "UpdateAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Update;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method static synthetic lambda$contains$10(ZLjava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 1

    .prologue
    .line 61
    invoke-static {p2, p0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$16;->lambdaFactory$(Lio/realm/u;ZLjava/lang/String;)Lrx/b/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/b/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$contains$8()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$get$0()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAll$2()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAll$3(ZLio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "excluded"

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$5()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$6(ZLio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 49
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "excluded"

    .line 50
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v0

    const-string v1, "label"

    .line 51
    invoke-virtual {v0, v1}, Lio/realm/af;->a(Ljava/lang/String;)Lio/realm/ag;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isExcluded$11()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$12(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$9(Lio/realm/u;ZLjava/lang/String;)Lrx/d;
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p0, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "excluded"

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v0

    const-string v1, "packageName"

    .line 64
    invoke-virtual {v0, v1, p2}, Lio/realm/af;->b(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 66
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;Z)Lrx/d;
    .locals 2
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
    .line 60
    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$11;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p2, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$12;->lambdaFactory$(ZLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 68
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 69
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 70
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lrx/d;
    .locals 3
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
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$1;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Ljava/lang/String;Z)Lrx/b/e;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 27
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 28
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Z)Lrx/d;
    .locals 2
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
    .line 36
    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$6;->lambdaFactory$(Z)Lrx/b/e;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 41
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)Lrx/b/e;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 43
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 44
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllSorted(Z)Lrx/d;
    .locals 2
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
    .line 48
    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$8;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$9;->lambdaFactory$(Z)Lrx/b/e;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 53
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;)Lrx/b/e;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 55
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 56
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Lrx/d;
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
    .line 90
    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$13;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 94
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 95
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 96
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$1(Ljava/lang/String;ZLio/realm/u;)Lrx/d;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p3, v1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v1

    const-string v2, "packageName"

    .line 25
    invoke-virtual {v1, v2, p1}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v1

    const-string v2, "excluded"

    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->findFirst(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAll$4(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAllSorted$7(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isExcluded$13(Ljava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p2, v1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v1

    const-string v2, "packageName"

    .line 92
    invoke-virtual {v1, v2, p1}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v1

    const-string v2, "excluded"

    const/4 v3, 0x1

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->count(Lio/realm/af;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/UpdateAccessor$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v2, Lcm/aptoide/pt/database/realm/Update;

    const-string v3, "packageName"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/database/accessors/Database;->deleteAllIn(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public save(Lcm/aptoide/pt/database/realm/Update;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 87
    return-void
.end method

.method public saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insertAll(Ljava/util/List;)V

    .line 83
    return-void
.end method
