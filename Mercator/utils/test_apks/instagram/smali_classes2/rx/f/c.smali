.class public final Lrx/f/c;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field static volatile a:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/d$a;",
            "Lrx/d$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile c:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/h$a;",
            "Lrx/h$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile d:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/a$a;",
            "Lrx/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile e:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Lrx/d;",
            "Lrx/d$a;",
            "Lrx/d$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile f:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Lrx/h;",
            "Lrx/h$a;",
            "Lrx/h$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile g:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Lrx/a;",
            "Lrx/a$a;",
            "Lrx/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile h:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/g;",
            "Lrx/g;",
            ">;"
        }
    .end annotation
.end field

.field static volatile i:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/g;",
            "Lrx/g;",
            ">;"
        }
    .end annotation
.end field

.field static volatile j:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/b/a;",
            "Lrx/b/a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile k:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/k;",
            "Lrx/k;",
            ">;"
        }
    .end annotation
.end field

.field static volatile l:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/k;",
            "Lrx/k;",
            ">;"
        }
    .end annotation
.end field

.field static volatile m:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile n:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile o:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile p:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/d$b;",
            "Lrx/d$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile q:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/d$b;",
            "Lrx/d$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile r:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lrx/a$b;",
            "Lrx/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lrx/f/c;->a()V

    .line 89
    return-void
.end method

