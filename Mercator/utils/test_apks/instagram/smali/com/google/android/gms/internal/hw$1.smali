.class Lcom/google/android/gms/internal/hw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hw;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hw$1;->a:Lcom/google/android/gms/internal/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hw$1;->a:Lcom/google/android/gms/internal/hw;

    invoke-static {v0}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hw$1;->a:Lcom/google/android/gms/internal/hw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hw;->d()V

    goto :goto_0
.end method
