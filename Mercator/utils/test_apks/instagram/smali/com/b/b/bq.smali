.class public final Lcom/b/b/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/b/b/bq;


# instance fields
.field private final b:Lcom/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bl",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/b/cd",
            "<",
            "Lcom/b/b/bp",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bl",
            "<",
            "Lcom/b/b/cd",
            "<",
            "Lcom/b/b/bp",
            "<*>;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/b/b/bq;->a:Lcom/b/b/bq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/b/b/bl;

    invoke-direct {v0}, Lcom/b/b/bl;-><init>()V

    iput-object v0, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    .line 37
    new-instance v0, Lcom/b/b/bl;

    invoke-direct {v0}, Lcom/b/b/bl;-><init>()V

    iput-object v0, p0, Lcom/b/b/bq;->c:Lcom/b/b/bl;

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/bq;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/b/b/bq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/bq;->a:Lcom/b/b/bq;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/b/b/bq;

    invoke-direct {v0}, Lcom/b/b/bq;-><init>()V

    sput-object v0, Lcom/b/b/bq;->a:Lcom/b/b/bq;

    .line 26
    :cond_0
    sget-object v0, Lcom/b/b/bq;->a:Lcom/b/b/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/bp",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    .line 111
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    invoke-virtual {v0, p1}, Lcom/b/b/bl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/cd;

    invoke-virtual {v0}, Lcom/b/b/cd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/bp;

    .line 115
    if-nez v0, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_1
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 122
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    invoke-virtual {v0, p1}, Lcom/b/b/bl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/b/b/bo;)V
    .locals 4

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 140
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/b/b/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/b/bq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/bp;

    .line 133
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v2

    new-instance v3, Lcom/b/b/bq$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/b/b/bq$1;-><init>(Lcom/b/b/bq;Lcom/b/b/bp;Lcom/b/b/bo;)V

    invoke-virtual {v2, v3}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/b/b/bp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/b/bp",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    if-nez p1, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Lcom/b/b/cd;

    invoke-direct {v1, p1}, Lcom/b/b/cd;-><init>(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/b/b/bq;->c:Lcom/b/b/bl;

    invoke-virtual {v0, v1}, Lcom/b/b/bl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    invoke-virtual {v3, v0, v1}, Lcom/b/b/bl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/b/b/bq;->c:Lcom/b/b/bl;

    invoke-virtual {v0, v1}, Lcom/b/b/bl;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/b/b/bp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/b/b/bp",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_1
    new-instance v1, Lcom/b/b/cd;

    invoke-direct {v1, p2}, Lcom/b/b/cd;-><init>(Ljava/lang/Object;)V

    .line 50
    iget-object v2, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    .line 1116
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/b/b/bl;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 1117
    if-eqz v2, :cond_2

    .line 1118
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    :cond_2
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    invoke-virtual {v0, p1, v1}, Lcom/b/b/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/b/b/bq;->c:Lcom/b/b/bl;

    invoke-virtual {v0, v1, p1}, Lcom/b/b/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/b/b/bp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/b/b/bp",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/b/b/cd;

    invoke-direct {v0, p2}, Lcom/b/b/cd;-><init>(Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/b/b/bq;->b:Lcom/b/b/bl;

    invoke-virtual {v1, p1, v0}, Lcom/b/b/bl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/b/b/bq;->c:Lcom/b/b/bl;

    invoke-virtual {v1, v0, p1}, Lcom/b/b/bl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
