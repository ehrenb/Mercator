.class final Lcom/google/android/gms/internal/kh$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kh;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kx;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kx;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kh$3;->a:Lcom/google/android/gms/internal/kx;

    iput-object p2, p0, Lcom/google/android/gms/internal/kh$3;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kh$3;->a:Lcom/google/android/gms/internal/kx;

    iget-object v1, p0, Lcom/google/android/gms/internal/kh$3;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kx;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v1

    const-string v2, "AdThreadPool.submit"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/jx;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/kh$3;->a:Lcom/google/android/gms/internal/kx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/kx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
