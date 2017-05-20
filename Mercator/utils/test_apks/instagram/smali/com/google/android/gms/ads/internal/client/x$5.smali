.class Lcom/google/android/gms/ads/internal/client/x$5;
.super Lcom/google/android/gms/ads/internal/client/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/x;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/x$a",
        "<",
        "Lcom/google/android/gms/internal/hn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/gms/ads/internal/client/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/x;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/x$5;->b:Lcom/google/android/gms/ads/internal/client/x;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/x$5;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/x$a;-><init>(Lcom/google/android/gms/ads/internal/client/x;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/hn;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$5;->b:Lcom/google/android/gms/ads/internal/client/x;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/x;->d(Lcom/google/android/gms/ads/internal/client/x;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/x$5;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hs;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/hn;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$5;->b:Lcom/google/android/gms/ads/internal/client/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/x$5;->a:Landroid/app/Activity;

    const-string v2, "iap"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/x;->a(Lcom/google/android/gms/ads/internal/client/x;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/aj;)Lcom/google/android/gms/internal/hn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/aj;->createInAppPurchaseManager(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/hn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/x$5;->a()Lcom/google/android/gms/internal/hn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/ads/internal/client/aj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/x$5;->a(Lcom/google/android/gms/ads/internal/client/aj;)Lcom/google/android/gms/internal/hn;

    move-result-object v0

    return-object v0
.end method
