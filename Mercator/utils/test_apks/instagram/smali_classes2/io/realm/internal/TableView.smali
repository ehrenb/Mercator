.class public Lio/realm/internal/TableView;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Lio/realm/internal/n;
.implements Ljava/io/Closeable;


# instance fields
.field protected a:J

.field protected final b:Lio/realm/internal/Table;

.field private final c:Lio/realm/internal/TableQuery;

.field private d:J

.field private final e:Lio/realm/internal/c;


# direct methods
.method protected constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    .line 51
    iput-object p2, p0, Lio/realm/internal/TableView;->b:Lio/realm/internal/Table;

    .line 52
    iput-wide p3, p0, Lio/realm/internal/TableView;->a:J

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/TableView;->c:Lio/realm/internal/TableQuery;

    .line 54
    return-void
.end method

.method protected constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;JLio/realm/internal/TableQuery;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    .line 67
    iput-object p2, p0, Lio/realm/internal/TableView;->b:Lio/realm/internal/Table;

    .line 68
    iput-wide p3, p0, Lio/realm/internal/TableView;->a:J

    .line 69
    iput-object p5, p0, Lio/realm/internal/TableView;->c:Lio/realm/internal/TableQuery;

    .line 70
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 724
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm data can only be changed inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeClear(J)V
.end method

.method static native nativeClose(J)V
.end method

.method private native nativeFindBySourceNdx(JJ)J
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetSourceRowIndex(JJ)J
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeSort(JJZ)V
.end method

.method private native nativeSyncIfNeeded(J)J
.end method

.method private native nativeWhere(J)J
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)J
    .locals 3

    .prologue
    .line 128
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeGetSourceRowIndex(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLio/realm/ao;)V
    .locals 7

    .prologue
    .line 654
    iget-wide v2, p0, Lio/realm/internal/TableView;->a:J

    invoke-virtual {p3}, Lio/realm/ao;->a()Z

    move-result v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableView;->nativeSort(JJZ)V

    .line 655
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lio/realm/internal/TableView;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/realm/internal/TableView;->d()V

    .line 393
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeClear(J)V

    .line 394
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 79
    iget-object v1, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableView;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 81
    iget-wide v2, p0, Lio/realm/internal/TableView;->a:J

    invoke-static {v2, v3}, Lio/realm/internal/TableView;->nativeClose(J)V

    .line 86
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableView;->a:J

    .line 88
    :cond_0
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    iget-object v1, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/TableView;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    iget-wide v2, p0, Lio/realm/internal/TableView;->a:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/c;->a(J)V

    .line 96
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/TableView;->a:J

    .line 98
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 701
    iget-object v0, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 702
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeWhere(J)J

    move-result-wide v4

    .line 704
    :try_start_0
    new-instance v1, Lio/realm/internal/TableQuery;

    iget-object v2, p0, Lio/realm/internal/TableView;->e:Lio/realm/internal/c;

    iget-object v3, p0, Lio/realm/internal/TableView;->b:Lio/realm/internal/Table;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;JLio/realm/internal/n;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 705
    :catch_0
    move-exception v0

    .line 706
    invoke-static {v4, v5}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 707
    throw v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 789
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableView;->nativeSyncIfNeeded(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/TableView;->d:J

    .line 790
    iget-wide v0, p0, Lio/realm/internal/TableView;->d:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 739
    iget-wide v0, p0, Lio/realm/internal/TableView;->d:J

    return-wide v0
.end method

.method public p(J)J
    .locals 3

    .prologue
    .line 719
    iget-wide v0, p0, Lio/realm/internal/TableView;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableView;->nativeFindBySourceNdx(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 678
    invoke-virtual {p0}, Lio/realm/internal/TableView;->a()J

    move-result-wide v2

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "The TableView contains "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 681
    const-string v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 684
    if-eqz v0, :cond_0

    .line 685
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_0
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/TableView;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_1
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v0, " And "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Lio/realm/internal/TableView;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 693
    const-string v0, " rows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
