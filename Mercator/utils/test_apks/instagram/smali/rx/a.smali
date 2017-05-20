.class public Lrx/a;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$c;,
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation


# static fields
.field static final a:Lrx/a;

.field static final b:Lrx/a;


# instance fields
.field private final c:Lrx/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1}, Lrx/a$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/a;-><init>(Lrx/a$a;Z)V

    sput-object v0, Lrx/a;->a:Lrx/a;

    .line 79
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$5;

    invoke-direct {v1}, Lrx/a$5;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/a;-><init>(Lrx/a$a;Z)V

    sput-object v0, Lrx/a;->b:Lrx/a;

    return-void
.end method

.method protected constructor <init>(Lrx/a$a;)V
    .locals 1

    .prologue
    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    invoke-static {p1}, Lrx/f/c;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    iput-object v0, p0, Lrx/a;->c:Lrx/a$a;

    .line 1003
    return-void
.end method

.method protected constructor <init>(Lrx/a$a;Z)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    if-eqz p2, :cond_0

    invoke-static {p1}, Lrx/f/c;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lrx/a;->c:Lrx/a$a;

    .line 1014
    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 773
    if-nez p0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    return-object p0
.end method

.method public static a()Lrx/a;
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lrx/a;->a:Lrx/a;

    iget-object v0, v0, Lrx/a;->c:Lrx/a$a;

    invoke-static {v0}, Lrx/f/c;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object v1

    .line 295
    sget-object v0, Lrx/a;->a:Lrx/a;

    iget-object v0, v0, Lrx/a;->c:Lrx/a$a;

    if-ne v1, v0, :cond_0

    .line 296
    sget-object v0, Lrx/a;->a:Lrx/a;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/a;-><init>(Lrx/a$a;Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/a;
    .locals 1

    .prologue
    .line 444
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Lrx/a$12;

    invoke-direct {v0, p0}, Lrx/a$12;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v0, Lrx/a$14;

    invoke-direct {v0, p0}, Lrx/a$14;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/a$a;)Lrx/a;
    .locals 1

    .prologue
    .line 363
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :try_start_0
    new-instance v0, Lrx/a;

    invoke-direct {v0, p0}, Lrx/a;-><init>(Lrx/a$a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    throw v0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 370
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method

.method public static a(Lrx/b/a;)Lrx/a;
    .locals 1

    .prologue
    .line 462
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Lrx/a$13;

    invoke-direct {v0, p0}, Lrx/a$13;-><init>(Lrx/b/a;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<*>;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v0, Lrx/a$2;

    invoke-direct {v0, p0}, Lrx/a$2;-><init>(Lrx/d;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/h;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<*>;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v0, Lrx/a$3;

    invoke-direct {v0, p0}, Lrx/a$3;-><init>(Lrx/h;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lrx/a;)Lrx/a;
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    array-length v0, p0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lrx/a;->a()Lrx/a;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 98
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 99
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lrx/a$8;

    invoke-direct {v0, p0}, Lrx/a$8;-><init>([Lrx/a;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lrx/j;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2080
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    if-eqz p2, :cond_0

    .line 2083
    :try_start_0
    invoke-virtual {p1}, Lrx/j;->onStart()V

    .line 2085
    :cond_0
    new-instance v0, Lrx/a$9;

    invoke-direct {v0, p0, p1}, Lrx/a$9;-><init>(Lrx/a;Lrx/j;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/b;)V

    .line 2101
    invoke-static {p1}, Lrx/f/c;->a(Lrx/k;)Lrx/k;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2110
    return-void

    .line 2102
    :catch_0
    move-exception v0

    .line 2103
    throw v0

    .line 2104
    :catch_1
    move-exception v0

    .line 2105
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2106
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2107
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2108
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method

.method static b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .prologue
    .line 829
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 831
    return-object v0
.end method

.method public static varargs b([Lrx/a;)Lrx/a;
    .locals 2

    .prologue
    .line 308
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    array-length v0, p0

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Lrx/a;->a()Lrx/a;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Lrx/c/a/d;

    invoke-direct {v0, p0}, Lrx/c/a/d;-><init>([Lrx/a;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2023
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2024
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2025
    return-void
.end method


# virtual methods
.method public final a(Lrx/b/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-",
            "Lrx/a;",
            "TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 2242
    invoke-interface {p1, p0}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/a$c;)Lrx/a;
    .locals 1

    .prologue
    .line 1136
    invoke-virtual {p0, p1}, Lrx/a;->a(Lrx/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a;

    return-object v0
.end method

.method public final a(Lrx/a;)Lrx/a;
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, Lrx/a;->b(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lrx/b/b;Lrx/b/b;Lrx/b/a;Lrx/b/a;Lrx/b/a;)Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<-",
            "Lrx/k;",
            ">;",
            "Lrx/b/b",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/b/a;",
            "Lrx/b/a;",
            "Lrx/b/a;",
            ")",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 1360
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    invoke-static {p2}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-static {p3}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-static {p4}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-static {p5}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v0, Lrx/a$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/a$4;-><init>(Lrx/a;Lrx/b/a;Lrx/b/a;Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/g;)Lrx/a;
    .locals 1

    .prologue
    .line 1608
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    new-instance v0, Lrx/a$6;

    invoke-direct {v0, p0, p1}, Lrx/a$6;-><init>(Lrx/a;Lrx/g;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b/a;Lrx/b/b;)Lrx/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/a;",
            "Lrx/b/b",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 1970
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    invoke-static {p2}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    new-instance v0, Lrx/j/c;

    invoke-direct {v0}, Lrx/j/c;-><init>()V

    .line 1974
    new-instance v1, Lrx/a$7;

    invoke-direct {v1, p0, p1, v0, p2}, Lrx/a$7;-><init>(Lrx/a;Lrx/b/a;Lrx/j/c;Lrx/b/b;)V

    invoke-virtual {p0, v1}, Lrx/a;->a(Lrx/b;)V

    .line 2019
    return-object v0
.end method

.method public final a(Lrx/b;)V
    .locals 1

    .prologue
    .line 2033
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    :try_start_0
    iget-object v0, p0, Lrx/a;->c:Lrx/a$a;

    invoke-static {p0, v0}, Lrx/f/c;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    .line 2037
    invoke-interface {v0, p1}, Lrx/a$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2046
    return-void

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    throw v0

    .line 2040
    :catch_1
    move-exception v0

    .line 2041
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2042
    invoke-static {v0}, Lrx/f/c;->e(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2043
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2044
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lrx/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2069
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/a;->a(Lrx/j;Z)V

    .line 2070
    return-void
.end method

.method public final b(Lrx/a;)Lrx/a;
    .locals 2

    .prologue
    .line 1194
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/a;->b([Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b/a;)Lrx/a;
    .locals 6

    .prologue
    .line 1296
    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v1

    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v2

    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v4

    invoke-static {}, Lrx/b/c;->a()Lrx/b/c$b;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/a;->a(Lrx/b/b;Lrx/b/b;Lrx/b/a;Lrx/b/a;Lrx/b/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/g;)Lrx/a;
    .locals 1

    .prologue
    .line 2136
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    new-instance v0, Lrx/a$10;

    invoke-direct {v0, p0, p1}, Lrx/a$10;-><init>(Lrx/a;Lrx/g;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lrx/d;
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
    .line 2252
    new-instance v0, Lrx/a$11;

    invoke-direct {v0, p0}, Lrx/a$11;-><init>(Lrx/a;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/d;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-virtual {p0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->d(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/h;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/h",
            "<TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1170
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    invoke-virtual {p0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/h;->a(Lrx/d;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b;)V
    .locals 1

    .prologue
    .line 2055
    instance-of v0, p1, Lrx/e/b;

    if-nez v0, :cond_0

    .line 2056
    new-instance v0, Lrx/e/b;

    invoke-direct {v0, p1}, Lrx/e/b;-><init>(Lrx/b;)V

    move-object p1, v0

    .line 2058
    :cond_0
    invoke-virtual {p0, p1}, Lrx/a;->a(Lrx/b;)V

    .line 2059
    return-void
.end method
