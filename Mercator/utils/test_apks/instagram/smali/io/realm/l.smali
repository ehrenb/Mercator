.class final Lio/realm/l;
.super Ljava/lang/Object;
.source "HandlerController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final i:Ljava/lang/Boolean;


# instance fields
.field final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lio/realm/w",
            "<+",
            "Lio/realm/a;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/w",
            "<+",
            "Lio/realm/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/realm/a;

.field final d:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/ac;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;",
            "Lio/realm/af",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/j;",
            ">;",
            "Lio/realm/af",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field final g:Lio/realm/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/d",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/j;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/concurrent/Future;

.field private final l:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/l;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lio/realm/a;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/l;->b:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/l;->l:Ljava/lang/ref/ReferenceQueue;

    .line 69
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/l;->m:Ljava/lang/ref/ReferenceQueue;

    .line 71
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/realm/l;->d:Ljava/lang/ref/ReferenceQueue;

    .line 77
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/l;->e:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/l;->f:Ljava/util/Map;

    .line 86
    new-instance v0, Lio/realm/internal/d;

    invoke-direct {v0}, Lio/realm/internal/d;-><init>()V

    iput-object v0, p0, Lio/realm/l;->g:Lio/realm/internal/d;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/l;->n:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lio/realm/l;->c:Lio/realm/a;

    .line 103
    return-void
.end method

.method private a(Lio/realm/internal/async/c$c;)V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p1, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 459
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/ag;

    .line 460
    if-nez v1, :cond_1

    .line 461
    iget-object v1, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RealmResults GC\'d ignore results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v2, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v2, v2, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v2}, Lio/realm/internal/m;->c()Lio/realm/internal/SharedGroup$b;

    move-result-object v2

    .line 466
    iget-object v3, p1, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;

    invoke-virtual {v2, v3}, Lio/realm/internal/SharedGroup$b;->a(Lio/realm/internal/SharedGroup$b;)I

    move-result v2

    .line 467
    if-nez v2, :cond_3

    .line 470
    invoke-virtual {v1}, Lio/realm/ag;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] , realm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " same versions, using results (RealmResults is not loaded)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 473
    iget-object v2, p1, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/ag;->a(J)V

    .line 475
    invoke-virtual {v1}, Lio/realm/ag;->c()V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lio/realm/ag;->a(Z)V

    goto :goto_0

    .line 478
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] , realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ignoring result the RealmResults (is already loaded)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_3
    if-lez v2, :cond_5

    .line 491
    invoke-virtual {v1}, Lio/realm/ag;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] , realm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller is more advanced & RealmResults is not loaded, rerunning the query against the latest version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/af;

    .line 496
    invoke-static {}, Lio/realm/internal/async/c;->a()Lio/realm/internal/async/c$b$d;

    move-result-object v2

    iget-object v3, p0, Lio/realm/l;->c:Lio/realm/a;

    .line 497
    invoke-virtual {v3}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/internal/async/c$b$d;->a(Lio/realm/x;)Lio/realm/internal/async/c$b$g;

    move-result-object v2

    .line 499
    invoke-virtual {v1}, Lio/realm/af;->h()J

    move-result-wide v4

    .line 500
    invoke-virtual {v1}, Lio/realm/af;->g()Lio/realm/internal/async/a;

    move-result-object v1

    .line 498
    invoke-interface {v2, v0, v4, v5, v1}, Lio/realm/internal/async/c$b$g;->a(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$e;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->g:Landroid/os/Handler;

    const v2, 0x2547029

    .line 501
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/c$b$e;->a(Landroid/os/Handler;I)Lio/realm/internal/async/c$b$a;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Lio/realm/internal/async/c$b$a;->a()Lio/realm/internal/async/c;

    move-result-object v0

    .line 504
    sget-object v1, Lio/realm/u;->b:Lio/realm/internal/async/d;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 508
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] , realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller is more advanced & RealmResults is loaded ignore the outdated result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_RESULTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] , realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller thread behind worker thread, ignore results (a batch update will update everything including this query)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Iterator;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;>;",
            "Ljava/util/List",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 334
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ag;

    .line 335
    if-nez v0, :cond_1

    .line 336
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0}, Lio/realm/ag;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lio/realm/ag;->c()V

    .line 345
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_2
    return-void
.end method

