.class final Lrx/c/a/aj$b;
.super Lrx/j;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/j",
        "<TT;>;",
        "Lrx/k;"
    }
.end annotation


# static fields
.field static final d:[Lrx/c/a/aj$a;

.field static final e:[Lrx/c/a/aj$a;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/a/aj$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/c/a/aj$a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Z

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    new-array v0, v1, [Lrx/c/a/aj$a;

    sput-object v0, Lrx/c/a/aj$b;->d:[Lrx/c/a/aj$a;

    .line 230
    new-array v0, v1, [Lrx/c/a/aj$a;

    sput-object v0, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/a/aj$b",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 246
    invoke-static {}, Lrx/c/e/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/c/e/b/l;

    sget v1, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1}, Lrx/c/e/b/l;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/c/a/aj$b;->a:Ljava/util/Queue;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/a/aj$b;->d:[Lrx/c/a/aj$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    iput-object p1, p0, Lrx/c/a/aj$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/c/a/aj$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    return-void

    .line 246
    :cond_0
    new-instance v0, Lrx/c/e/a/b;

    sget v1, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1}, Lrx/c/e/a/b;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lrx/c/a/aj$b$1;

    invoke-direct {v0, p0}, Lrx/c/a/aj$b$1;-><init>(Lrx/c/a/aj$b;)V

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/a/aj$b;->add(Lrx/k;)V

    .line 266
    return-void
.end method

.method a(Ljava/lang/Object;Z)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_3

    .line 403
    invoke-static {p1}, Lrx/c/a/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    if-eqz p2, :cond_3

    .line 408
    iget-object v0, p0, Lrx/c/a/aj$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    :try_start_0
    iget-object v0, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/aj$a;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 423
    iget-object v4, v4, Lrx/c/a/aj$a;->b:Lrx/j;

    invoke-virtual {v4}, Lrx/j;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lrx/c/a/aj$b;->unsubscribe()V

    move v0, v1

    .line 455
    :goto_1
    return v0

    .line 428
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/c/a/aj$b;->unsubscribe()V

    throw v0

    .line 434
    :cond_1
    invoke-static {p1}, Lrx/c/a/f;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    .line 437
    iget-object v0, p0, Lrx/c/a/aj$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    :try_start_1
    iget-object v0, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/aj$a;

    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 443
    iget-object v5, v5, Lrx/c/a/aj$a;->b:Lrx/j;

    invoke-virtual {v5, v3}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 448
    :cond_2
    invoke-virtual {p0}, Lrx/c/a/aj$b;->unsubscribe()V

    move v0, v1

    .line 451
    goto :goto_1

    .line 448
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lrx/c/a/aj$b;->unsubscribe()V

    throw v0

    :cond_3
    move v0, v2

    .line 455
    goto :goto_1
.end method

.method a(Lrx/c/a/aj$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/aj$a",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/aj$a;

    .line 325
    sget-object v2, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 329
    :cond_1
    array-length v2, v0

    .line 330
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lrx/c/a/aj$a;

    .line 331
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    aput-object p1, v3, v2

    .line 334
    iget-object v2, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 19

    .prologue
    .line 466
    monitor-enter p0

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/aj$b;->h:Z

    if-eqz v2, :cond_1

    .line 468
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/aj$b;->i:Z

    .line 469
    monitor-exit p0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/aj$b;->h:Z

    .line 473
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/aj$b;->i:Z

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    const/4 v6, 0x0

    .line 494
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/c/a/aj$b;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    .line 505
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lrx/c/a/aj$b;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    if-nez v7, :cond_a

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/c/a/aj$a;

    .line 519
    array-length v10, v2

    .line 521
    const-wide v8, 0x7fffffffffffffffL

    .line 523
    const/4 v4, 0x0

    .line 528
    array-length v11, v2

    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move-wide v4, v8

    move/from16 v8, v18

    :goto_2
    if-ge v8, v11, :cond_5

    aget-object v9, v2, v8

    .line 529
    invoke-virtual {v9}, Lrx/c/a/aj$a;->get()J

    move-result-wide v12

    .line 532
    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-ltz v9, :cond_4

    .line 533
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 528
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 474
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 536
    :cond_4
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v9, v12, v14

    if-nez v9, :cond_3

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 544
    :cond_5
    if-ne v10, v3, :cond_8

    .line 545
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/c/a/aj$b;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 549
    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lrx/c/a/aj$b;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    const-wide/16 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lrx/c/a/aj$b;->request(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 631
    :catchall_1
    move-exception v2

    :goto_5
    if-nez v6, :cond_6

    .line 633
    monitor-enter p0

    .line 634
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lrx/c/a/aj$b;->h:Z

    .line 635
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_6
    throw v2

    .line 549
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 561
    :cond_8
    const/4 v3, 0x0

    move v8, v3

    move v3, v7

    .line 562
    :goto_6
    int-to-long v10, v8

    cmp-long v7, v10, v4

    if-gez v7, :cond_10

    .line 563
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    .line 564
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/c/a/aj$b;->a:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 565
    if-nez v9, :cond_b

    const/4 v7, 0x1

    .line 567
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lrx/c/a/aj$b;->a(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    if-eqz v7, :cond_c

    move v2, v7

    .line 601
    :goto_8
    if-lez v8, :cond_9

    .line 602
    int-to-long v8, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/c/a/aj$b;->request(J)V

    .line 607
    :cond_9
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_a

    if-eqz v2, :cond_2

    .line 614
    :cond_a
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 618
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/c/a/aj$b;->i:Z

    if-nez v2, :cond_f

    .line 620
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/aj$b;->h:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 622
    const/4 v3, 0x1

    .line 623
    :try_start_7
    monitor-exit p0

    goto/16 :goto_0

    .line 627
    :catchall_2
    move-exception v2

    :goto_9
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 631
    :catchall_3
    move-exception v2

    move v6, v3

    goto :goto_5

    .line 565
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 576
    :cond_c
    :try_start_9
    invoke-static {v9}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 578
    array-length v11, v2

    const/4 v3, 0x0

    move v9, v3

    :goto_a
    if-ge v9, v11, :cond_e

    aget-object v12, v2, v9

    .line 583
    invoke-virtual {v12}, Lrx/c/a/aj$a;->get()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_d

    .line 585
    :try_start_a
    iget-object v3, v12, Lrx/c/a/aj$a;->b:Lrx/j;

    invoke-virtual {v3, v10}, Lrx/j;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 593
    const-wide/16 v14, 0x1

    :try_start_b
    invoke-virtual {v12, v14, v15}, Lrx/c/a/aj$a;->a(J)J

    .line 578
    :cond_d
    :goto_b
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_a

    .line 586
    :catch_0
    move-exception v3

    .line 588
    invoke-virtual {v12}, Lrx/c/a/aj$a;->unsubscribe()V

    .line 589
    iget-object v12, v12, Lrx/c/a/aj$a;->b:Lrx/j;

    invoke-static {v3, v12, v10}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_b

    .line 597
    :cond_e
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v7

    .line 598
    goto :goto_6

    .line 626
    :cond_f
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/c/a/aj$b;->i:Z

    .line 627
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    move v3, v6

    goto :goto_9

    .line 635
    :catchall_5
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v2

    :cond_10
    move v2, v3

    goto :goto_8
.end method

.method b(Lrx/c/a/aj$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/aj$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 350
    :cond_0
    iget-object v0, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/aj$a;

    .line 352
    sget-object v1, Lrx/c/a/aj$b;->d:[Lrx/c/a/aj$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lrx/c/a/aj$b;->e:[Lrx/c/a/aj$a;

    if-ne v0, v1, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    const/4 v2, -0x1

    .line 358
    array-length v4, v0

    move v1, v3

    .line 359
    :goto_1
    if-ge v1, v4, :cond_3

    .line 360
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v1

    .line 366
    :cond_3
    if-ltz v2, :cond_1

    .line 373
    const/4 v1, 0x1

    if-ne v4, v1, :cond_5

    .line 374
    sget-object v1, Lrx/c/a/aj$b;->d:[Lrx/c/a/aj$a;

    .line 384
    :goto_2
    iget-object v2, p0, Lrx/c/a/aj$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 359
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_5
    add-int/lit8 v1, v4, -0x1

    new-array v1, v1, [Lrx/c/a/aj$a;

    .line 379
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lrx/c/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    .line 305
    invoke-virtual {p0}, Lrx/c/a/aj$b;->b()V

    .line 307
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 291
    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/c/a/aj$b;->c:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lrx/c/a/aj$b;->b()V

    .line 296
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lrx/c/a/aj$b;->a:Ljava/util/Queue;

    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/c/a/aj$b;->onError(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lrx/c/a/aj$b;->b()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 272
    sget v0, Lrx/c/e/h;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/aj$b;->request(J)V

    .line 273
    return-void
.end method
