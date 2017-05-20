.class public final Lio/realm/t;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/ac;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:J

.field private b:Lio/realm/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/realm/internal/l;

.field private f:Lio/realm/a;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/w",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->a:J

    .line 46
    return-void
.end method

.method public constructor <init>(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->a:J

    .line 49
    iput-object p1, p0, Lio/realm/t;->b:Lio/realm/ac;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;TE;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->a:J

    .line 53
    iput-object p1, p0, Lio/realm/t;->d:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lio/realm/t;->b:Lio/realm/ac;

    .line 55
    return-void
.end method

.method private i()Lio/realm/internal/Table;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lio/realm/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-object v0, v0, Lio/realm/a;->f:Lio/realm/ah;

    iget-object v1, p0, Lio/realm/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/ah;->e(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-object v0, v0, Lio/realm/a;->f:Lio/realm/ah;

    iget-object v1, p0, Lio/realm/t;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lio/realm/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/realm/t;->f:Lio/realm/a;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 131
    iput-boolean v2, p0, Lio/realm/t;->i:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v0, p0, Lio/realm/t;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    sget-object v1, Lio/realm/internal/l;->b:Lio/realm/internal/l;

    if-ne v0, v1, :cond_0

    .line 134
    :cond_2
    iput-boolean v2, p0, Lio/realm/t;->i:Z

    .line 135
    iget-object v0, p0, Lio/realm/t;->f:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->i()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lio/realm/internal/TableQuery;->nativeImportHandoverRowIntoSharedGroup(JJ)J

    move-result-wide v0

    .line 136
    invoke-direct {p0}, Lio/realm/t;->i()Lio/realm/internal/Table;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->k(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    iput-object v0, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    goto :goto_0
.end method

.method public a(Lio/realm/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/realm/t;->f:Lio/realm/a;

    .line 80
    return-void
.end method

.method public a(Lio/realm/internal/l;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    .line 88
    return-void
.end method

.method public b()Lio/realm/internal/l;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lio/realm/t;->i:Z

    return v0
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 105
    :try_start_0
    iget-object v0, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/realm/t;->a(J)V

    .line 112
    invoke-virtual {p0}, Lio/realm/t;->g()V

    :goto_0
    move v0, v1

    .line 120
    :goto_1
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/t;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/realm/w",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    return-object v0
.end method

.method g()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    .line 149
    if-nez v2, :cond_0

    .line 163
    :goto_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/w;

    .line 165
    iget-object v2, p0, Lio/realm/t;->b:Lio/realm/ac;

    invoke-interface {v0, v2}, Lio/realm/w;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {v2}, Lio/realm/internal/Table;->n()J

    move-result-wide v2

    .line 157
    iget-wide v4, p0, Lio/realm/t;->a:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 158
    iput-wide v2, p0, Lio/realm/t;->a:J

    goto :goto_0

    .line 169
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/realm/t;->e:Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/t;->a:J

    .line 175
    :cond_0
    return-void
.end method
