.class final Lrx/c/a/ag$e;
.super Lrx/j;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/j",
        "<",
        "Lrx/d",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final p:[Lrx/c/a/ag$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/c/a/ag$c",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field d:Lrx/c/a/ag$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ag$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Lrx/j/b;

.field volatile g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Z

.field i:Z

.field j:Z

.field final k:Ljava/lang/Object;

.field volatile l:[Lrx/c/a/ag$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/c/a/ag$c",
            "<*>;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field o:I

.field final q:I

.field r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/c/a/ag$c;

    sput-object v0, Lrx/c/a/ag$e;->p:[Lrx/c/a/ag$c;

    return-void
.end method

.method public constructor <init>(Lrx/j;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    .line 188
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 189
    iput-object p1, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    .line 190
    iput-boolean p2, p0, Lrx/c/a/ag$e;->b:Z

    .line 191
    iput p3, p0, Lrx/c/a/ag$e;->c:I

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/c/a/ag$e;->k:Ljava/lang/Object;

    .line 193
    sget-object v0, Lrx/c/a/ag$e;->p:[Lrx/c/a/ag$c;

    iput-object v0, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 194
    if-ne p3, v1, :cond_0

    .line 195
    iput v1, p0, Lrx/c/a/ag$e;->q:I

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/c/a/ag$e;->request(J)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/c/a/ag$e;->q:I

    .line 199
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/c/a/ag$e;->request(J)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 205
    if-nez v0, :cond_1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 210
    iput-object v0, p0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 212
    :cond_0
    monitor-exit p0

    .line 214
    :cond_1
    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2}, Lrx/c/a/ag$e;->request(J)V

    .line 438
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 451
    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v0}, Lrx/c/a/ag$d;->get()J

    move-result-wide v0

    .line 453
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 454
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v0}, Lrx/c/a/ag$d;->get()J

    move-result-wide v0

    .line 457
    iget-boolean v4, p0, Lrx/c/a/ag$e;->i:Z

    if-nez v4, :cond_0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/c/a/ag$e;->i:Z

    move v2, v3

    .line 461
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_1
    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lrx/c/a/ag$e;->e:Ljava/util/Queue;

    .line 465
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lrx/c/a/ag$e;->a(Ljava/lang/Object;J)V

    .line 475
    :goto_0
    return-void

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 468
    :cond_3
    invoke-virtual {p0, p1}, Lrx/c/a/ag$e;->b(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p0}, Lrx/c/a/ag$e;->e()V

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0, p1}, Lrx/c/a/ag$e;->b(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Lrx/c/a/ag$e;->d()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 508
    .line 511
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 523
    :try_start_1
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lrx/c/a/ag$d;->a(I)J

    .line 526
    :cond_0
    iget v0, p0, Lrx/c/a/ag$e;->r:I

    add-int/lit8 v0, v0, 0x1

    .line 527
    iget v3, p0, Lrx/c/a/ag$e;->q:I

    if-ne v0, v3, :cond_3

    .line 528
    const/4 v3, 0x0

    iput v3, p0, Lrx/c/a/ag$e;->r:I

    .line 529
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lrx/c/a/ag$e;->a(J)V

    .line 535
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    :try_start_2
    iget-boolean v0, p0, Lrx/c/a/ag$e;->j:Z

    if-nez v0, :cond_4

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/ag$e;->i:Z

    .line 539
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 558
    :goto_2
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    :try_start_3
    iget-boolean v3, p0, Lrx/c/a/ag$e;->b:Z

    if-nez v3, :cond_2

    .line 514
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    :try_start_4
    invoke-virtual {p0}, Lrx/c/a/ag$e;->unsubscribe()V

    .line 517
    invoke-virtual {p0, v0}, Lrx/c/a/ag$e;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 544
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-nez v1, :cond_1

    .line 545
    monitor-enter p0

    .line 546
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lrx/c/a/ag$e;->i:Z

    .line 547
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    throw v0

    .line 520
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/c/a/ag$e;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 531
    :cond_3
    iput v0, p0, Lrx/c/a/ag$e;->r:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 541
    :cond_4
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lrx/c/a/ag$e;->j:Z

    .line 542
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 557
    invoke-virtual {p0}, Lrx/c/a/ag$e;->e()V

    goto :goto_2

    .line 542
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 547
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method a(Lrx/c/a/ag$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ag$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lrx/c/a/ag$e;->b()Lrx/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/j/b;->a(Lrx/k;)V

    .line 286
    iget-object v1, p0, Lrx/c/a/ag$e;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 288
    array-length v2, v0

    .line 289
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lrx/c/a/ag$c;

    .line 290
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    aput-object p1, v3, v2

    .line 292
    iput-object v3, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lrx/c/a/ag$c;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ag$c",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 340
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v0}, Lrx/c/a/ag$d;->get()J

    move-result-wide v0

    .line 342
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v0}, Lrx/c/a/ag$d;->get()J

    move-result-wide v0

    .line 346
    iget-boolean v4, p0, Lrx/c/a/ag$e;->i:Z

    if-nez v4, :cond_0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 347
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/c/a/ag$e;->i:Z

    move v2, v3

    .line 350
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_1
    if-eqz v2, :cond_4

    .line 353
    iget-object v2, p1, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 354
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lrx/c/e/h;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/c/a/ag$e;->a(Lrx/c/a/ag$c;Ljava/lang/Object;J)V

    .line 364
    :goto_0
    return-void

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 357
    :cond_3
    invoke-virtual {p0, p1, p2}, Lrx/c/a/ag$e;->b(Lrx/c/a/ag$c;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lrx/c/a/ag$e;->e()V

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {p0, p1, p2}, Lrx/c/a/ag$e;->b(Lrx/c/a/ag$c;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lrx/c/a/ag$e;->d()V

    goto :goto_0
.end method

.method protected a(Lrx/c/a/ag$c;Ljava/lang/Object;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ag$c",
            "<TT;>;TT;J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 392
    .line 395
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    invoke-virtual {v0, p2}, Lrx/j;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_0

    .line 407
    :try_start_1
    iget-object v0, p0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lrx/c/a/ag$d;->a(I)J

    .line 409
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Lrx/c/a/ag$c;->a(J)V

    .line 411
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :try_start_2
    iget-boolean v0, p0, Lrx/c/a/ag$e;->j:Z

    if-nez v0, :cond_3

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/ag$e;->i:Z

    .line 415
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 434
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    :try_start_3
    iget-boolean v3, p0, Lrx/c/a/ag$e;->b:Z

    if-nez v3, :cond_2

    .line 398
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    :try_start_4
    invoke-virtual {p1}, Lrx/c/a/ag$c;->unsubscribe()V

    .line 401
    invoke-virtual {p1, v0}, Lrx/c/a/ag$c;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 420
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-nez v1, :cond_1

    .line 421
    monitor-enter p0

    .line 422
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lrx/c/a/ag$e;->i:Z

    .line 423
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    throw v0

    .line 404
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/c/a/ag$e;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 420
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 417
    :cond_3
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lrx/c/a/ag$e;->j:Z

    .line 418
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 433
    invoke-virtual {p0}, Lrx/c/a/ag$e;->e()V

    goto :goto_1

    .line 418
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 423
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public a(Lrx/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lrx/c/a/ag$e;->c()V

    goto :goto_0

    .line 243
    :cond_1
    instance-of v0, p1, Lrx/c/e/j;

    if-eqz v0, :cond_2

    .line 244
    check-cast p1, Lrx/c/e/j;

    invoke-virtual {p1}, Lrx/c/e/j;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/a/ag$e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Lrx/c/a/ag$c;

    iget-wide v2, p0, Lrx/c/a/ag$e;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/c/a/ag$e;->m:J

    invoke-direct {v0, p0, v2, v3}, Lrx/c/a/ag$c;-><init>(Lrx/c/a/ag$e;J)V

    .line 247
    invoke-virtual {p0, v0}, Lrx/c/a/ag$e;->a(Lrx/c/a/ag$c;)V

    .line 248
    invoke-virtual {p1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 249
    invoke-virtual {p0}, Lrx/c/a/ag$e;->d()V

    goto :goto_0
.end method

.method b()Lrx/j/b;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lrx/c/a/ag$e;->f:Lrx/j/b;

    .line 218
    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v1, p0, Lrx/c/a/ag$e;->f:Lrx/j/b;

    .line 222
    if-nez v1, :cond_1

    .line 223
    new-instance v1, Lrx/j/b;

    invoke-direct {v1}, Lrx/j/b;-><init>()V

    .line 224
    iput-object v1, p0, Lrx/c/a/ag$e;->f:Lrx/j/b;

    .line 225
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    move v1, v2

    .line 227
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lrx/c/a/ag$e;->add(Lrx/k;)V

    .line 232
    :cond_0
    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, v0

    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lrx/c/a/ag$e;->e:Ljava/util/Queue;

    .line 484
    if-nez v0, :cond_0

    .line 485
    iget v1, p0, Lrx/c/a/ag$e;->c:I

    .line 486
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_2

    .line 487
    new-instance v0, Lrx/c/e/a/e;

    sget v1, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1}, Lrx/c/e/a/e;-><init>(I)V

    .line 499
    :goto_0
    iput-object v0, p0, Lrx/c/a/ag$e;->e:Ljava/util/Queue;

    .line 501
    :cond_0
    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lrx/c/a/ag$e;->unsubscribe()V

    .line 503
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/a/ag$e;->onError(Ljava/lang/Throwable;)V

    .line 505
    :cond_1
    return-void

    .line 489
    :cond_2
    invoke-static {v1}, Lrx/c/e/b/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    invoke-static {}, Lrx/c/e/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    new-instance v0, Lrx/c/e/b/l;

    invoke-direct {v0, v1}, Lrx/c/e/b/l;-><init>(I)V

    goto :goto_0

    .line 493
    :cond_3
    new-instance v0, Lrx/c/e/a/b;

    invoke-direct {v0, v1}, Lrx/c/e/a/b;-><init>(I)V

    goto :goto_0

    .line 496
    :cond_4
    new-instance v0, Lrx/c/e/a/c;

    invoke-direct {v0, v1}, Lrx/c/e/a/c;-><init>(I)V

    goto :goto_0
.end method

.method b(Lrx/c/a/ag$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ag$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p1, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 297
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Lrx/c/e/h;->c()V

    .line 302
    :cond_0
    iget-object v1, p0, Lrx/c/a/ag$e;->f:Lrx/j/b;

    invoke-virtual {v1, p1}, Lrx/j/b;->b(Lrx/k;)V

    .line 303
    iget-object v2, p0, Lrx/c/a/ag$e;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v3, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 305
    array-length v4, v3

    .line 306
    const/4 v1, -0x1

    .line 308
    :goto_0
    if-ge v0, v4, :cond_4

    .line 309
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 314
    :goto_1
    if-gez v0, :cond_2

    .line 315
    monitor-exit v2

    .line 326
    :goto_2
    return-void

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    .line 318
    sget-object v0, Lrx/c/a/ag$e;->p:[Lrx/c/a/ag$c;

    iput-object v0, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 319
    monitor-exit v2

    goto :goto_2

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 321
    :cond_3
    add-int/lit8 v1, v4, -0x1

    :try_start_1
    new-array v1, v1, [Lrx/c/a/ag$c;

    .line 322
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iput-object v1, p0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 325
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected b(Lrx/c/a/ag$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ag$c",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p1, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lrx/c/e/h;->a()Lrx/c/e/h;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Lrx/c/a/ag$c;->add(Lrx/k;)V

    .line 376
    iput-object v0, p1, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 379
    :cond_0
    :try_start_0
    invoke-static {p2}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c/e/h;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {p1}, Lrx/c/a/ag$c;->unsubscribe()V

    .line 382
    invoke-virtual {p1, v0}, Lrx/c/a/ag$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    .line 384
    invoke-virtual {p1}, Lrx/c/a/ag$c;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {p1}, Lrx/c/a/ag$c;->unsubscribe()V

    .line 386
    invoke-virtual {p1, v0}, Lrx/c/a/ag$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lrx/c/a/ag$e;->r:I

    add-int/lit8 v0, v0, 0x1

    .line 255
    iget v1, p0, Lrx/c/a/ag$e;->q:I

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lrx/c/a/ag$e;->r:I

    .line 257
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/ag$e;->a(J)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iput v0, p0, Lrx/c/a/ag$e;->r:I

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lrx/c/a/ag$e;->i:Z

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ag$e;->j:Z

    .line 564
    monitor-exit p0

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ag$e;->i:Z

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {p0}, Lrx/c/a/ag$e;->e()V

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e()V
    .locals 21

    .prologue
    .line 574
    const/4 v3, 0x0

    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/c/a/ag$e;->a:Lrx/j;

    .line 579
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    :cond_1
    :goto_1
    return-void

    .line 583
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/c/a/ag$e;->e:Ljava/util/Queue;

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v2}, Lrx/c/a/ag$d;->get()J

    move-result-wide v4

    .line 586
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move v13, v2

    .line 589
    :goto_2
    const/4 v2, 0x0

    .line 592
    if-eqz v9, :cond_23

    .line 594
    :cond_3
    const/4 v7, 0x0

    .line 595
    const/4 v6, 0x0

    .line 596
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-lez v8, :cond_4

    .line 597
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 599
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->f()Z

    move-result v8

    if-nez v8, :cond_1

    .line 603
    if-nez v6, :cond_a

    .line 624
    :cond_4
    if-lez v7, :cond_5

    .line 625
    if-eqz v13, :cond_c

    .line 626
    const-wide v4, 0x7fffffffffffffffL

    .line 631
    :cond_5
    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_23

    if-nez v6, :cond_3

    move-wide v8, v4

    move v5, v2

    .line 643
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/ag$e;->h:Z

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/ag$e;->e:Ljava/util/Queue;

    .line 648
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/c/a/ag$e;->l:[Lrx/c/a/ag$c;

    .line 649
    array-length v0, v15

    move/from16 v16, v0

    .line 653
    if-eqz v2, :cond_e

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    if-nez v16, :cond_e

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 655
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 656
    :cond_7
    invoke-virtual {v14}, Lrx/j;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 798
    :catchall_0
    move-exception v2

    if-nez v3, :cond_8

    .line 799
    monitor-enter p0

    .line 800
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lrx/c/a/ag$e;->i:Z

    .line 801
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_8
    throw v2

    .line 586
    :cond_9
    const/4 v2, 0x0

    move v13, v2

    goto :goto_2

    .line 606
    :cond_a
    :try_start_2
    invoke-static {v6}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 609
    :try_start_3
    invoke-virtual {v14, v8}, Lrx/j;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    :goto_6
    add-int/lit8 v8, v2, 0x1

    .line 621
    add-int/lit8 v2, v7, 0x1

    .line 622
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    move v7, v2

    move v2, v8

    .line 623
    goto :goto_3

    .line 610
    :catch_0
    move-exception v8

    .line 611
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lrx/c/a/ag$e;->b:Z

    if-nez v10, :cond_b

    .line 612
    invoke-static {v8}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 613
    const/4 v3, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->unsubscribe()V

    .line 615
    invoke-virtual {v14, v8}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 618
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->a()Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_6

    .line 628
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v4, v7}, Lrx/c/a/ag$d;->a(I)J

    move-result-wide v4

    goto :goto_4

    .line 658
    :cond_d
    invoke-direct/range {p0 .. p0}, Lrx/c/a/ag$e;->g()V

    goto/16 :goto_1

    .line 664
    :cond_e
    const/4 v4, 0x0

    .line 665
    if-lez v16, :cond_22

    .line 667
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/c/a/ag$e;->n:J

    .line 668
    move-object/from16 v0, p0

    iget v2, v0, Lrx/c/a/ag$e;->o:I

    .line 672
    move/from16 v0, v16

    if-le v0, v2, :cond_f

    aget-object v6, v15, v2

    iget-wide v6, v6, Lrx/c/a/ag$c;->b:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_12

    .line 673
    :cond_f
    move/from16 v0, v16

    if-gt v0, v2, :cond_10

    .line 674
    const/4 v2, 0x0

    .line 678
    :cond_10
    const/4 v6, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v6, v0, :cond_11

    .line 679
    aget-object v7, v15, v2

    iget-wide v0, v7, Lrx/c/a/ag$c;->b:J

    move-wide/from16 v18, v0

    cmp-long v7, v18, v10

    if-nez v7, :cond_1a

    .line 691
    :cond_11
    move-object/from16 v0, p0

    iput v2, v0, Lrx/c/a/ag$e;->o:I

    .line 692
    aget-object v6, v15, v2

    iget-wide v6, v6, Lrx/c/a/ag$c;->b:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/c/a/ag$e;->n:J

    .line 697
    :cond_12
    const/4 v6, 0x0

    move v12, v2

    move v7, v5

    move/from16 v20, v4

    move-wide v4, v8

    move v9, v6

    move/from16 v6, v20

    :goto_8
    move/from16 v0, v16

    if-ge v9, v0, :cond_21

    .line 699
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    aget-object v17, v15, v12

    .line 706
    const/4 v2, 0x0

    .line 708
    :cond_13
    const/4 v8, 0x0

    .line 709
    :goto_9
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_14

    .line 711
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->f()Z

    move-result v10

    if-nez v10, :cond_1

    .line 715
    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 716
    if-nez v10, :cond_1c

    .line 740
    :cond_14
    if-lez v8, :cond_15

    .line 741
    if-nez v13, :cond_1d

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    invoke-virtual {v4, v8}, Lrx/c/a/ag$d;->a(I)J

    move-result-wide v4

    .line 746
    :goto_a
    int-to-long v10, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lrx/c/a/ag$c;->a(J)V

    .line 749
    :cond_15
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_16

    if-nez v2, :cond_13

    .line 753
    :cond_16
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lrx/c/a/ag$c;->c:Z

    .line 754
    move-object/from16 v0, v17

    iget-object v8, v0, Lrx/c/a/ag$c;->d:Lrx/c/e/h;

    .line 755
    if-eqz v2, :cond_18

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lrx/c/e/h;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 756
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/c/a/ag$e;->b(Lrx/c/a/ag$c;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 761
    add-int/lit8 v7, v7, 0x1

    .line 762
    const/4 v6, 0x1

    .line 765
    :cond_18
    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-nez v2, :cond_1e

    move v2, v6

    move v4, v7

    .line 776
    :goto_b
    move-object/from16 v0, p0

    iput v12, v0, Lrx/c/a/ag$e;->o:I

    .line 777
    aget-object v5, v15, v12

    iget-wide v6, v5, Lrx/c/a/ag$c;->b:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/c/a/ag$e;->n:J

    .line 780
    :goto_c
    if-lez v4, :cond_19

    .line 781
    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lrx/c/a/ag$e;->request(J)V

    .line 784
    :cond_19
    if-nez v2, :cond_0

    .line 788
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 789
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/ag$e;->j:Z

    if-nez v2, :cond_20

    .line 790
    const/4 v3, 0x1

    .line 791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/ag$e;->i:Z

    .line 792
    monitor-exit p0

    goto/16 :goto_1

    .line 795
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 683
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 684
    move/from16 v0, v16

    if-ne v2, v0, :cond_1b

    .line 685
    const/4 v2, 0x0

    .line 678
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 719
    :cond_1c
    invoke-virtual {v10}, Lrx/c/e/h;->f()Ljava/lang/Object;

    move-result-object v2

    .line 720
    if-eqz v2, :cond_14

    .line 723
    invoke-static {v2}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    .line 726
    :try_start_7
    invoke-virtual {v14, v10}, Lrx/j;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 737
    const-wide/16 v10, 0x1

    sub-long v10, v4, v10

    .line 738
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v10

    .line 739
    goto/16 :goto_9

    .line 727
    :catch_1
    move-exception v2

    .line 728
    const/4 v3, 0x1

    .line 729
    :try_start_8
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 731
    :try_start_9
    invoke-virtual {v14, v2}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 733
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->unsubscribe()V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lrx/c/a/ag$e;->unsubscribe()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 744
    :cond_1d
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_a

    .line 770
    :cond_1e
    add-int/lit8 v2, v12, 0x1

    .line 771
    move/from16 v0, v16

    if-ne v2, v0, :cond_1f

    .line 772
    const/4 v2, 0x0

    .line 697
    :cond_1f
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v12, v2

    goto/16 :goto_8

    .line 794
    :cond_20
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/ag$e;->j:Z

    .line 795
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 801
    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v2

    :cond_21
    move v2, v6

    move v4, v7

    goto :goto_b

    :cond_22
    move v2, v4

    move v4, v5

    goto :goto_c

    :cond_23
    move-wide v8, v4

    move v5, v2

    goto/16 :goto_5
.end method

.method f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 812
    iget-object v1, p0, Lrx/c/a/ag$e;->a:Lrx/j;

    invoke-virtual {v1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    :goto_0
    return v0

    .line 815
    :cond_0
    iget-object v1, p0, Lrx/c/a/ag$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 816
    iget-boolean v2, p0, Lrx/c/a/ag$e;->b:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    :try_start_0
    invoke-direct {p0}, Lrx/c/a/ag$e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {p0}, Lrx/c/a/ag$e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/c/a/ag$e;->unsubscribe()V

    throw v0

    .line 824
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ag$e;->h:Z

    .line 281
    invoke-virtual {p0}, Lrx/c/a/ag$e;->d()V

    .line 282
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lrx/c/a/ag$e;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ag$e;->h:Z

    .line 276
    invoke-virtual {p0}, Lrx/c/a/ag$e;->d()V

    .line 277
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lrx/d;

    invoke-virtual {p0, p1}, Lrx/c/a/ag$e;->a(Lrx/d;)V

    return-void
.end method
