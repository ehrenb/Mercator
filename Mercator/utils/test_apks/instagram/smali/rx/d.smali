.class public Lrx/d;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/d$c;,
        Lrx/d$b;,
        Lrx/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lrx/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/d;->a:Lrx/d$a;

    .line 62
    return-void
.end method

.method public static a(II)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3464
    if-gez p1, :cond_0

    .line 3465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3467
    :cond_0
    if-nez p1, :cond_1

    .line 3468
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 3476
    :goto_0
    return-object v0

    .line 3470
    :cond_1
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_2

    .line 3471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3473
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3474
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 3476
    :cond_3
    new-instance v0, Lrx/c/a/s;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lrx/c/a/s;-><init>(II)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(JJLjava/util/concurrent/TimeUnit;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2112
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/d;->a(JJLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2143
    new-instance v1, Lrx/c/a/x;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/c/a/x;-><init>(JJLjava/util/concurrent/TimeUnit;Lrx/g;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1932
    new-instance v0, Lrx/c/a/p;

    invoke-direct {v0, p0}, Lrx/c/a/p;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2173
    invoke-static {p0}, Lrx/c/e/j;->e(Ljava/lang/Object;)Lrx/c/e/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/d;->a([Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1811
    new-instance v0, Lrx/c/a/w;

    invoke-direct {v0, p0}, Lrx/c/a/w;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Lrx/b/i;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lrx/d",
            "<+TT;>;>;",
            "Lrx/b/i",
            "<+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1023
    new-instance v0, Lrx/c/a/g;

    invoke-direct {v0, p0, p1}, Lrx/c/a/g;-><init>(Ljava/lang/Iterable;Lrx/b/i;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2036
    new-instance v0, Lrx/c/a/o;

    invoke-direct {v0, p0}, Lrx/c/a/o;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/b/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/d",
            "<",
            "Lrx/d",
            "<TT;>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1765
    new-instance v0, Lrx/c/a/i;

    invoke-direct {v0, p0}, Lrx/c/a/i;-><init>(Lrx/b/d;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d$a;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$a",
            "<TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/d;

    invoke-static {p0}, Lrx/f/c;->a(Lrx/d$a;)Lrx/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/d;-><init>(Lrx/d$a;)V

    return-object v0
.end method

.method public static a(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+",
            "Lrx/d",
            "<+TT;>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1136
    invoke-static {}, Lrx/c/e/m;->b()Lrx/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d;Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1164
    invoke-static {p0, p1}, Lrx/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d;Lrx/d;Lrx/b/f;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT1;>;",
            "Lrx/d",
            "<+TT2;>;",
            "Lrx/b/f",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lrx/b/j;->a(Lrx/b/f;)Lrx/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/d;->a(Ljava/util/List;Lrx/b/i;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d;Lrx/d;Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2663
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/d;->a([Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1955
    array-length v0, p0

    .line 1956
    if-nez v0, :cond_0

    .line 1957
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 1962
    :goto_0
    return-object v0

    .line 1959
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1960
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 1962
    :cond_1
    new-instance v0, Lrx/c/a/n;

    invoke-direct {v0, p0}, Lrx/c/a/n;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2910
    invoke-static {p0}, Lrx/d;->a([Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static a(Lrx/j;Lrx/d;)Lrx/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<-TT;>;",
            "Lrx/d",
            "<TT;>;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 10210
    if-nez p0, :cond_0

    .line 10211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10213
    :cond_0
    iget-object v0, p1, Lrx/d;->a:Lrx/d$a;

    if-nez v0, :cond_1

    .line 10214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10222
    :cond_1
    invoke-virtual {p0}, Lrx/j;->onStart()V

    .line 10229
    instance-of v0, p0, Lrx/e/c;

    if-nez v0, :cond_2

    .line 10231
    new-instance v0, Lrx/e/c;

    invoke-direct {v0, p0}, Lrx/e/c;-><init>(Lrx/j;)V

    move-object p0, v0

    .line 10238
    :cond_2
    :try_start_0
    iget-object v0, p1, Lrx/d;->a:Lrx/d$a;

    invoke-static {p1, v0}, Lrx/f/c;->a(Lrx/d;Lrx/d$a;)Lrx/d$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/d$a;->call(Ljava/lang/Object;)V

    .line 10239
    invoke-static {p0}, Lrx/f/c;->a(Lrx/k;)Lrx/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10261
    :goto_0
    return-object v0

    .line 10240
    :catch_0
    move-exception v0

    .line 10242
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10244
    invoke-virtual {p0}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10245
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 10261
    :goto_1
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    goto :goto_0

    .line 10249
    :cond_3
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10250
    :catch_1
    move-exception v1

    .line 10251
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10254
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10256
    invoke-static {v2}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10258
    throw v2
.end method

.method public static b(Ljava/lang/Iterable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/d",
            "<+TT;>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2505
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+",
            "Lrx/d",
            "<+TT;>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/c/e/j;

    if-ne v0, v1, :cond_0

    .line 2566
    check-cast p0, Lrx/c/e/j;

    invoke-static {}, Lrx/c/e/m;->b()Lrx/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/e/j;->m(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 2568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/c/a/ag;->a(Z)Lrx/c/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lrx/d;Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2633
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/d;->a([Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/d;Lrx/d;Lrx/b/f;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT1;>;",
            "Lrx/d",
            "<+TT2;>;",
            "Lrx/b/f",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4005
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    new-instance v1, Lrx/c/a/ax;

    invoke-direct {v1, p2}, Lrx/c/a/ax;-><init>(Lrx/b/f;)V

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1787
    invoke-static {}, Lrx/c/a/e;->a()Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9435
    new-instance v0, Lrx/c/a/am;

    invoke-direct {v0, p1}, Lrx/c/a/am;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5508
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/d;Lrx/g;)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11295
    new-instance v1, Lrx/c/a/as;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/c/a/as;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/d;Lrx/g;)V

    invoke-virtual {p0, v1}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5533
    new-instance v0, Lrx/c/a/ab;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/c/a/ab;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5038
    new-instance v0, Lrx/c/a/aa;

    invoke-direct {v0, p1}, Lrx/c/a/aa;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/a;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5797
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 5798
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v1

    .line 5799
    new-instance v2, Lrx/c/e/a;

    invoke-direct {v2, v0, v1, p1}, Lrx/c/e/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    .line 5801
    new-instance v0, Lrx/c/a/k;

    invoke-direct {v0, p0, v2}, Lrx/c/a/k;-><init>(Lrx/d;Lrx/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/b;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5874
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 5875
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v1

    .line 5876
    new-instance v2, Lrx/c/e/a;

    invoke-direct {v2, v0, p1, v1}, Lrx/c/e/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    .line 5878
    new-instance v0, Lrx/c/a/k;

    invoke-direct {v0, p0, v2}, Lrx/c/a/k;-><init>(Lrx/d;Lrx/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/e;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/d",
            "<+TR;>;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5102
    instance-of v0, p0, Lrx/c/e/j;

    if-eqz v0, :cond_0

    .line 5103
    check-cast p0, Lrx/c/e/j;

    .line 5104
    invoke-virtual {p0, p1}, Lrx/c/e/j;->m(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 5106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/a/h;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lrx/c/a/h;-><init>(Lrx/d;Lrx/b/e;II)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/b/e;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6965
    invoke-static {p0, p1, p2}, Lrx/c/a/m;->a(Lrx/d;Lrx/b/e;I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/f;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11663
    new-instance v0, Lrx/c/a/av;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lrx/c/a/av;-><init>(Lrx/b/f;I)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/d$b;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$b",
            "<+TR;-TT;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lrx/c/a/q;

    iget-object v1, p0, Lrx/d;->a:Lrx/d$a;

    invoke-direct {v0, v1, p1}, Lrx/c/a/q;-><init>(Lrx/d$a;Lrx/d$b;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/d$c;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d$c",
            "<-TT;+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-interface {p1, p0}, Lrx/d$c;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d;

    return-object v0
.end method

.method public final a(Lrx/d;Lrx/b/f;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT2;>;",
            "Lrx/b/f",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12643
    invoke-static {p0, p1, p2}, Lrx/d;->b(Lrx/d;Lrx/d;Lrx/b/f;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/g;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7615
    sget v0, Lrx/c/e/h;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/d;->a(Lrx/g;I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/g;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            "I)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lrx/d;->a(Lrx/g;ZI)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/g;ZI)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            "ZI)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7720
    instance-of v0, p0, Lrx/c/e/j;

    if-eqz v0, :cond_0

    .line 7721
    check-cast p0, Lrx/c/e/j;

    invoke-virtual {p0, p1}, Lrx/c/e/j;->d(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 7723
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/a/ah;

    invoke-direct {v0, p1, p2, p3}, Lrx/c/a/ah;-><init>(Lrx/g;ZI)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/b/b;Lrx/b/b;)Lrx/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 10037
    if-nez p1, :cond_0

    .line 10038
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10040
    :cond_0
    if-nez p2, :cond_1

    .line 10041
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10044
    :cond_1
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 10045
    new-instance v1, Lrx/c/e/b;

    invoke-direct {v1, p1, p2, v0}, Lrx/c/e/b;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    invoke-virtual {p0, v1}, Lrx/d;->b(Lrx/j;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/j;)Lrx/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 10140
    :try_start_0
    invoke-virtual {p1}, Lrx/j;->onStart()V

    .line 10142
    iget-object v0, p0, Lrx/d;->a:Lrx/d$a;

    invoke-static {p0, v0}, Lrx/f/c;->a(Lrx/d;Lrx/d$a;)Lrx/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/d$a;->call(Ljava/lang/Object;)V

    .line 10143
    invoke-static {p1}, Lrx/f/c;->a(Lrx/k;)Lrx/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10160
    :goto_0
    return-object v0

    .line 10144
    :catch_0
    move-exception v0

    .line 10146
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10149
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10160
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    goto :goto_0

    .line 10150
    :catch_1
    move-exception v1

    .line 10151
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10154
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10156
    invoke-static {v2}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10158
    throw v2
.end method

.method public final b(I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10381
    new-instance v0, Lrx/c/a/ap;

    invoke-direct {v0, p1}, Lrx/c/a/ap;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9120
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/d;->b(JLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;Lrx/g;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9148
    new-instance v0, Lrx/c/a/ak;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/c/a/ak;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5386
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->c(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b/a;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5953
    new-instance v0, Lrx/c/a/ae;

    invoke-direct {v0, p1}, Lrx/c/a/ae;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b/b;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5899
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 5900
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v1

    .line 5901
    new-instance v2, Lrx/c/e/a;

    invoke-direct {v2, p1, v0, v1}, Lrx/c/e/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    .line 5903
    new-instance v0, Lrx/c/a/k;

    invoke-direct {v0, p0, v2}, Lrx/c/a/k;-><init>(Lrx/d;Lrx/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+TU;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5750
    new-instance v0, Lrx/c/a/ad;

    invoke-direct {v0, p1}, Lrx/c/a/ad;-><init>(Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/g;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10286
    instance-of v0, p0, Lrx/c/e/j;

    if-eqz v0, :cond_0

    .line 10287
    check-cast p0, Lrx/c/e/j;

    invoke-virtual {p0, p1}, Lrx/c/e/j;->d(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 10289
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/a/an;

    invoke-direct {v0, p0, p1}, Lrx/c/a/an;-><init>(Lrx/d;Lrx/g;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lrx/h;

    invoke-static {p0}, Lrx/c/a/v;->a(Lrx/d;)Lrx/c/a/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/h;-><init>(Lrx/h$a;)V

    return-object v0
.end method

.method public final b(Lrx/j;)Lrx/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 10205
    invoke-static {p1, p0}, Lrx/d;->a(Lrx/j;Lrx/d;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lrx/a;
    .locals 1

    .prologue
    .line 346
    invoke-static {p0}, Lrx/a;->a(Lrx/d;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lrx/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11234
    const/4 v5, 0x0

    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;Lrx/d;Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/d;->d(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/b/a;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5979
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 5980
    invoke-static {p1}, Lrx/b/c;->a(Lrx/b/a;)Lrx/b/b;

    move-result-object v1

    .line 5982
    new-instance v2, Lrx/c/e/a;

    invoke-direct {v2, v0, v1, p1}, Lrx/c/e/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    .line 5984
    new-instance v0, Lrx/c/a/k;

    invoke-direct {v0, p0, v2}, Lrx/c/a/k;-><init>(Lrx/d;Lrx/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6560
    new-instance v0, Lrx/c/a/l;

    invoke-direct {v0, p0, p1}, Lrx/c/a/l;-><init>(Lrx/d;Lrx/b/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/d;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5413
    if-nez p1, :cond_0

    .line 5414
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alternate is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5416
    :cond_0
    new-instance v0, Lrx/c/a/ao;

    invoke-direct {v0, p1}, Lrx/c/a/ao;-><init>(Lrx/d;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/g;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11792
    new-instance v0, Lrx/c/a/aw;

    invoke-direct {v0, p1}, Lrx/c/a/aw;-><init>(Lrx/g;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7062
    invoke-virtual {p0, p1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 7063
    return-void
.end method

.method public final d(Ljava/lang/Object;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9383
    new-instance v0, Lrx/c/a/al;

    invoke-direct {v0, p1}, Lrx/c/a/al;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/b/a;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6013
    new-instance v0, Lrx/c/a/af;

    invoke-direct {v0, p1}, Lrx/c/a/af;-><init>(Lrx/b/a;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6654
    invoke-virtual {p0, p1}, Lrx/d;->k(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->m()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TU;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5631
    if-nez p1, :cond_0

    .line 5632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5634
    :cond_0
    new-instance v0, Lrx/c/a/j;

    invoke-direct {v0, p0, p1}, Lrx/c/a/j;-><init>(Lrx/d;Lrx/d;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/b/b;)Lrx/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 10004
    if-nez p1, :cond_0

    .line 10005
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10008
    :cond_0
    sget-object v0, Lrx/c/e/e;->g:Lrx/b/b;

    .line 10009
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v1

    .line 10010
    new-instance v2, Lrx/c/e/b;

    invoke-direct {v2, p1, v0, v1}, Lrx/c/e/b;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    invoke-virtual {p0, v2}, Lrx/d;->b(Lrx/j;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4524
    invoke-static {}, Lrx/c/a/z;->a()Lrx/c/a/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/b/e;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/d",
            "<+TR;>;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6731
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/c/e/j;

    if-ne v0, v1, :cond_0

    .line 6732
    check-cast p0, Lrx/c/e/j;

    invoke-virtual {p0, p1}, Lrx/c/e/j;->m(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 6734
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7581
    invoke-static {p0, p1}, Lrx/d;->b(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4941
    invoke-static {p0}, Lrx/c/a/b;->h(Lrx/d;)Lrx/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6932
    sget v0, Lrx/c/e/h;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/d;->a(Lrx/b/e;I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8010
    invoke-static {p1}, Lrx/c/a/ai;->a(Lrx/d;)Lrx/c/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5680
    invoke-static {}, Lrx/c/a/ac;->a()Lrx/c/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+TR;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7532
    new-instance v0, Lrx/c/a/r;

    invoke-direct {v0, p0, p1}, Lrx/c/a/r;-><init>(Lrx/d;Lrx/b/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TE;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10767
    new-instance v0, Lrx/c/a/aq;

    invoke-direct {v0, p1}, Lrx/c/a/aq;-><init>(Lrx/d;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5725
    invoke-static {}, Lrx/c/a/ad;->a()Lrx/c/a/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/d",
            "<+TT;>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7970
    new-instance v0, Lrx/c/a/ai;

    invoke-direct {v0, p1}, Lrx/c/a/ai;-><init>(Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->m()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8046
    invoke-static {p1}, Lrx/c/a/ai;->a(Lrx/b/e;)Lrx/c/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lrx/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8132
    invoke-static {p0}, Lrx/c/a/aj;->h(Lrx/d;)Lrx/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-",
            "Lrx/d",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/d",
            "<*>;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9064
    invoke-static {p1}, Lrx/c/e/e;->a(Lrx/b/e;)Lrx/b/e;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/c/a/t;->a(Lrx/d;Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8954
    invoke-static {p0}, Lrx/c/a/t;->a(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lrx/b/e;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10456
    invoke-virtual {p0, p1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9303
    invoke-virtual {p0}, Lrx/d;->j()Lrx/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/b;->q()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10820
    new-instance v0, Lrx/c/a/ar;

    invoke-direct {v0, p1}, Lrx/c/a/ar;-><init>(Lrx/b/e;)V

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9328
    invoke-static {}, Lrx/c/a/al;->a()Lrx/c/a/al;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lrx/k;
    .locals 4

    .prologue
    .line 9977
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 9978
    sget-object v1, Lrx/c/e/e;->g:Lrx/b/b;

    .line 9979
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v2

    .line 9980
    new-instance v3, Lrx/c/e/b;

    invoke-direct {v3, v0, v1, v2}, Lrx/c/e/b;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    invoke-virtual {p0, v3}, Lrx/d;->b(Lrx/j;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lrx/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11386
    invoke-static {p0}, Lrx/d/a;->a(Lrx/d;)Lrx/d/a;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11416
    invoke-static {}, Lrx/c/a/au;->a()Lrx/c/a/au;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->a(Lrx/d$b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
