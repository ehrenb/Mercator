.class public Lcom/google/android/gms/internal/eu;
.super Lcom/google/android/gms/internal/kc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ll;

.field final b:Lcom/google/android/gms/internal/ew;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/ew;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/kc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/ll;

    iput-object p2, p0, Lcom/google/android/gms/internal/eu;->b:Lcom/google/android/gms/internal/ew;

    iput-object p3, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->B()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Lcom/google/android/gms/internal/ew;

    iget-object v1, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ew;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/eu$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/eu$1;-><init>(Lcom/google/android/gms/internal/eu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/eu$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/eu$1;-><init>(Lcom/google/android/gms/internal/eu;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Lcom/google/android/gms/internal/ew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ew;->b()V

    return-void
.end method
