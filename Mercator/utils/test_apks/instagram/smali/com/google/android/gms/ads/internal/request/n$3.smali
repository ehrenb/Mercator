.class Lcom/google/android/gms/ads/internal/request/n$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/n$3;->a:Lcom/google/android/gms/ads/internal/request/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n$3;->a:Lcom/google/android/gms/ads/internal/request/n;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/n;->b(Lcom/google/android/gms/ads/internal/request/n;)Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n$3;->a:Lcom/google/android/gms/ads/internal/request/n;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/n;->b(Lcom/google/android/gms/ads/internal/request/n;)Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$c;->l_()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n$3;->a:Lcom/google/android/gms/ads/internal/request/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/n;->a(Lcom/google/android/gms/ads/internal/request/n;Lcom/google/android/gms/internal/fm$c;)Lcom/google/android/gms/internal/fm$c;

    :cond_0
    return-void
.end method
