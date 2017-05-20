.class public Lcm/aptoide/pt/database/accessors/RollbackAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "RollbackAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Rollback;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method static synthetic lambda$getConfirmedRollbacks$4()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getConfirmedRollbacks$5(Lio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 69
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p0, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "confirmed"

    const/4 v2, 0x1

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v0

    const-string v1, "timestamp"

    sget-object v2, Lio/realm/ao;->b:Lio/realm/ao;

    .line 71
    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 73
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNotConfirmedRollback$0()Lio/realm/u;
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

.method static synthetic lambda$getNotConfirmedRollback$1(Ljava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 49
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "packageName"

    .line 50
    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    const-string v1, "confirmed"

    const/4 v2, 0x0

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/af;

    move-result-object v0

    const-string v1, "timestamp"

    sget-object v2, Lio/realm/ao;->b:Lio/realm/ao;

    .line 52
    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 54
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNotConfirmedRollback$3(Ljava/util/List;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 1

    .prologue
    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    .line 60
    :goto_0
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
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmedRollbacks()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/RollbackAccessor;)Lrx/b/e;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 75
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 76
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getNotConfirmedRollback(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$1;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$2;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/RollbackAccessor;)Lrx/b/e;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/RollbackAccessor$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 63
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 64
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getConfirmedRollbacks$6(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNotConfirmedRollback$2(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Rollback;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 45
    return-void
.end method
