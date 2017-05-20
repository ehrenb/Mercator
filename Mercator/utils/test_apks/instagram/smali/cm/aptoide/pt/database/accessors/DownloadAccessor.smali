.class public Lcm/aptoide/pt/database/accessors/DownloadAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "DownloadAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Download;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method static synthetic lambda$delete$1(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method static synthetic lambda$delete$2(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$delete$4(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method static synthetic lambda$delete$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$getAllSorted$12()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$13(Lio/realm/ao;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 88
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "timeStamp"

    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInQueueSortedDownloads$10(Lio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 75
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "overallDownloadStatus"

    const/16 v2, 0xd

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    const-string v1, "timeStamp"

    sget-object v2, Lio/realm/ao;->a:Lio/realm/ao;

    .line 77
    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Lio/realm/ao;)Lio/realm/ag;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInQueueSortedDownloads$9()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRunningDownloads$6()Lio/realm/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRunningDownloads$7(Lio/realm/u;)Lrx/d;
    .locals 3

    .prologue
    .line 59
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "overallDownloadStatus"

    const/4 v2, 0x5

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lio/realm/af;->c()Lio/realm/af;

    move-result-object v0

    const-string v1, "overallDownloadStatus"

    const/4 v2, 0x4

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lio/realm/af;->c()Lio/realm/af;

    move-result-object v0

    const-string v1, "overallDownloadStatus"

    const/16 v2, 0xd

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;J)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 37
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 39
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 45
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 47
    return-void
.end method

.method public get(J)Lrx/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    const-string v2, "appId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

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
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$13;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$14;->lambdaFactory$(Lio/realm/ao;)Lrx/b/e;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 89
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lrx/b/e;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 91
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 92
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->getAsList(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInQueueSortedDownloads()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$10;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 79
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lrx/b/e;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 81
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 82
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getRunningDownloads()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$7;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 67
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lrx/b/e;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

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

.method synthetic lambda$delete$0(J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    const-string v2, "appId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$delete$3(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$getAllSorted$14(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInQueueSortedDownloads$11(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getRunningDownloads$8(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 51
    return-void
.end method

.method public save(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insertAll(Ljava/util/List;)V

    .line 55
    return-void
.end method
