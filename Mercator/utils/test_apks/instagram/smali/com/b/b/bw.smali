.class public final Lcom/b/b/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/b/bx;",
            ">;",
            "Lcom/b/b/bv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/b/bx;",
            ">;",
            "Lcom/b/b/bx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/b/b/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/bw;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/b/b/bw;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/b/bw;->c:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/b/bx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/b/b/bw;->b:Ljava/util/Map;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/b/b/bw;->b:Ljava/util/Map;

    new-instance v2, Lcom/b/b/bv;

    invoke-direct {v2, p0}, Lcom/b/b/bv;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 63
    monitor-enter p0

    if-nez p1, :cond_0

    .line 64
    const/4 v1, 0x5

    :try_start_0
    sget-object v2, Lcom/b/b/bw;->a:Ljava/lang/String;

    const-string v3, "Null context."

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    sget-object v2, Lcom/b/b/bw;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/b/b/bw;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/b/b/bv;

    move-object v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1039
    :try_start_4
    iget-object v1, v2, Lcom/b/b/bv;->a:Ljava/lang/Class;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v4, v2, Lcom/b/b/bv;->b:I

    if-lt v1, v4, :cond_2

    const/4 v1, 0x1

    .line 74
    :goto_2
    if-eqz v1, :cond_1

    .line 2031
    iget-object v1, v2, Lcom/b/b/bv;->a:Ljava/lang/Class;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/b/bx;

    .line 76
    invoke-interface {v1, p1}, Lcom/b/b/bx;->a(Landroid/content/Context;)V

    .line 78
    iget-object v4, p0, Lcom/b/b/bw;->c:Ljava/util/Map;

    .line 3031
    iget-object v5, v2, Lcom/b/b/bv;->a:Ljava/lang/Class;

    .line 78
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const/4 v4, 0x5

    :try_start_5
    sget-object v5, Lcom/b/b/bw;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Flurry Module for class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4031
    iget-object v2, v2, Lcom/b/b/bv;->a:Ljava/lang/Class;

    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is not available:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    .line 1039
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 87
    :cond_3
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/b/b/ct;->a(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/b/b/bk;->a()Lcom/b/b/bk;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Class;)Lcom/b/b/bx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/b/bx;",
            ">;)",
            "Lcom/b/b/bx;"
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 123
    :cond_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/b/b/bw;->c:Ljava/util/Map;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/b/b/bw;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/bx;

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Module was not registered/initialized. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
