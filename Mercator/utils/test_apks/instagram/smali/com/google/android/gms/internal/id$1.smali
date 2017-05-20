.class Lcom/google/android/gms/internal/id$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/id;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/google/android/gms/internal/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/id;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/id$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    iget-object v1, v0, Lcom/google/android/gms/internal/id;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ll;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    iget-object v3, v3, Lcom/google/android/gms/internal/id;->h:Lcom/google/android/gms/internal/fz;

    iget-object v4, p0, Lcom/google/android/gms/internal/id$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/fz;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
