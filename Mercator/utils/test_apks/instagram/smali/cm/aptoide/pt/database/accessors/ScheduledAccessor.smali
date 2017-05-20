.class public Lcm/aptoide/pt/database/accessors/ScheduledAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "ScheduledAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Scheduled;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method static synthetic lambda$setInstalling$0(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 43
    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/Scheduled;->setDownloading(Z)V

    .line 44
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 49
    invoke-virtual {v1, p0}, Lio/realm/u;->a(Ljava/util/Collection;)V

    .line 50
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 51
    invoke-virtual {v1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v3, "md5"

    invoke-virtual {v0, v3, v2}, Lio/realm/af;->a(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lio/realm/ag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 53
    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/Scheduled;->setDownloading(Z)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1}, Lio/realm/u;->d()V

    .line 56
    return-object p0
.end method

.method static synthetic lambda$setInstalling$1(Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p0, v4}, Lcm/aptoide/pt/database/realm/Scheduled;->setDownloading(Z)V

    .line 64
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 66
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 67
    invoke-virtual {v1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v2, "md5"

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 68
    invoke-virtual {v0, v4}, Lcm/aptoide/pt/database/realm/Scheduled;->setDownloading(Z)V

    .line 69
    invoke-virtual {v1}, Lio/realm/u;->d()V

    .line 70
    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
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
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    const-string v2, "md5"

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
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public hasScheduleDownloads()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v2

    .line 76
    :try_start_0
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v2, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/realm/u;->close()V

    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lio/realm/u;->close()V

    :cond_2
    throw v0
.end method

.method public setInstalling(Lcm/aptoide/pt/database/realm/Scheduled;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Scheduled;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setInstalling(Ljava/util/List;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor$$Lambda$1;->lambdaFactory$(Ljava/util/List;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
