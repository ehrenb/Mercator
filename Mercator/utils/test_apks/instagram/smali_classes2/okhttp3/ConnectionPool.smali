.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 42
    const-class v0, Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 50
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lokhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 75
    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 88
    iput p1, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    .line 89
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move v1, v2

    .line 239
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 240
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 242
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 244
    goto :goto_0

    .line 248
    :cond_1
    check-cast v0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v0, v0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 258
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 264
    :goto_1
    return v2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method cleanup(J)J
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 183
    const/4 v1, 0x0

    .line 184
    const-wide/high16 v4, -0x8000000000000000L

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v2, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    move v7, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 192
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 194
    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v6, v2, 0x1

    .line 200
    iget-wide v2, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v2, p1, v2

    .line 201
    cmp-long v9, v2, v4

    if-lez v9, :cond_6

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_1
    move-wide v4, v0

    move-object v1, v2

    move v2, v6

    .line 205
    goto :goto_0

    .line 207
    :cond_1
    iget-wide v8, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v2, v0, :cond_3

    .line 211
    :cond_2
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 228
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    .line 212
    :cond_3
    if-lez v2, :cond_4

    .line 214
    :try_start_1
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 215
    :cond_4
    if-lez v7, :cond_5

    .line 217
    :try_start_2
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    goto :goto_2

    .line 220
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 221
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    move-object v2, v1

    move-wide v0, v4

    goto :goto_1
.end method

.method connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_1

    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_2

    .line 146
    :cond_1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized connectionCount()I
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evictAll()V
    .locals 4

    .prologue
    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 160
    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v3, 0x1

    iput-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 162
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 169
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    .line 171
    :cond_2
    return-void
.end method

.method get(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .locals 4

    .prologue
    .line 118
    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 120
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_1

    .line 121
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {p1, v2}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    .line 127
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 101
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    monitor-exit p0

    return v1

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method put(Lokhttp3/internal/connection/RealConnection;)V
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 134
    sget-object v0, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method
