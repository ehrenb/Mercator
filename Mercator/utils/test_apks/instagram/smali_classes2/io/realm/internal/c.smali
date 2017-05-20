.class public Lio/realm/internal/c;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/realm/internal/c$a;

.field private e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/c;->a:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/c;->b:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/c;->c:Ljava/util/List;

    .line 65
    new-instance v0, Lio/realm/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/c$a;-><init>(Lio/realm/internal/c$1;)V

    iput-object v0, p0, Lio/realm/internal/c;->d:Lio/realm/internal/c$a;

    .line 66
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/internal/c;->e:Ljava/lang/ref/ReferenceQueue;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/c;->f:Z

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lio/realm/internal/c;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/h;

    .line 98
    :goto_0
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lio/realm/internal/h;->a()V

    .line 104
    iget-object v1, p0, Lio/realm/internal/c;->d:Lio/realm/internal/c$a;

    iget-object v1, v1, Lio/realm/internal/c$a;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lio/realm/internal/h;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lio/realm/internal/c;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/h;

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    monitor-enter p0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/realm/internal/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 77
    invoke-static {v4, v5}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lio/realm/internal/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v1

    .line 81
    :goto_1
    iget-object v0, p0, Lio/realm/internal/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 82
    iget-object v0, p0, Lio/realm/internal/c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 83
    invoke-static {v4, v5}, Lio/realm/internal/TableView;->nativeClose(J)V

    .line 81
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lio/realm/internal/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    :goto_2
    iget-object v0, p0, Lio/realm/internal/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lio/realm/internal/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 89
    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p0, Lio/realm/internal/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-direct {p0}, Lio/realm/internal/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILio/realm/internal/g;)V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/realm/internal/c;->d:Lio/realm/internal/c$a;

    new-instance v1, Lio/realm/internal/h;

    iget-object v2, p0, Lio/realm/internal/c;->e:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lio/realm/internal/c;->d:Lio/realm/internal/c$a;

    invoke-virtual {v3}, Lio/realm/internal/c$a;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lio/realm/internal/h;-><init>(ILio/realm/internal/g;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/c$a;->a(Lio/realm/internal/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lio/realm/internal/c;->f:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1, p2}, Lio/realm/internal/TableView;->nativeClose(J)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lio/realm/internal/c;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 3

    .prologue
    .line 110
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lio/realm/internal/c;->f:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-static {p1, p2}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lio/realm/internal/c;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lio/realm/internal/c;->f:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1, p2}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lio/realm/internal/c;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 137
    invoke-static {p1, p2}, Lio/realm/internal/Group;->nativeClose(J)V

    .line 138
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 141
    invoke-static {p1, p2}, Lio/realm/internal/SharedGroup;->nativeClose(J)V

    .line 142
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/realm/internal/c;->f:Z

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {p0}, Lio/realm/internal/c;->a()V

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
