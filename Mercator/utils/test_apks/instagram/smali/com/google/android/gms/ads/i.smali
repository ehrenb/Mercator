.class public final Lcom/google/android/gms/ads/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/ads/internal/client/c;

.field private c:Lcom/google/android/gms/ads/i$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/client/c;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->b:Lcom/google/android/gms/ads/internal/client/c;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/ads/i$a;)V
    .locals 3

    const-string v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/i;->c:Lcom/google/android/gms/ads/i$a;

    iget-object v0, p0, Lcom/google/android/gms/ads/i;->b:Lcom/google/android/gms/ads/internal/client/c;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->b:Lcom/google/android/gms/ads/internal/client/c;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/l;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/client/l;-><init>(Lcom/google/android/gms/ads/i$a;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/client/c;->a(Lcom/google/android/gms/ads/internal/client/d;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/c;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/i;->b:Lcom/google/android/gms/ads/internal/client/c;

    iget-object v0, p0, Lcom/google/android/gms/ads/i;->c:Lcom/google/android/gms/ads/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/i;->c:Lcom/google/android/gms/ads/i$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/i$a;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
