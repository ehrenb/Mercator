.class public Lcom/google/android/gms/ads/internal/reward/client/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/c/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/reward/client/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/reward/client/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/e;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/e;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/e;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/reward/client/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not forward getType to RewardItem"

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/e;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/e;->a:Lcom/google/android/gms/ads/internal/reward/client/a;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/reward/client/a;->b()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not forward getAmount to RewardItem"

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
