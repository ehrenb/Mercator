.class public abstract Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;
.super Ljava/lang/Object;
.source "RepositorySync.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected rescheduleSync(Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    .line 18
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 19
    return-void
.end method

.method public abstract sync(Landroid/content/SyncResult;)V
.end method
