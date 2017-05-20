.class final Lrx/c/a/b$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Lrx/f;
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f;",
        "Lrx/k;"
    }
.end annotation


# instance fields
.field final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/b$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>(Lrx/j;Lrx/c/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/c/a/b$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/c/a/b$c;->a:Lrx/j;

    .line 290
    iput-object p2, p0, Lrx/c/a/b$c;->b:Lrx/c/a/b$a;

    .line 291
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 315
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/c/a/b$c;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 15

    .prologue
    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v0, p0, Lrx/c/a/b$c;->f:Z

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/b$c;->g:Z

    .line 341
    monitor-exit p0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/b$c;->f:Z

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    const/4 v1, 0x0

    .line 347
    :try_start_1
    iget-object v8, p0, Lrx/c/a/b$c;->a:Lrx/j;

    .line 351
    :goto_1
    invoke-virtual {p0}, Lrx/c/a/b$c;->get()J

    move-result-wide v6

    .line 353
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-ltz v0, :cond_0

    .line 360
    iget-object v0, p0, Lrx/c/a/b$c;->b:Lrx/c/a/b$a;

    invoke-virtual {v0}, Lrx/c/a/b$a;->d()I

    move-result v9

    .line 361
    if-eqz v9, :cond_9

    .line 362
    iget-object v4, p0, Lrx/c/a/b$c;->c:[Ljava/lang/Object;

    .line 365
    if-nez v4, :cond_2

    .line 366
    iget-object v0, p0, Lrx/c/a/b$c;->b:Lrx/c/a/b$a;

    invoke-virtual {v0}, Lrx/c/a/b$a;->c()[Ljava/lang/Object;

    move-result-object v4

    .line 367
    iput-object v4, p0, Lrx/c/a/b$c;->c:[Ljava/lang/Object;

    .line 369
    :cond_2
    array-length v0, v4

    add-int/lit8 v10, v0, -0x1

    .line 370
    iget v3, p0, Lrx/c/a/b$c;->e:I

    .line 371
    iget v2, p0, Lrx/c/a/b$c;->d:I

    .line 373
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-nez v0, :cond_5

    .line 374
    aget-object v0, v4, v2

    .line 375
    invoke-static {v0}, Lrx/c/a/f;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 376
    invoke-virtual {v8}, Lrx/j;->onCompleted()V

    .line 377
    const/4 v1, 0x1

    .line 378
    invoke-virtual {p0}, Lrx/c/a/b$c;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    .line 447
    monitor-enter p0

    .line 448
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lrx/c/a/b$c;->f:Z

    .line 449
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    throw v0

    .line 344
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 381
    :cond_4
    :try_start_4
    invoke-static {v0}, Lrx/c/a/f;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 382
    invoke-static {v0}, Lrx/c/a/f;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 383
    const/4 v1, 0x1

    .line 384
    invoke-virtual {p0}, Lrx/c/a/b$c;->unsubscribe()V

    goto :goto_0

    .line 388
    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-lez v0, :cond_9

    .line 389
    const/4 v0, 0x0

    move v5, v3

    move v3, v0

    move v0, v2

    move-object v2, v4

    .line 391
    :goto_2
    if-ge v5, v9, :cond_8

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-lez v4, :cond_8

    .line 392
    invoke-virtual {v8}, Lrx/j;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 396
    if-ne v0, v10, :cond_6

    .line 397
    aget-object v0, v2, v10

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 398
    const/4 v2, 0x0

    move v14, v2

    move-object v2, v0

    move v0, v14

    .line 400
    :cond_6
    aget-object v4, v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    :try_start_5
    invoke-static {v8, v4}, Lrx/c/a/f;->a(Lrx/e;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 404
    const/4 v1, 0x1

    .line 405
    invoke-virtual {p0}, Lrx/c/a/b$c;->unsubscribe()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    :try_start_6
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 410
    const/4 v1, 0x1

    .line 411
    invoke-virtual {p0}, Lrx/c/a/b$c;->unsubscribe()V

    .line 412
    invoke-static {v4}, Lrx/c/a/f;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Lrx/c/a/f;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    invoke-static {v4}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 418
    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 421
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    .line 422
    goto :goto_2

    .line 424
    :cond_8
    invoke-virtual {v8}, Lrx/j;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    iput v5, p0, Lrx/c/a/b$c;->e:I

    .line 430
    iput v0, p0, Lrx/c/a/b$c;->d:I

    .line 431
    iput-object v2, p0, Lrx/c/a/b$c;->c:[Ljava/lang/Object;

    .line 432
    int-to-long v2, v3

    invoke-virtual {p0, v2, v3}, Lrx/c/a/b$c;->a(J)J

    .line 436
    :cond_9
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 437
    :try_start_7
    iget-boolean v0, p0, Lrx/c/a/b$c;->g:Z

    if-nez v0, :cond_a

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/b$c;->f:Z

    .line 439
    const/4 v1, 0x1

    .line 440
    monitor-exit p0

    goto/16 :goto_0

    .line 443
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 442
    :cond_a
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lrx/c/a/b$c;->g:Z

    .line 443
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    .line 449
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 320
    invoke-virtual {p0}, Lrx/c/a/b$c;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lrx/c/a/b$c;->get()J

    move-result-wide v2

    .line 296
    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_1
    add-long v0, v2, p1

    .line 300
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    .line 301
    const-wide v0, 0x7fffffffffffffffL

    .line 303
    :cond_2
    invoke-virtual {p0, v2, v3, v0, v1}, Lrx/c/a/b$c;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/c/a/b$c;->a()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 324
    invoke-virtual {p0}, Lrx/c/a/b$c;->get()J

    move-result-wide v0

    .line 325
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 326
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/a/b$c;->getAndSet(J)J

    move-result-wide v0

    .line 327
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 328
    iget-object v0, p0, Lrx/c/a/b$c;->b:Lrx/c/a/b$a;

    invoke-virtual {v0, p0}, Lrx/c/a/b$a;->b(Lrx/c/a/b$c;)V

    .line 331
    :cond_0
    return-void
.end method
