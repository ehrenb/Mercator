.class public Lrx/h;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h$a;
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
.field final a:Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/f/c;->a(Lrx/h$a;)Lrx/h$a;

    move-result-object v0

    iput-object v0, p0, Lrx/h;->a:Lrx/h$a;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p0}, Lrx/c/e/k;->b(Ljava/lang/Object;)Lrx/c/e/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lrx/h$1;

    invoke-direct {v0, p0}, Lrx/h$1;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Lrx/c/a/az;

    invoke-direct {v0, p0}, Lrx/c/a/az;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/h$a;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h$a",
            "<TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lrx/h;

    invoke-direct {v0, p0}, Lrx/h;-><init>(Lrx/h$a;)V

    return-object v0
.end method

.method public static a(Lrx/h;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h",
            "<+",
            "Lrx/h",
            "<+TT;>;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 659
    instance-of v0, p0, Lrx/c/e/k;

    if-eqz v0, :cond_0

    .line 660
    check-cast p0, Lrx/c/e/k;

    invoke-static {}, Lrx/c/e/m;->b()Lrx/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c/e/k;->f(Lrx/b/e;)Lrx/h;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/h$3;

    invoke-direct {v0, p0}, Lrx/h$3;-><init>(Lrx/h;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lrx/h;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h",
            "<TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lrx/c/a/bf;

    iget-object v1, p0, Lrx/h;->a:Lrx/h$a;

    invoke-direct {v0, v1}, Lrx/c/a/bf;-><init>(Lrx/h$a;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2043
    invoke-static {p0}, Lrx/h;->b(Lrx/h;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/b;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2297
    if-nez p1, :cond_0

    .line 2298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2301
    :cond_0
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v0

    .line 2302
    new-instance v1, Lrx/c/a/ay;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/a/ay;-><init>(Lrx/h;Lrx/b/b;Lrx/b/b;)V

    invoke-static {v1}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/e;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/h",
            "<+TR;>;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1407
    instance-of v0, p0, Lrx/c/e/k;

    if-eqz v0, :cond_0

    .line 1408
    check-cast p0, Lrx/c/e/k;

    invoke-virtual {p0, p1}, Lrx/c/e/k;->f(Lrx/b/e;)Lrx/h;

    move-result-object v0

    .line 1410
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lrx/h;->d(Lrx/b/e;)Lrx/h;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Lrx/h;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/d;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<*>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2714
    if-nez p1, :cond_0

    .line 2715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2717
    :cond_0
    new-instance v0, Lrx/c/a/bd;

    invoke-direct {v0, p0, p1}, Lrx/c/a/bd;-><init>(Lrx/h;Lrx/d;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/g;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1914
    instance-of v0, p0, Lrx/c/e/k;

    if-eqz v0, :cond_0

    .line 1915
    check-cast p0, Lrx/c/e/k;

    invoke-virtual {p0, p1}, Lrx/c/e/k;->b(Lrx/g;)Lrx/h;

    move-result-object v0

    .line 1917
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/h$2;

    invoke-direct {v0, p0, p1}, Lrx/h$2;-><init>(Lrx/h;Lrx/g;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/i;)Lrx/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 1872
    if-nez p1, :cond_0

    .line 1873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "te is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1876
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/h;->a:Lrx/h$a;

    invoke-static {p0, v0}, Lrx/f/c;->a(Lrx/h;Lrx/h$a;)Lrx/h$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/h$a;->call(Ljava/lang/Object;)V

    .line 1877
    invoke-static {p1}, Lrx/f/c;->b(Lrx/k;)Lrx/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1893
    :goto_0
    return-object v0

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1882
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1893
    invoke-static {}, Lrx/j/e;->a()Lrx/k;

    move-result-object v0

    goto :goto_0

    .line 1883
    :catch_1
    move-exception v1

    .line 1884
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1887
    new-instance v2, Ljava/lang/RuntimeException;

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

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    invoke-static {v2}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1891
    throw v2
.end method

.method public final b(Lrx/b/e;)Lrx/d;
    .locals 1
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
    .line 1431
    invoke-virtual {p0, p1}, Lrx/h;->d(Lrx/b/e;)Lrx/h;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->b(Lrx/h;)Lrx/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lrx/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2183
    invoke-static {p0}, Lrx/h/a;->a(Lrx/h;)Lrx/h/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/b/e;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/a;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 1453
    new-instance v0, Lrx/c/a/c;

    invoke-direct {v0, p0, p1}, Lrx/c/a/c;-><init>(Lrx/h;Lrx/b/e;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/b/e;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+TR;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1473
    new-instance v0, Lrx/c/a/be;

    invoke-direct {v0, p0, p1}, Lrx/c/a/be;-><init>(Lrx/h;Lrx/b/e;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/b/e;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1552
    new-instance v0, Lrx/c/a/bc;

    iget-object v1, p0, Lrx/h;->a:Lrx/h$a;

    invoke-direct {v0, v1, p1}, Lrx/c/a/bc;-><init>(Lrx/h$a;Lrx/b/e;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/h$a;)Lrx/h;

    move-result-object v0

    return-object v0
.end method
