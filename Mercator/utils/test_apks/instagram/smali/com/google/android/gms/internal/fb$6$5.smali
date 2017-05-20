.class Lcom/google/android/gms/internal/fb$6$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fb$6;->a(Lcom/google/android/gms/ads/internal/reward/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/reward/client/a;

.field final synthetic b:Lcom/google/android/gms/internal/fb$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb$6;Lcom/google/android/gms/ads/internal/reward/client/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fb$6$5;->b:Lcom/google/android/gms/internal/fb$6;

    iput-object p2, p0, Lcom/google/android/gms/internal/fb$6$5;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->f:Lcom/google/android/gms/ads/internal/reward/client/d;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->f:Lcom/google/android/gms/ads/internal/reward/client/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/fb$6$5;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/d;->a(Lcom/google/android/gms/ads/internal/reward/client/a;)V

    :cond_0
    return-void
.end method
