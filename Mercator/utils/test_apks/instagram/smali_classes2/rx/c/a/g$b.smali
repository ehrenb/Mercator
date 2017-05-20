.class final Lrx/c/a/g$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/f;
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/f;",
        "Lrx/k;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Object;


# instance fields
.field final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/i",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lrx/c/a/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/c/a/g$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:[Ljava/lang/Object;

.field final f:Lrx/c/e/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/e/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field volatile h:Z

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/c/a/g$b;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/j;Lrx/b/i;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;",
            "Lrx/b/i",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 116
    iput-object p1, p0, Lrx/c/a/g$b;->a:Lrx/j;

    .line 117
    iput-object p2, p0, Lrx/c/a/g$b;->b:Lrx/b/i;

    .line 118
    iput p4, p0, Lrx/c/a/g$b;->d:I

    .line 119
    iput-boolean p5, p0, Lrx/c/a/g$b;->g:Z

    .line 120
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    sget-object v1, Lrx/c/a/g$b;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-array v0, p3, [Lrx/c/a/g$a;

    iput-object v0, p0, Lrx/c/a/g$b;->c:[Lrx/c/a/g$a;

    .line 123
    new-instance v0, Lrx/c/e/a/d;

    invoke-direct {v0, p4}, Lrx/c/e/a/d;-><init>(I)V

    iput-object v0, p0, Lrx/c/a/g$b;->f:Lrx/c/e/a/d;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/c/a/g$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/c/a/g$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    .prologue
    .line 229
    invoke-virtual {p0}, Lrx/c/a/g$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v4, p0, Lrx/c/a/g$b;->f:Lrx/c/e/a/d;

    .line 234
    iget-object v3, p0, Lrx/c/a/g$b;->a:Lrx/j;

    .line 235
    iget-boolean v5, p0, Lrx/c/a/g$b;->g:Z

    .line 236
    iget-object v10, p0, Lrx/c/a/g$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    const/4 v0, 0x1

    move v7, v0

    .line 241
    :goto_1
    iget-boolean v1, p0, Lrx/c/a/g$b;->i:Z

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/c/a/g$b;->a(ZZLrx/j;Ljava/util/Queue;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 246
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 248
    :goto_2
    cmp-long v0, v8, v12

    if-eqz v0, :cond_2

    .line 250
    iget-boolean v1, p0, Lrx/c/a/g$b;->i:Z

    .line 252
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lrx/c/a/g$a;

    .line 253
    if-nez v6, :cond_4

    const/4 v2, 0x1

    :goto_3
    move-object v0, p0

    .line 255
    invoke-virtual/range {v0 .. v5}, Lrx/c/a/g$b;->a(ZZLrx/j;Ljava/util/Queue;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    if-eqz v2, :cond_5

    .line 290
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v12, v0

    if-eqz v0, :cond_3

    .line 291
    invoke-static {v10, v8, v9}, Lrx/c/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 294
    :cond_3
    neg-int v0, v7

    invoke-virtual {p0, v0}, Lrx/c/a/g$b;->addAndGet(I)I

    move-result v0

    .line 295
    if-eqz v0, :cond_0

    move v7, v0

    .line 298
    goto :goto_1

    .line 253
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 263
    :cond_5
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 264
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 266
    if-nez v0, :cond_6

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/g$b;->h:Z

    .line 268
    invoke-virtual {p0, v4}, Lrx/c/a/g$b;->a(Ljava/util/Queue;)V

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Broken queue?! Sender received but not the array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 275
    :cond_6
    :try_start_0
    iget-object v1, p0, Lrx/c/a/g$b;->b:Lrx/b/i;

    invoke-interface {v1, v0}, Lrx/b/i;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    invoke-virtual {v3, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 285
    const-wide/16 v0, 0x1

    invoke-virtual {v6, v0, v1}, Lrx/c/a/g$a;->a(J)V

    .line 287
    const-wide/16 v0, 0x1

    add-long/2addr v0, v8

    move-wide v8, v0

    .line 288
    goto :goto_2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/c/a/g$b;->h:Z

    .line 278
    invoke-virtual {p0, v4}, Lrx/c/a/g$b;->a(Ljava/util/Queue;)V

    .line 279
    invoke-virtual {v3, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/Object;I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 187
    iget-object v2, p0, Lrx/c/a/g$b;->c:[Lrx/c/a/g$a;

    aget-object v5, v2, p2

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v2, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    array-length v6, v2

    .line 196
    iget-object v2, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    aget-object v7, v2, p2

    .line 197
    iget v2, p0, Lrx/c/a/g$b;->l:I

    .line 198
    sget-object v3, Lrx/c/a/g$b;->n:Ljava/lang/Object;

    if-ne v7, v3, :cond_0

    .line 199
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/c/a/g$b;->l:I

    :cond_0
    move v4, v2

    .line 201
    iget v2, p0, Lrx/c/a/g$b;->m:I

    .line 202
    if-nez p1, :cond_4

    .line 203
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/c/a/g$b;->m:I

    move v3, v2

    .line 207
    :goto_0
    if-ne v4, v6, :cond_5

    move v2, v1

    .line 209
    :goto_1
    if-eq v3, v6, :cond_1

    if-nez p1, :cond_2

    sget-object v3, Lrx/c/a/g$b;->n:Ljava/lang/Object;

    if-ne v7, v3, :cond_2

    :cond_1
    move v0, v1

    .line 211
    :cond_2
    if-nez v0, :cond_8

    .line 212
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 213
    iget-object v0, p0, Lrx/c/a/g$b;->f:Lrx/c/e/a/d;

    iget-object v1, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lrx/c/e/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-nez v2, :cond_9

    if-eqz p1, :cond_9

    .line 223
    const-wide/16 v0, 0x1

    invoke-virtual {v5, v0, v1}, Lrx/c/a/g$a;->a(J)V

    .line 227
    :goto_3
    return-void

    .line 205
    :cond_4
    :try_start_1
    iget-object v3, p0, Lrx/c/a/g$b;->e:[Ljava/lang/Object;

    invoke-static {p1}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, p2

    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v0

    .line 207
    goto :goto_1

    .line 215
    :cond_6
    if-nez p1, :cond_3

    iget-object v0, p0, Lrx/c/a/g$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lrx/c/a/g$b;->n:Ljava/lang/Object;

    if-eq v7, v0, :cond_7

    iget-boolean v0, p0, Lrx/c/a/g$b;->g:Z

    if-nez v0, :cond_3

    .line 216
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/g$b;->i:Z

    goto :goto_2

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 219
    :cond_8
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lrx/c/a/g$b;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 226
    :cond_9
    invoke-virtual {p0}, Lrx/c/a/g$b;->a()V

    goto :goto_3
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 335
    iget-object v2, p0, Lrx/c/a/g$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 339
    if-eqz v0, :cond_2

    .line 340
    instance-of v1, v0, Lrx/exceptions/CompositeException;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 341
    check-cast v1, Lrx/exceptions/CompositeException;

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lrx/exceptions/CompositeException;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lrx/exceptions/CompositeException;

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 351
    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    return-void

    .line 346
    :cond_1
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 349
    goto :goto_0
.end method

.method a(Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 175
    iget-object v1, p0, Lrx/c/a/g$b;->c:[Lrx/c/a/g$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 176
    invoke-virtual {v3}, Lrx/c/a/g$a;->unsubscribe()V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public a([Lrx/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/d",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v2, p0, Lrx/c/a/g$b;->c:[Lrx/c/a/g$a;

    .line 131
    array-length v3, v2

    move v1, v0

    .line 132
    :goto_0
    if-ge v1, v3, :cond_0

    .line 133
    new-instance v4, Lrx/c/a/g$a;

    invoke-direct {v4, p0, v1}, Lrx/c/a/g$a;-><init>(Lrx/c/a/g$b;I)V

    aput-object v4, v2, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lrx/c/a/g$b;->lazySet(I)V

    .line 136
    iget-object v1, p0, Lrx/c/a/g$b;->a:Lrx/j;

    invoke-virtual {v1, p0}, Lrx/j;->add(Lrx/k;)V

    .line 137
    iget-object v1, p0, Lrx/c/a/g$b;->a:Lrx/j;

    invoke-virtual {v1, p0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 138
    :goto_1
    if-ge v0, v3, :cond_1

    .line 139
    iget-boolean v1, p0, Lrx/c/a/g$b;->h:Z

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    return-void

    .line 142
    :cond_2
    aget-object v1, p1, v0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lrx/d;->b(Lrx/j;)Lrx/k;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(ZZLrx/j;Ljava/util/Queue;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/j",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 303
    iget-boolean v0, p0, Lrx/c/a/g$b;->h:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, p4}, Lrx/c/a/g$b;->a(Ljava/util/Queue;)V

    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 307
    :cond_0
    if-eqz p1, :cond_4

    .line 308
    if-eqz p5, :cond_2

    .line 309
    if-eqz p2, :cond_4

    .line 310
    iget-object v0, p0, Lrx/c/a/g$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 311
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p3, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    .line 316
    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p3}, Lrx/j;->onCompleted()V

    goto :goto_1

    .line 319
    :cond_2
    iget-object v0, p0, Lrx/c/a/g$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 320
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p0, p4}, Lrx/c/a/g$b;->a(Ljava/util/Queue;)V

    .line 322
    invoke-virtual {p3, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    move v0, v1

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    if-eqz p2, :cond_4

    .line 326
    invoke-virtual {p3}, Lrx/j;->onCompleted()V

    move v0, v1

    .line 327
    goto :goto_0

    .line 331
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lrx/c/a/g$b;->h:Z

    return v0
.end method

.method public request(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lrx/c/a/g$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 153
    invoke-virtual {p0}, Lrx/c/a/g$b;->a()V

    .line 155
    :cond_1
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lrx/c/a/g$b;->h:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/g$b;->h:Z

    .line 162
    invoke-virtual {p0}, Lrx/c/a/g$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lrx/c/a/g$b;->f:Lrx/c/e/a/d;

    invoke-virtual {p0, v0}, Lrx/c/a/g$b;->a(Ljava/util/Queue;)V

    .line 166
    :cond_0
    return-void
.end method
