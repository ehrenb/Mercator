.class Lcom/google/android/gms/ads/internal/cache/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/cache/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/cache/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->c(Lcom/google/android/gms/ads/internal/cache/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/a;Lcom/google/android/gms/ads/internal/cache/c;)Lcom/google/android/gms/ads/internal/cache/c;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/a;Lcom/google/android/gms/ads/internal/cache/f;)Lcom/google/android/gms/ads/internal/cache/f;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->c(Lcom/google/android/gms/ads/internal/cache/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->u()Lcom/google/android/gms/internal/kq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->c(Lcom/google/android/gms/ads/internal/cache/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/cache/a;->d(Lcom/google/android/gms/ads/internal/cache/a;)Lcom/google/android/gms/ads/internal/cache/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/cache/c;->e_()Lcom/google/android/gms/ads/internal/cache/f;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/a;Lcom/google/android/gms/ads/internal/cache/f;)Lcom/google/android/gms/ads/internal/cache/f;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->c(Lcom/google/android/gms/ads/internal/cache/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$3;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
