.class Lcom/a/a/c/x;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/x$c;,
        Lcom/a/a/c/x$b;,
        Lcom/a/a/c/x$l;,
        Lcom/a/a/c/x$g;,
        Lcom/a/a/c/x$m;,
        Lcom/a/a/c/x$f;,
        Lcom/a/a/c/x$a;,
        Lcom/a/a/c/x$h;,
        Lcom/a/a/c/x$d;,
        Lcom/a/a/c/x$e;,
        Lcom/a/a/c/x$i;,
        Lcom/a/a/c/x$k;,
        Lcom/a/a/c/x$j;
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/c/a/a/e;

.field private static final b:[Lcom/a/a/c/x$j;

.field private static final c:[Lcom/a/a/c/x$m;

.field private static final d:[Lcom/a/a/c/x$g;

.field private static final e:[Lcom/a/a/c/x$b;

.field private static final f:[Lcom/a/a/c/x$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/a/a/c/a/a/e;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/a/a/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/a/a/c/x;->a:Lcom/a/a/c/a/a/e;

    .line 29
    new-array v0, v3, [Lcom/a/a/c/x$j;

    sput-object v0, Lcom/a/a/c/x;->b:[Lcom/a/a/c/x$j;

    .line 30
    new-array v0, v3, [Lcom/a/a/c/x$m;

    sput-object v0, Lcom/a/a/c/x;->c:[Lcom/a/a/c/x$m;

    .line 31
    new-array v0, v3, [Lcom/a/a/c/x$g;

    sput-object v0, Lcom/a/a/c/x;->d:[Lcom/a/a/c/x$g;

    .line 32
    new-array v0, v3, [Lcom/a/a/c/x$b;

    sput-object v0, Lcom/a/a/c/x;->e:[Lcom/a/a/c/x$b;

    .line 34
    new-array v0, v3, [Lcom/a/a/c/x$c;

    sput-object v0, Lcom/a/a/c/x;->f:[Lcom/a/a/c/x$c;

    return-void
.end method

.method private static a(Lcom/a/a/c/a/a/d;Lcom/a/a/c/s;Ljava/util/Map;)Lcom/a/a/c/x$e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/a/a/d;",
            "Lcom/a/a/c/s;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/c/x$e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/a/a/c/a/a/d;->b:Lcom/a/a/c/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c/a/a/d;->b:Lcom/a/a/c/a/a/e;

    .line 503
    :goto_0
    new-instance v1, Lcom/a/a/c/x$l;

    invoke-direct {v1, v0}, Lcom/a/a/c/x$l;-><init>(Lcom/a/a/c/a/a/e;)V

    .line 505
    iget-object v0, p0, Lcom/a/a/c/a/a/d;->c:[Lcom/a/a/c/a/a/f;

    invoke-static {v0}, Lcom/a/a/c/x;->a([Lcom/a/a/c/a/a/f;)Lcom/a/a/c/x$k;

    move-result-object v0

    .line 506
    iget-object v2, p0, Lcom/a/a/c/a/a/d;->d:[Lcom/a/a/c/a/a/a;

    invoke-static {v2}, Lcom/a/a/c/x;->a([Lcom/a/a/c/a/a/a;)Lcom/a/a/c/x$k;

    move-result-object v2

    .line 509
    new-instance v3, Lcom/a/a/c/x$f;

    invoke-direct {v3, v1, v0, v2}, Lcom/a/a/c/x$f;-><init>(Lcom/a/a/c/x$l;Lcom/a/a/c/x$k;Lcom/a/a/c/x$k;)V

    .line 511
    iget-object v0, p0, Lcom/a/a/c/a/a/d;->e:[Lcom/a/a/c/a/a/b;

    invoke-static {v0, p2}, Lcom/a/a/c/x;->a([Lcom/a/a/c/a/a/b;Ljava/util/Map;)[Lcom/a/a/c/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/x;->a([Lcom/a/a/c/a/a/b;)Lcom/a/a/c/x$k;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/a/a/c/x$a;

    invoke-direct {v1, v3, v0}, Lcom/a/a/c/x$a;-><init>(Lcom/a/a/c/x$f;Lcom/a/a/c/x$k;)V

    .line 517
    iget-object v0, p0, Lcom/a/a/c/a/a/d;->f:Lcom/a/a/c/a/a/c;

    invoke-static {v0}, Lcom/a/a/c/x;->a(Lcom/a/a/c/a/a/c;)Lcom/a/a/c/x$j;

    move-result-object v2

    .line 519
    invoke-virtual {p1}, Lcom/a/a/c/s;->a()Lcom/a/a/c/a;

    move-result-object v3

    .line 521
    if-nez v3, :cond_0

    .line 522
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v4, "CrashlyticsCore"

    const-string v5, "No log data to include with this event."

    invoke-interface {v0, v4, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/c/s;->b()V

    .line 528
    if-eqz v3, :cond_2

    new-instance v0, Lcom/a/a/c/x$h;

    invoke-direct {v0, v3}, Lcom/a/a/c/x$h;-><init>(Lcom/a/a/c/a;)V

    .line 531
    :goto_1
    new-instance v3, Lcom/a/a/c/x$e;

    iget-wide v4, p0, Lcom/a/a/c/a/a/d;->a:J

    const-string v6, "ndk-crash"

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/a/a/c/x$j;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v0, v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/a/a/c/x$e;-><init>(JLjava/lang/String;[Lcom/a/a/c/x$j;)V

    return-object v3

    .line 501
    :cond_1
    sget-object v0, Lcom/a/a/c/x;->a:Lcom/a/a/c/a/a/e;

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Lcom/a/a/c/x$i;

    invoke-direct {v0}, Lcom/a/a/c/x$i;-><init>()V

    goto :goto_1
.end method

.method private static a(Lcom/a/a/c/a/a/c;)Lcom/a/a/c/x$j;
    .locals 12

    .prologue
    .line 557
    if-nez p0, :cond_0

    .line 558
    new-instance v1, Lcom/a/a/c/x$i;

    invoke-direct {v1}, Lcom/a/a/c/x$i;-><init>()V

    .line 560
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/a/a/c/x$d;

    iget v0, p0, Lcom/a/a/c/a/a/c;->f:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v0, v2

    iget v3, p0, Lcom/a/a/c/a/a/c;->g:I

    iget-boolean v4, p0, Lcom/a/a/c/a/a/c;->h:Z

    iget v5, p0, Lcom/a/a/c/a/a/c;->a:I

    iget-wide v6, p0, Lcom/a/a/c/a/a/c;->b:J

    iget-wide v8, p0, Lcom/a/a/c/a/a/c;->d:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/a/a/c/a/a/c;->c:J

    iget-wide v10, p0, Lcom/a/a/c/a/a/c;->e:J

    sub-long/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/a/a/c/x$d;-><init>(FIZIJJ)V

    goto :goto_0
.end method

.method private static a([Lcom/a/a/c/a/a/a;)Lcom/a/a/c/x$k;
    .locals 4

    .prologue
    .line 591
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/x$b;

    .line 593
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 594
    new-instance v2, Lcom/a/a/c/x$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/c/x$b;-><init>(Lcom/a/a/c/a/a/a;)V

    aput-object v2, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 591
    :cond_0
    sget-object v0, Lcom/a/a/c/x;->e:[Lcom/a/a/c/x$b;

    goto :goto_0

    .line 596
    :cond_1
    new-instance v1, Lcom/a/a/c/x$k;

    invoke-direct {v1, v0}, Lcom/a/a/c/x$k;-><init>([Lcom/a/a/c/x$j;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/a/b;)Lcom/a/a/c/x$k;
    .locals 4

    .prologue
    .line 601
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/x$c;

    .line 604
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 605
    new-instance v2, Lcom/a/a/c/x$c;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/c/x$c;-><init>(Lcom/a/a/c/a/a/b;)V

    aput-object v2, v0, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_0
    sget-object v0, Lcom/a/a/c/x;->f:[Lcom/a/a/c/x$c;

    goto :goto_0

    .line 607
    :cond_1
    new-instance v1, Lcom/a/a/c/x$k;

    invoke-direct {v1, v0}, Lcom/a/a/c/x$k;-><init>([Lcom/a/a/c/x$j;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/a/f$a;)Lcom/a/a/c/x$k;
    .locals 4

    .prologue
    .line 582
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/x$g;

    .line 584
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 585
    new-instance v2, Lcom/a/a/c/x$g;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/c/x$g;-><init>(Lcom/a/a/c/a/a/f$a;)V

    aput-object v2, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_0
    sget-object v0, Lcom/a/a/c/x;->d:[Lcom/a/a/c/x$g;

    goto :goto_0

    .line 587
    :cond_1
    new-instance v1, Lcom/a/a/c/x$k;

    invoke-direct {v1, v0}, Lcom/a/a/c/x$k;-><init>([Lcom/a/a/c/x$j;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/a/f;)Lcom/a/a/c/x$k;
    .locals 5

    .prologue
    .line 571
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/x$m;

    .line 573
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 574
    aget-object v2, p0, v1

    .line 575
    new-instance v3, Lcom/a/a/c/x$m;

    iget-object v4, v2, Lcom/a/a/c/a/a/f;->c:[Lcom/a/a/c/a/a/f$a;

    invoke-static {v4}, Lcom/a/a/c/x;->a([Lcom/a/a/c/a/a/f$a;)Lcom/a/a/c/x$k;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/a/a/c/x$m;-><init>(Lcom/a/a/c/a/a/f;Lcom/a/a/c/x$k;)V

    aput-object v3, v0, v1

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_0
    sget-object v0, Lcom/a/a/c/x;->c:[Lcom/a/a/c/x$m;

    goto :goto_0

    .line 578
    :cond_1
    new-instance v1, Lcom/a/a/c/x$k;

    invoke-direct {v1, v0}, Lcom/a/a/c/x$k;-><init>([Lcom/a/a/c/x$j;)V

    return-object v1
.end method

.method public static a(Lcom/a/a/c/a/a/d;Lcom/a/a/c/s;Ljava/util/Map;Lcom/a/a/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/a/a/d;",
            "Lcom/a/a/c/s;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/a/a/c/d;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {p0, p1, p2}, Lcom/a/a/c/x;->a(Lcom/a/a/c/a/a/d;Lcom/a/a/c/s;Ljava/util/Map;)Lcom/a/a/c/x$e;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p3}, Lcom/a/a/c/x$e;->b(Lcom/a/a/c/d;)V

    .line 625
    return-void
.end method

.method private static a([Lcom/a/a/c/a/a/b;Ljava/util/Map;)[Lcom/a/a/c/a/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/c/a/a/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/a/a/c/a/a/b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 538
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 539
    if-eqz p0, :cond_0

    .line 540
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 541
    iget-object v5, v4, Lcom/a/a/c/a/a/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/a/a/c/a/a/b;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 548
    array-length v2, v0

    new-array v4, v2, [Lcom/a/a/c/a/a/b;

    move v3, v1

    .line 549
    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_1

    .line 550
    new-instance v5, Lcom/a/a/c/a/a/b;

    aget-object v1, v0, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lcom/a/a/c/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 549
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 552
    :cond_1
    return-object v4
.end method

.method static synthetic a()[Lcom/a/a/c/x$j;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/a/a/c/x;->b:[Lcom/a/a/c/x$j;

    return-object v0
.end method
