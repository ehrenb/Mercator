.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "TableQuery.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:Z

.field protected b:J

.field protected final c:Lio/realm/internal/Table;

.field private final d:Lio/realm/internal/n;

.field private final e:Lio/realm/internal/c;

.field private f:Z


# direct methods
.method public constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->a:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 44
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->a:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++ new TableQuery, ptr= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :cond_0
    iput-object p1, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    .line 48
    iput-object p2, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/internal/Table;

    .line 49
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->b:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/TableQuery;->d:Lio/realm/internal/n;

    .line 51
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;JLio/realm/internal/n;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->a:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 54
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->a:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++ new TableQuery, ptr= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    iput-object p1, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    .line 58
    iput-object p2, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/internal/Table;

    .line 59
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->b:J

    .line 60
    iput-object p5, p0, Lio/realm/internal/TableQuery;->d:Lio/realm/internal/n;

    .line 61
    return-void
.end method

.method public static a([Lio/realm/ao;)[Z
    .locals 3

    .prologue
    .line 735
    array-length v0, p0

    new-array v1, v0, [Z

    .line 736
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 737
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lio/realm/ao;->a()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-object v1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    if-nez v0, :cond_0

    .line 90
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 96
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static native nativeBatchUpdateQueries(J[J[[J[[J[[Z)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation
.end method

.method protected static native nativeClose(J)V
.end method

.method public static native nativeCloseQueryHandover(J)V
.end method

.method private native nativeContains(J[JLjava/lang/String;Z)V
.end method

.method private native nativeCount(JJJJ)J
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeEqual(J[JJ)V
.end method

.method private native nativeEqual(J[JLjava/lang/String;Z)V
.end method

.method private native nativeEqual(J[JZ)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeFindAll(JJJJ)J
.end method

.method public static native nativeFindWithHandover(JJJ)J
.end method

.method private native nativeGroup(J)V
.end method

.method private native nativeHandoverQuery(JJ)J
.end method

.method public static native nativeImportHandoverRowIntoSharedGroup(JJ)J
.end method

.method private native nativeImportHandoverTableViewIntoSharedGroup(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation
.end method

.method private native nativeIsNull(J[J)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 535
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, p1, p2, v0, v1}, Lio/realm/internal/TableQuery;->nativeHandoverQuery(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeGroup(J)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 109
    return-object p0
.end method

.method public a([J)Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J)V

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 696
    return-object p0
.end method

.method public a([JJ)Lio/realm/internal/TableQuery;
    .locals 6

    .prologue
    .line 133
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->b:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[JJ)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 135
    return-object p0
.end method

.method public a([JLjava/lang/String;Lio/realm/b;)Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 352
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {p3}, Lio/realm/b;->a()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[JLjava/lang/String;Z)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 354
    return-object p0
.end method

.method public a([JZ)Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeEqual(J[JZ)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 267
    return-object p0
.end method

.method public a(JJ)Lio/realm/internal/TableView;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/TableQuery;->nativeImportHandoverTableViewIntoSharedGroup(JJ)J

    move-result-wide v2

    .line 519
    :try_start_0
    new-instance v0, Lio/realm/internal/TableView;

    iget-object v1, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    iget-object v4, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/internal/Table;

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/internal/TableView;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 522
    invoke-static {v2, v3}, Lio/realm/internal/TableView;->nativeClose(J)V

    .line 524
    :cond_0
    throw v0
.end method

.method public b()Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeEndGroup(J)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 115
    return-object p0
.end method

.method public b([JLjava/lang/String;Lio/realm/b;)Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 400
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {p3}, Lio/realm/b;->a()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeContains(J[JLjava/lang/String;Z)V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 402
    return-object p0
.end method

.method public c()Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->f:Z

    .line 121
    return-object p0
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 64
    iget-object v1, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 66
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 68
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->a:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ Query CLOSE, ptr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    .line 73
    :cond_1
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 429
    invoke-direct {p0}, Lio/realm/internal/TableQuery;->g()V

    .line 430
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lio/realm/internal/TableView;
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 463
    invoke-direct {p0}, Lio/realm/internal/TableQuery;->g()V

    .line 466
    iget-object v0, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 467
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/TableQuery;->nativeFindAll(JJJJ)J

    move-result-wide v4

    .line 469
    :try_start_0
    new-instance v1, Lio/realm/internal/TableView;

    iget-object v2, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    iget-object v3, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/internal/Table;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableView;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;JLio/realm/internal/TableQuery;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-static {v4, v5}, Lio/realm/internal/TableView;->nativeClose(J)V

    .line 472
    throw v0
.end method

.method public f()J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 714
    invoke-direct {p0}, Lio/realm/internal/TableQuery;->g()V

    .line 715
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/TableQuery;->nativeCount(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 77
    iget-object v1, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lio/realm/internal/TableQuery;->e:Lio/realm/internal/c;

    iget-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/c;->b(J)V

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableQuery;->b:J

    .line 82
    :cond_0
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
