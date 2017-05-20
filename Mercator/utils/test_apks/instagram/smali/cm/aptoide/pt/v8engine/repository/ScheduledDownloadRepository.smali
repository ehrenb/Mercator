.class public Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;
.super Ljava/lang/Object;
.source "ScheduledDownloadRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Scheduled;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/ScheduledAccessor;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    .line 14
    return-void
.end method


# virtual methods
.method public deleteScheduledDownload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->delete(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->get(Ljava/lang/String;)Lrx/d;

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
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllScheduledDownloads()Lrx/d;
    .locals 1
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
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->getAll()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public hasScheduleDownloads()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->hasScheduleDownloads()Z

    move-result v0

    return v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Scheduled;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->insert(Lio/realm/ad;)V

    .line 18
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->save(Lcm/aptoide/pt/database/realm/Scheduled;)V

    return-void
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
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->scheduledAccessor:Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->setInstalling(Ljava/util/List;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
