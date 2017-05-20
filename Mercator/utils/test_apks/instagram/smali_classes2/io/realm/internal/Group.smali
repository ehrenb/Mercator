.class public Lio/realm/internal/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:J

.field protected b:Z

.field private final c:Lio/realm/internal/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/Group;->b:Z

    .line 49
    new-instance v0, Lio/realm/internal/c;

    invoke-direct {v0}, Lio/realm/internal/c;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    .line 50
    invoke-virtual {p0}, Lio/realm/internal/Group;->createNative()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Group;->a:J

    .line 51
    invoke-direct {p0}, Lio/realm/internal/Group;->b()V

    .line 52
    return-void
.end method

.method constructor <init>(Lio/realm/internal/c;JZ)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    .line 93
    iput-wide p2, p0, Lio/realm/internal/Group;->a:J

    .line 94
    iput-boolean p4, p0, Lio/realm/internal/Group;->b:Z

    .line 95
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lio/realm/internal/OutOfMemoryError;

    const-string v1, "Out of native memory."

    invoke-direct {v0, v1}, Lio/realm/internal/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal to call methods on a closed Group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    return-void
.end method

.method protected static native nativeClose(J)V
.end method


# virtual methods
.method a()Z
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

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

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lio/realm/internal/Group;->c()V

    .line 149
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/Group;->nativeHasTable(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/Group;->nativeRemoveTable(JLjava/lang/String;)V

    .line 168
    return-void
.end method

.method public c(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 188
    invoke-direct {p0}, Lio/realm/internal/Group;->c()V

    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid name. Name must be a non-empty String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    iget-boolean v0, p0, Lio/realm/internal/Group;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lio/realm/internal/Group;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested table is not in this Realm. Creating it requires a transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    iget-object v0, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 199
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/Group;->nativeGetTableNativePtr(JLjava/lang/String;)J

    move-result-wide v2

    .line 202
    :try_start_0
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    invoke-direct {v0, v1, p0, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/c;Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 205
    throw v0
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    iget-object v1, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/Group;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 102
    iget-wide v2, p0, Lio/realm/internal/Group;->a:J

    invoke-static {v2, v3}, Lio/realm/internal/Group;->nativeClose(J)V

    .line 103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/Group;->a:J

    .line 105
    :cond_0
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native createNative()J
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 118
    iget-object v1, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/Group;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lio/realm/internal/Group;->c:Lio/realm/internal/c;

    iget-wide v2, p0, Lio/realm/internal/Group;->a:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/c;->c(J)V

    .line 121
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/Group;->a:J

    .line 123
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native nativeGetTableNativePtr(JLjava/lang/String;)J
.end method

.method protected native nativeHasTable(JLjava/lang/String;)Z
.end method

.method native nativeRemoveTable(JLjava/lang/String;)V
.end method

.method protected native nativeToString(J)Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lio/realm/internal/Group;->a:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/Group;->nativeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
