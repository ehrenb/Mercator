.class Lcom/google/android/gms/internal/kc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kc$1;->a:Lcom/google/android/gms/internal/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kc$1;->a:Lcom/google/android/gms/internal/kc;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/kc$1;->a:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kc;->a()V

    return-void
.end method
