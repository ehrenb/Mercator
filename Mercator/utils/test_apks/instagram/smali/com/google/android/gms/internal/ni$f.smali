.class abstract Lcom/google/android/gms/internal/ni$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ni;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ni;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ni;Lcom/google/android/gms/internal/ni$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ni$f;-><init>(Lcom/google/android/gms/internal/ni;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ni;->c(Lcom/google/android/gms/internal/ni;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ni;->c(Lcom/google/android/gms/internal/ni;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ni$f;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ni;->c(Lcom/google/android/gms/internal/ni;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v1}, Lcom/google/android/gms/internal/ni;->d(Lcom/google/android/gms/internal/ni;)Lcom/google/android/gms/internal/nm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nm;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ni;->c(Lcom/google/android/gms/internal/ni;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$f;->b:Lcom/google/android/gms/internal/ni;

    invoke-static {v1}, Lcom/google/android/gms/internal/ni;->c(Lcom/google/android/gms/internal/ni;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