.method public static a(Lrx/a$a;)Lrx/a$a;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lrx/f/c;->d:Lrx/b/e;

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a$a;

    .line 368
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/a;Lrx/a$a;)Lrx/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a;",
            "Lrx/a$a;",
            ")",
            "Lrx/a$a;"
        }
    .end annotation

    .prologue
    .line 548
    sget-object v0, Lrx/f/c;->g:Lrx/b/f;

    .line 549
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0, p0, p1}, Lrx/b/f;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a$a;

    .line 552
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Lrx/b/a;)Lrx/b/a;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lrx/f/c;->j:Lrx/b/e;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b/a;

    .line 421
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/d$a;)Lrx/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$a",
            "<TT;>;)",
            "Lrx/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lrx/f/c;->b:Lrx/b/e;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d$a;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/d;Lrx/d$a;)Lrx/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;",
            "Lrx/d$a",
            "<TT;>;)",
            "Lrx/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, Lrx/f/c;->e:Lrx/b/f;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p0, p1}, Lrx/b/f;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d$a;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Lrx/d$b;)Lrx/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$b",
            "<TR;TT;>;)",
            "Lrx/d$b",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lrx/f/c;->p:Lrx/b/e;

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d$b;

    .line 479
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/g;)Lrx/g;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lrx/f/c;->h:Lrx/b/e;

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/g;

    .line 381
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/h$a;)Lrx/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h$a",
            "<TT;>;)",
            "Lrx/h$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lrx/f/c;->c:Lrx/b/e;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h$a;

    .line 355
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Lrx/h;Lrx/h$a;)Lrx/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h",
            "<TT;>;",
            "Lrx/h$a",
            "<TT;>;)",
            "Lrx/h$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lrx/f/c;->f:Lrx/b/f;

    .line 492
    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0, p0, p1}, Lrx/b/f;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h$a;

    .line 495
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Lrx/k;)Lrx/k;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lrx/f/c;->k:Lrx/b/e;

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/k;

    .line 450
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lrx/f/c$1;

    invoke-direct {v0}, Lrx/f/c$1;-><init>()V

    sput-object v0, Lrx/f/c;->a:Lrx/b/b;

    .line 109
    new-instance v0, Lrx/f/c$9;

    invoke-direct {v0}, Lrx/f/c$9;-><init>()V

    sput-object v0, Lrx/f/c;->e:Lrx/b/f;

    .line 116
    new-instance v0, Lrx/f/c$10;

    invoke-direct {v0}, Lrx/f/c$10;-><init>()V

    sput-object v0, Lrx/f/c;->k:Lrx/b/e;

    .line 123
    new-instance v0, Lrx/f/c$11;

    invoke-direct {v0}, Lrx/f/c$11;-><init>()V

    sput-object v0, Lrx/f/c;->f:Lrx/b/f;

    .line 138
    new-instance v0, Lrx/f/c$12;

    invoke-direct {v0}, Lrx/f/c$12;-><init>()V

    sput-object v0, Lrx/f/c;->l:Lrx/b/e;

    .line 145
    new-instance v0, Lrx/f/c$13;

    invoke-direct {v0}, Lrx/f/c$13;-><init>()V

    sput-object v0, Lrx/f/c;->g:Lrx/b/f;

    .line 152
    new-instance v0, Lrx/f/c$14;

    invoke-direct {v0}, Lrx/f/c$14;-><init>()V

    sput-object v0, Lrx/f/c;->j:Lrx/b/e;

    .line 159
    new-instance v0, Lrx/f/c$15;

    invoke-direct {v0}, Lrx/f/c$15;-><init>()V

    sput-object v0, Lrx/f/c;->m:Lrx/b/e;

    .line 166
    new-instance v0, Lrx/f/c$16;

    invoke-direct {v0}, Lrx/f/c$16;-><init>()V

    sput-object v0, Lrx/f/c;->p:Lrx/b/e;

    .line 173
    new-instance v0, Lrx/f/c$2;

    invoke-direct {v0}, Lrx/f/c$2;-><init>()V

    sput-object v0, Lrx/f/c;->n:Lrx/b/e;

    .line 180
    new-instance v0, Lrx/f/c$3;

    invoke-direct {v0}, Lrx/f/c$3;-><init>()V

    sput-object v0, Lrx/f/c;->q:Lrx/b/e;

    .line 187
    new-instance v0, Lrx/f/c$4;

    invoke-direct {v0}, Lrx/f/c$4;-><init>()V

    sput-object v0, Lrx/f/c;->o:Lrx/b/e;

    .line 194
    new-instance v0, Lrx/f/c$5;

    invoke-direct {v0}, Lrx/f/c$5;-><init>()V

    sput-object v0, Lrx/f/c;->r:Lrx/b/e;

    .line 201
    invoke-static {}, Lrx/f/c;->b()V

    .line 202
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 302
    sget-object v0, Lrx/f/c;->a:Lrx/b/b;

    .line 303
    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    invoke-interface {v0, p0}, Lrx/b/b;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 313
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    invoke-static {v0}, Lrx/f/c;->b(Ljava/lang/Throwable;)V

    .line 319
    :cond_0
    invoke-static {p0}, Lrx/f/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Lrx/d$b;)Lrx/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$b",
            "<TR;TT;>;)",
            "Lrx/d$b",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 533
    sget-object v0, Lrx/f/c;->q:Lrx/b/e;

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d$b;

    .line 537
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static b(Lrx/g;)Lrx/g;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lrx/f/c;->i:Lrx/b/e;

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/g;

    .line 394
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static b(Lrx/k;)Lrx/k;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lrx/f/c;->l:Lrx/b/e;

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/k;

    .line 508
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lrx/f/c$6;

    invoke-direct {v0}, Lrx/f/c$6;-><init>()V

    sput-object v0, Lrx/f/c;->b:Lrx/b/e;

    .line 213
    new-instance v0, Lrx/f/c$7;

    invoke-direct {v0}, Lrx/f/c$7;-><init>()V

    sput-object v0, Lrx/f/c;->c:Lrx/b/e;

    .line 220
    new-instance v0, Lrx/f/c$8;

    invoke-direct {v0}, Lrx/f/c$8;-><init>()V

    sput-object v0, Lrx/f/c;->d:Lrx/b/e;

    .line 226
    return-void
.end method

.method static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 325
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lrx/f/c;->m:Lrx/b/e;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lrx/f/c;->n:Lrx/b/e;

    .line 518
    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 521
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lrx/f/c;->o:Lrx/b/e;

    .line 562
    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 565
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
