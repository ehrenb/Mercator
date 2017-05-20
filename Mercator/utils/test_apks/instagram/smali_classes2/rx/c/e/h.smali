.class public Lrx/c/e/h;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/k;


# static fields
.field public static final b:I


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 243
    const/16 v0, 0x80

    .line 246
    invoke-static {}, Lrx/c/e/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_0
    const-string v1, "rx.ring-buffer.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :cond_1
    :goto_0
    sput v0, Lrx/c/e/h;->b:I

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v2

    .line 256
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lrx/c/e/a/b;

    sget v1, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1}, Lrx/c/e/a/b;-><init>(I)V

    sget v1, Lrx/c/e/h;->b:I

    invoke-direct {p0, v0, v1}, Lrx/c/e/h;-><init>(Ljava/util/Queue;I)V

    .line 301
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 282
    iput p2, p0, Lrx/c/e/h;->d:I

    .line 283
    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-eqz p1, :cond_0

    new-instance v0, Lrx/c/e/b/d;

    invoke-direct {v0, p2}, Lrx/c/e/b/d;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 287
    iput p2, p0, Lrx/c/e/h;->d:I

    .line 288
    return-void

    .line 286
    :cond_0
    new-instance v0, Lrx/c/e/b/l;

    invoke-direct {v0, p2}, Lrx/c/e/b/l;-><init>(I)V

    goto :goto_0
.end method

.method public static a()Lrx/c/e/h;
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Lrx/c/e/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lrx/c/e/h;

    const/4 v1, 0x0

    sget v2, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1, v2}, Lrx/c/e/h;-><init>(ZI)V

    .line 268
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/e/h;

    invoke-direct {v0}, Lrx/c/e/h;-><init>()V

    goto :goto_0
.end method

.method public static b()Lrx/c/e/h;
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lrx/c/e/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lrx/c/e/h;

    const/4 v1, 0x1

    sget v2, Lrx/c/e/h;->b:I

    invoke-direct {v0, v1, v2}, Lrx/c/e/h;-><init>(ZI)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/e/h;

    invoke-direct {v0}, Lrx/c/e/h;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v2, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 314
    if-eqz v2, :cond_1

    .line 315
    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v1, :cond_2

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 315
    goto :goto_0

    :cond_1
    move v4, v1

    move v1, v0

    move v0, v4

    .line 317
    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 324
    :cond_2
    if-eqz v0, :cond_3

    .line 325
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v0

    .line 327
    :cond_3
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 402
    invoke-static {p1}, Lrx/c/a/f;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-static {p1}, Lrx/c/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 0

    .prologue
    .line 292
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lrx/c/e/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lrx/c/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/c/e/h;->a:Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 361
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v2, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 368
    if-nez v2, :cond_0

    .line 370
    monitor-exit p0

    .line 381
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lrx/c/e/h;->a:Ljava/lang/Object;

    .line 375
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/c/e/h;->a:Ljava/lang/Object;

    .line 380
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public g()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v2, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    .line 388
    if-nez v2, :cond_0

    .line 390
    const/4 v0, 0x0

    monitor-exit p0

    .line 398
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 393
    iget-object v0, p0, Lrx/c/e/h;->a:Ljava/lang/Object;

    .line 394
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 397
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lrx/c/e/h;->c:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lrx/c/e/h;->c()V

    .line 297
    return-void
.end method
