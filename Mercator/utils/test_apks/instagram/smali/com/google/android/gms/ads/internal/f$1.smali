.class Lcom/google/android/gms/ads/internal/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/f;->a(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/ju;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/ads/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/ads/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f$1;->a:Lcom/google/android/gms/ads/internal/f;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/f;->f:Lcom/google/android/gms/ads/internal/v;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/v;->j:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/f;->d(Lcom/google/android/gms/internal/ju;)V

    return-void
.end method
