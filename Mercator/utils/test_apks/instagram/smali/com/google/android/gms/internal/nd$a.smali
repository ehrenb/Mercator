.class Lcom/google/android/gms/internal/nd$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/a;
.implements Lcom/google/android/gms/tasks/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/a;",
        "Lcom/google/android/gms/tasks/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/nd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/nd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nd;Lcom/google/android/gms/internal/nd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nd$a;-><init>(Lcom/google/android/gms/internal/nd;)V

    return-void
.end method

.method private a()Lcom/google/android/gms/common/ConnectionResult;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->g(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/nd;->c(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/nd;->b(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/l;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/l;->d()Lcom/google/android/gms/internal/mu;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v2}, Lcom/google/android/gms/internal/nd;->g(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v2}, Lcom/google/android/gms/internal/nd;->h(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/common/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$e;->a()I

    move-result v0

    if-eqz v4, :cond_2

    if-le v3, v0, :cond_4

    :cond_2
    :goto_1
    move v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    move v0, v3

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzb;->a()Landroid/support/v4/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nd$a;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->f(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->d(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/internal/nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nk;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->e(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->d(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/internal/nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/nd;->f(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nk;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nd$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    new-instance v1, Landroid/support/v4/f/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v2}, Lcom/google/android/gms/internal/nd;->b(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/f/a;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->b(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v2}, Lcom/google/android/gms/internal/nd;->c(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v3}, Lcom/google/android/gms/internal/nd;->b(Lcom/google/android/gms/internal/nd;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->d()Lcom/google/android/gms/internal/mu;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v1}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->d(Lcom/google/android/gms/internal/nd;)Lcom/google/android/gms/internal/nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nk;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->e(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nd$a;->a:Lcom/google/android/gms/internal/nd;

    invoke-static {v0}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/nd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
