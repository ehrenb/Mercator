.class public Lio/realm/internal/SharedGroup;
.super Ljava/lang/Object;
.source "SharedGroup.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/SharedGroup$b;,
        Lio/realm/internal/SharedGroup$a;
    }
.end annotation


# static fields
.field public static a:[J

.field public static b:J


# instance fields
.field private final c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Z

.field private final h:Lio/realm/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/realm/internal/SharedGroup;->a:[J

    .line 34
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lio/realm/internal/SharedGroup;->b:J

    return-void

    .line 33
    nop

    :array_0
    .array-data 8
        0x1
        0xa
        0x14
        0x32
        0x64
        0xc8
        0x190
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLio/realm/internal/SharedGroup$a;[B)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v3, p0, Lio/realm/internal/SharedGroup;->f:Z

    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-direct {p0, p1, p4}, Lio/realm/internal/SharedGroup;->nativeCreateReplication(Ljava/lang/String;[B)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/SharedGroup;->e:J

    .line 74
    invoke-direct {p0, p3, p4}, Lio/realm/internal/SharedGroup;->a(Lio/realm/internal/SharedGroup$a;[B)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/SharedGroup;->f:Z

    .line 79
    :goto_0
    new-instance v0, Lio/realm/internal/c;

    invoke-direct {v0}, Lio/realm/internal/c;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedGroup;->h:Lio/realm/internal/c;

    .line 80
    iput-object p1, p0, Lio/realm/internal/SharedGroup;->c:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lio/realm/internal/SharedGroup;->j()V

    .line 82
    return-void

    .line 77
    :cond_0
    sget-object v0, Lio/realm/internal/SharedGroup$a;->a:Lio/realm/internal/SharedGroup$a;

    iget v2, v0, Lio/realm/internal/SharedGroup$a;->c:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/SharedGroup;->nativeCreate(Ljava/lang/String;IZZ[B)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    goto :goto_0
.end method

.method private static a(I)J
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lio/realm/internal/SharedGroup;->a:[J

    if-nez v0, :cond_0

    .line 118
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0

    .line 120
    :cond_0
    sget-object v0, Lio/realm/internal/SharedGroup;->a:[J

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 121
    sget-object v0, Lio/realm/internal/SharedGroup;->a:[J

    sget-object v1, Lio/realm/internal/SharedGroup;->a:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lio/realm/internal/SharedGroup;->a:[J

    add-int/lit8 v1, p0, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method private a(Lio/realm/internal/SharedGroup$a;[B)J
    .locals 8

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-wide v6, Lio/realm/internal/SharedGroup;->b:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 95
    :try_start_0
    iget-wide v4, p0, Lio/realm/internal/SharedGroup;->e:J

    iget v0, p1, Lio/realm/internal/SharedGroup$a;->c:I

    invoke-direct {p0, v4, v5, v0, p2}, Lio/realm/internal/SharedGroup;->createNativeWithImplicitTransactions(JI[B)J

    move-result-wide v4

    .line 96
    if-lez v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncompatibleLockFile was detected. Error was resolved after "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " retries"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lio/realm/exceptions/IncompatibleLockFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    return-wide v4

    .line 100
    :catch_0
    move-exception v0

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 104
    :try_start_1
    invoke-static {v1}, Lio/realm/internal/SharedGroup;->a(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for another process to release the Realm file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/realm/internal/SharedGroup;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v4

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for Realm to open interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/realm/internal/SharedGroup;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v1, Lio/realm/exceptions/RealmError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open the Realm file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native createNativeWithImplicitTransactions(JI[B)J
.end method

.method private j()V
    .locals 4

    .prologue
    .line 284
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/io/IOError;

    new-instance v1, Lio/realm/exceptions/RealmIOException;

    const-string v2, "Realm could not be opened"

    invoke-direct {v1, v2}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method private native nativeAdvanceRead(J)V
.end method

.method private native nativeAdvanceReadToVersion(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation
.end method

.method private native nativeBeginImplicit(J)J
.end method

.method protected static native nativeClose(J)V
.end method

.method private native nativeCloseReplication(J)V
.end method

.method private native nativeCommitAndContinueAsRead(J)V
.end method

.method private native nativeCreate(Ljava/lang/String;IZZ[B)J
.end method

.method private native nativeCreateReplication(Ljava/lang/String;[B)J
.end method

.method private native nativeGetVersionID(J)[J
.end method

.method private native nativePromoteToWrite(J)V
.end method

.method private native nativeRollbackAndContinueAsRead(J)V
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativeAdvanceRead(J)V

    .line 138
    return-void
.end method

.method a(Lio/realm/internal/SharedGroup$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation

    .prologue
    .line 141
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    iget-wide v4, p1, Lio/realm/internal/SharedGroup$b;->a:J

    iget-wide v6, p1, Lio/realm/internal/SharedGroup$b;->b:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/SharedGroup;->nativeAdvanceReadToVersion(JJJ)V

    .line 142
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativePromoteToWrite(J)V

    .line 146
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativeCommitAndContinueAsRead(J)V

    .line 150
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 211
    iget-object v1, p0, Lio/realm/internal/SharedGroup;->h:Lio/realm/internal/c;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 213
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-static {v2, v3}, Lio/realm/internal/SharedGroup;->nativeClose(J)V

    .line 214
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    .line 215
    iget-boolean v0, p0, Lio/realm/internal/SharedGroup;->f:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 216
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    invoke-direct {p0, v2, v3}, Lio/realm/internal/SharedGroup;->nativeCloseReplication(J)V

    .line 217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    .line 220
    :cond_0
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativeRollbackAndContinueAsRead(J)V

    .line 154
    return-void
.end method

.method public e()Lio/realm/internal/e;
    .locals 4

    .prologue
    .line 157
    iget-boolean v0, p0, Lio/realm/internal/SharedGroup;->g:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t beginImplicitTransaction() during another active transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativeBeginImplicit(J)J

    move-result-wide v0

    .line 162
    new-instance v2, Lio/realm/internal/e;

    iget-object v3, p0, Lio/realm/internal/SharedGroup;->h:Lio/realm/internal/c;

    invoke-direct {v2, v3, p0, v0, v1}, Lio/realm/internal/e;-><init>(Lio/realm/internal/c;Lio/realm/internal/SharedGroup;J)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/SharedGroup;->g:Z

    .line 164
    return-object v2
.end method

.method public f()Z
    .locals 4

    .prologue
    .line 253
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 224
    iget-object v1, p0, Lio/realm/internal/SharedGroup;->h:Lio/realm/internal/c;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lio/realm/internal/SharedGroup;->h:Lio/realm/internal/c;

    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/c;->d(J)V

    .line 227
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedGroup;->d:J

    .line 228
    iget-boolean v0, p0, Lio/realm/internal/SharedGroup;->f:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 229
    iget-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    invoke-direct {p0, v2, v3}, Lio/realm/internal/SharedGroup;->nativeCloseReplication(J)V

    .line 230
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedGroup;->e:J

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lio/realm/internal/SharedGroup;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    return-wide v0
.end method

.method public i()Lio/realm/internal/SharedGroup$b;
    .locals 6

    .prologue
    .line 298
    iget-wide v0, p0, Lio/realm/internal/SharedGroup;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/SharedGroup;->nativeGetVersionID(J)[J

    move-result-object v0

    .line 299
    new-instance v1, Lio/realm/internal/SharedGroup$b;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/SharedGroup$b;-><init>(JJ)V

    return-object v1
.end method
