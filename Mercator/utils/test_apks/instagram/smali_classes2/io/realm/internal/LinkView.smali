.class public Lio/realm/internal/LinkView;
.super Lio/realm/internal/g;
.source "LinkView.java"


# instance fields
.field final a:Lio/realm/internal/Table;

.field final b:J

.field private final d:Lio/realm/internal/c;


# direct methods
.method public constructor <init>(Lio/realm/internal/c;Lio/realm/internal/Table;JJ)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lio/realm/internal/g;-><init>()V

    .line 31
    iput-object p1, p0, Lio/realm/internal/LinkView;->d:Lio/realm/internal/c;

    .line 32
    iput-object p2, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    .line 33
    iput-wide p3, p0, Lio/realm/internal/LinkView;->b:J

    .line 34
    iput-wide p5, p0, Lio/realm/internal/LinkView;->c:J

    .line 36
    invoke-virtual {p1}, Lio/realm/internal/c;->a()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/realm/internal/c;->a(ILio/realm/internal/g;)V

    .line 38
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-void
.end method

.method public static native nativeAdd(JJ)V
.end method

.method public static native nativeClear(J)V
.end method

.method public static native nativeClose(J)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeGetTargetRowIndex(JJ)J
.end method

.method private native nativeGetTargetTable(J)J
.end method

.method private native nativeInsert(JJJ)V
.end method

.method private native nativeIsAttached(J)Z
.end method

.method private native nativeRemove(JJ)V
.end method

.method private native nativeSet(JJJ)V
.end method

.method private native nativeSize(J)J
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 66
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeGetTargetRowIndex(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lio/realm/internal/LinkView;->e()V

    .line 96
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/LinkView;->nativeClear(J)V

    .line 97
    return-void
.end method

.method public a(JJ)V
    .locals 9

    .prologue
    .line 75
    invoke-direct {p0}, Lio/realm/internal/LinkView;->e()V

    .line 76
    iget-wide v2, p0, Lio/realm/internal/LinkView;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeInsert(JJJ)V

    .line 77
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lio/realm/internal/LinkView;->e()V

    .line 71
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    .line 72
    return-void
.end method

.method public b(JJ)V
    .locals 9

    .prologue
    .line 80
    invoke-direct {p0}, Lio/realm/internal/LinkView;->e()V

    .line 81
    iget-wide v2, p0, Lio/realm/internal/LinkView;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeSet(JJJ)V

    .line 82
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Lio/realm/internal/LinkView;->e()V

    .line 91
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeRemove(JJ)V

    .line 92
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeIsAttached(J)Z

    move-result v0

    return v0
.end method

.method public d()Lio/realm/internal/Table;
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lio/realm/internal/LinkView;->d:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 154
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeGetTargetTable(J)J

    move-result-wide v2

    .line 157
    :try_start_0
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/LinkView;->d:Lio/realm/internal/c;

    iget-object v4, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/c;Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 160
    throw v0
.end method

.method public d(J)Z
    .locals 5

    .prologue
    .line 100
    iget-wide v0, p0, Lio/realm/internal/LinkView;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeFind(JJ)J

    move-result-wide v0

    .line 101
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
