.class Lcom/google/android/gms/ads/internal/overlay/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/l;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l$2;->a:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l$2;->a:Lcom/google/android/gms/ads/internal/overlay/l;

    const-string v1, "surfaceDestroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/l;->a(Lcom/google/android/gms/ads/internal/overlay/l;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
