.class Lcom/google/android/gms/internal/fm$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fj;

.field final synthetic b:Lcom/google/android/gms/internal/fm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm$1;Lcom/google/android/gms/internal/fj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1$4;->b:Lcom/google/android/gms/internal/fm$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$1$4;->a:Lcom/google/android/gms/internal/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$4;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->c(Lcom/google/android/gms/internal/fm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$4;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$d;->b()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$4;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$d;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$4;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$d;->a()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->e()Lcom/google/android/gms/internal/ki;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/fm$1$4$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/fm$1$4$1;-><init>(Lcom/google/android/gms/internal/fm$1$4;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ki;->a(Ljava/lang/Runnable;)V

    const-string v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