.method private b(Lio/realm/internal/async/c$c;)V
    .locals 8

    .prologue
    .line 523
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->c()Lio/realm/internal/SharedGroup$b;

    move-result-object v0

    .line 524
    iget-object v1, p1, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedGroup$b;->a(Lio/realm/internal/SharedGroup$b;)I

    move-result v0

    .line 525
    if-lez v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPLETED_UPDATE_ASYNC_QUERIES realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller is more advanced, Looper will updates queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 535
    :cond_0
    if-eqz v0, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPLETED_UPDATE_ASYNC_QUERIES realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller is behind  advance_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 545
    :try_start_0
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/m;

    iget-object v1, p1, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->a(Lio/realm/internal/SharedGroup$b;)V
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p1, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    iget-object v0, p1, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 559
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/ag;

    .line 560
    if-nez v2, :cond_2

    .line 562
    iget-object v0, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    .line 549
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to advance Caller Realm to Worker Realm version"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 566
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lio/realm/ag;->a(J)V

    .line 567
    invoke-virtual {v2}, Lio/realm/ag;->c()V

    .line 568
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COMPLETED_UPDATE_ASYNC_QUERIES realm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " updating RealmResults "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 573
    :cond_3
    invoke-direct {p0, v3}, Lio/realm/l;->c(Ljava/util/List;)V

    .line 577
    invoke-virtual {p0, v3}, Lio/realm/l;->a(Ljava/util/List;)V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/realm/l;->a(Ljava/util/Iterator;Ljava/util/List;)V

    .line 323
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "LOCAL_COMMIT"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lio/realm/l;->k()V

    .line 427
    invoke-direct {p0}, Lio/realm/l;->j()Z

    move-result v0

    .line 430
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 431
    const-string v1, "Mixing asynchronous queries with local writes should be avoided. Realm will convert any async queries to synchronous in order to remain consistent. Use asynchronous writes instead. You can read more here: https://realm.io/docs/java/latest/#asynchronous-transactions"

    invoke-static {v1}, Lio/realm/internal/b/b;->b(Ljava/lang/String;)V

    .line 437
    :cond_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0}, Lio/realm/l;->h()V

    .line 452
    :goto_1
    return-void

    .line 425
    :cond_1
    const-string v0, "REALM_CHANGED"

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->b()V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-direct {p0, v0}, Lio/realm/l;->b(Ljava/util/List;)V

    .line 449
    invoke-direct {p0, v0}, Lio/realm/l;->c(Ljava/util/List;)V

    .line 450
    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method private c(Lio/realm/internal/async/c$c;)V
    .locals 6

    .prologue
    .line 598
    iget-object v0, p1, Lio/realm/internal/async/c$c;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 600
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 601
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/j;

    .line 603
    if-eqz v1, :cond_1

    .line 604
    iget-object v2, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v2, v2, Lio/realm/a;->e:Lio/realm/internal/m;

    invoke-virtual {v2}, Lio/realm/internal/m;->c()Lio/realm/internal/SharedGroup$b;

    move-result-object v2

    .line 605
    iget-object v3, p1, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;

    invoke-virtual {v2, v3}, Lio/realm/internal/SharedGroup$b;->a(Lio/realm/internal/SharedGroup$b;)I

    move-result v2

    .line 608
    if-nez v2, :cond_2

    .line 609
    iget-object v2, p1, Lio/realm/internal/async/c$c;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 610
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/realm/l;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    iget-object v4, p0, Lio/realm/l;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v4, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lio/realm/l;->i:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_0
    invoke-interface {v1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lio/realm/t;->a(J)V

    .line 616
    invoke-interface {v1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->g()V

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    if-lez v2, :cond_6

    .line 621
    invoke-static {v1}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[COMPLETED_ASYNC_REALM_OBJECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] , realm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RealmObject is already loaded, just notify it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 624
    invoke-interface {v1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->g()V

    goto :goto_0

    .line 627
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[COMPLETED_ASYNC_REALM_OBJECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] , realm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RealmObject is not loaded yet. Rerun the query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 631
    if-eqz v1, :cond_4

    sget-object v2, Lio/realm/l;->i:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_5

    .line 632
    :cond_4
    iget-object v1, p0, Lio/realm/l;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/af;

    .line 638
    :goto_1
    invoke-static {}, Lio/realm/internal/async/c;->a()Lio/realm/internal/async/c$b$d;

    move-result-object v2

    iget-object v3, p0, Lio/realm/l;->c:Lio/realm/a;

    .line 639
    invoke-virtual {v3}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/internal/async/c$b$d;->a(Lio/realm/x;)Lio/realm/internal/async/c$b$g;

    move-result-object v2

    .line 641
    invoke-virtual {v1}, Lio/realm/af;->h()J

    move-result-wide v4

    .line 642
    invoke-virtual {v1}, Lio/realm/af;->g()Lio/realm/internal/async/a;

    move-result-object v1

    .line 640
    invoke-interface {v2, v0, v4, v5, v1}, Lio/realm/internal/async/c$b$g;->b(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$b;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->g:Landroid/os/Handler;

    const v2, 0x3c50ea2

    .line 643
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/c$b$b;->a(Landroid/os/Handler;I)Lio/realm/internal/async/c$b$a;

    move-result-object v0

    .line 644
    invoke-interface {v0}, Lio/realm/internal/async/c$b$a;->a()Lio/realm/internal/async/c;

    move-result-object v0

    .line 646
    sget-object v1, Lio/realm/u;->b:Lio/realm/internal/async/d;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 635
    :cond_5
    check-cast v1, Lio/realm/af;

    goto :goto_1

    .line 651
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller thread behind the Worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lio/realm/l;->g:Lio/realm/internal/d;

    invoke-virtual {v0}, Lio/realm/internal/d;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/realm/l;->a(Ljava/util/Iterator;Ljava/util/List;)V

    .line 327
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lio/realm/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    :goto_0
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/w;

    .line 244
    iget-object v2, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-interface {v0, v2}, Lio/realm/w;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lio/realm/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    const/4 v2, 0x0

    .line 249
    :goto_1
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 251
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/w;

    .line 252
    if-nez v1, :cond_1

    .line 253
    if-nez v2, :cond_4

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/realm/l;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v1

    .line 260
    goto :goto_1

    .line 258
    :cond_1
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-interface {v1, v0}, Lio/realm/w;->a(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_3

    .line 261
    :cond_2
    if-eqz v2, :cond_3

    .line 262
    iget-object v0, p0, Lio/realm/l;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 264
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method private f()V
    .locals 8

    .prologue
    .line 267
    iget-object v0, p0, Lio/realm/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 268
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    sget-object v4, Lio/realm/u;->b:Lio/realm/internal/async/d;

    .line 272
    invoke-static {}, Lio/realm/internal/async/c;->a()Lio/realm/internal/async/c$b$d;

    move-result-object v1

    iget-object v2, p0, Lio/realm/l;->c:Lio/realm/a;

    .line 273
    invoke-virtual {v2}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/internal/async/c$b$d;->a(Lio/realm/x;)Lio/realm/internal/async/c$b$g;

    move-result-object v5

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/af;

    invoke-virtual {v2}, Lio/realm/af;->h()J

    move-result-wide v6

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/af;

    invoke-virtual {v0}, Lio/realm/af;->g()Lio/realm/internal/async/a;

    move-result-object v0

    .line 274
    invoke-interface {v5, v1, v6, v7, v0}, Lio/realm/internal/async/c$b$g;->b(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$b;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->g:Landroid/os/Handler;

    const v2, 0x3c50ea2

    .line 277
    invoke-interface {v0, v1, v2}, Lio/realm/internal/async/c$b$b;->a(Landroid/os/Handler;I)Lio/realm/internal/async/c$b$a;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Lio/realm/internal/async/c$b$a;->a()Lio/realm/internal/async/c;

    move-result-object v0

    .line 272
    invoke-virtual {v4, v0}, Lio/realm/internal/async/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v0, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 357
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 359
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 360
    if-nez v0, :cond_1

    .line 361
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    :cond_2
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    sget-object v3, Lio/realm/internal/l;->b:Lio/realm/internal/l;

    if-eq v0, v3, :cond_0

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 373
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->l()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 375
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->g()V

    goto :goto_1

    .line 377
    :cond_4
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 380
    iget-object v0, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 383
    sget-object v0, Lio/realm/u;->b:Lio/realm/internal/async/d;

    invoke-virtual {v0}, Lio/realm/internal/async/d;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REALM_CHANGED realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancelling pending COMPLETED_UPDATE_ASYNC_QUERIES updates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REALM_CHANGED realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updating async queries, total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lio/realm/internal/async/c;->a()Lio/realm/internal/async/c$b$d;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l;->c:Lio/realm/a;

    .line 389
    invoke-virtual {v1}, Lio/realm/a;->i()Lio/realm/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/internal/async/c$b$d;->a(Lio/realm/x;)Lio/realm/internal/async/c$b$g;

    move-result-object v4

    .line 390
    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 394
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 397
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/ag;

    .line 398
    if-nez v2, :cond_1

    .line 400
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move-object v0, v3

    :goto_1
    move-object v3, v0

    .line 415
    goto :goto_0

    .line 404
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/af;

    invoke-virtual {v2}, Lio/realm/af;->h()J

    move-result-wide v2

    .line 405
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/af;

    invoke-virtual {v0}, Lio/realm/af;->g()Lio/realm/internal/async/a;

    move-result-object v0

    .line 403
    invoke-interface {v4, v1, v2, v3, v0}, Lio/realm/internal/async/c$b$g;->a(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)Lio/realm/internal/async/c$b$e;

    move-result-object v0

    goto :goto_1

    .line 416
    :cond_2
    if-eqz v3, :cond_3

    .line 417
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->g:Landroid/os/Handler;

    const v1, 0x1709e79

    .line 418
    invoke-interface {v3, v0, v1}, Lio/realm/internal/async/c$b$e;->a(Landroid/os/Handler;I)Lio/realm/internal/async/c$b$a;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Lio/realm/internal/async/c$b$a;->a()Lio/realm/internal/async/c;

    move-result-object v0

    .line 420
    sget-object v1, Lio/realm/u;->b:Lio/realm/internal/async/d;

    invoke-virtual {v1, v0}, Lio/realm/internal/async/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/realm/l;->k:Ljava/util/concurrent/Future;

    .line 422
    :cond_3
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lio/realm/l;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lio/realm/l;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 591
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lio/realm/l;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 595
    :cond_1
    return-void
.end method

.method private j()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 665
    .line 666
    iget-object v0, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 667
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 669
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 670
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 674
    goto :goto_0

    :cond_0
    move v0, v3

    .line 672
    goto :goto_1

    .line 676
    :cond_1
    if-nez v1, :cond_2

    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private k()V
    .locals 2

    .prologue
    .line 703
    :goto_0
    iget-object v0, p0, Lio/realm/l;->l:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lio/realm/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 706
    :cond_0
    :goto_1
    iget-object v0, p0, Lio/realm/l;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v1, p0, Lio/realm/l;->g:Lio/realm/internal/d;

    invoke-virtual {v1, v0}, Lio/realm/internal/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 709
    :cond_1
    :goto_2
    iget-object v0, p0, Lio/realm/l;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v1, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 712
    :cond_2
    return-void
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 816
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_0

    const-string v1, "IntentService["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lio/realm/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/realm/l;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 724
    iget-object v1, p0, Lio/realm/l;->g:Lio/realm/internal/d;

    invoke-virtual {v1, v0}, Lio/realm/internal/d;->a(Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method a(Lio/realm/internal/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/internal/j;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 731
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 735
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/realm/l;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 737
    iget-object v1, p0, Lio/realm/l;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lio/realm/l;->i:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ag;

    .line 301
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/realm/ag;->a(Z)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0}, Lio/realm/l;->g()V

    .line 309
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/realm/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lio/realm/l;->f()V

    .line 314
    :cond_1
    invoke-direct {p0}, Lio/realm/l;->i()V

    .line 318
    invoke-direct {p0}, Lio/realm/l;->e()V

    .line 319
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 779
    invoke-virtual {p0}, Lio/realm/l;->c()V

    .line 780
    iput-boolean p1, p0, Lio/realm/l;->j:Z

    .line 781
    return-void
.end method

.method a()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 686
    .line 687
    iget-object v0, p0, Lio/realm/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 688
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 691
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 695
    goto :goto_0

    :cond_0
    move v0, v3

    .line 693
    goto :goto_1

    .line 697
    :cond_1
    if-nez v1, :cond_2

    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lio/realm/l;->j:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 792
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set auto-refresh in a Thread without a Looper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    invoke-static {}, Lio/realm/l;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set auto-refresh in an IntentService thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/realm/l;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    :cond_0
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lio/realm/l;->c:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/m;

    if-eqz v0, :cond_0

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x9de8d6d

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lio/realm/l;->b(Z)V

    .line 145
    :cond_0
    :goto_1
    return v1

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/c$c;

    .line 123
    invoke-direct {p0, v0}, Lio/realm/l;->a(Lio/realm/internal/async/c$c;)V

    goto :goto_1

    .line 127
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/c$c;

    .line 128
    invoke-direct {p0, v0}, Lio/realm/l;->c(Lio/realm/internal/async/c$c;)V

    goto :goto_1

    .line 133
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/async/c$c;

    .line 134
    invoke-direct {p0, v0}, Lio/realm/l;->b(Lio/realm/internal/async/c$c;)V

    goto :goto_1

    .line 139
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0xe3d1b0 -> :sswitch_0
        0x1709e79 -> :sswitch_3
        0x2547029 -> :sswitch_1
        0x3c50ea2 -> :sswitch_2
        0x6197ecb -> :sswitch_4
        0x9de8d6d -> :sswitch_0
    .end sparse-switch
.end method
