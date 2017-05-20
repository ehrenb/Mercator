.class Lcom/google/android/gms/ads/internal/overlay/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/w;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/ads/internal/overlay/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/i;

.field final synthetic b:Lcom/google/android/gms/ads/internal/overlay/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/ads/internal/overlay/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/w$1;->b:Lcom/google/android/gms/ads/internal/overlay/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/w$1;->a:Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/w$1;->a:Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/i;->g()V

    return-void
.end method
