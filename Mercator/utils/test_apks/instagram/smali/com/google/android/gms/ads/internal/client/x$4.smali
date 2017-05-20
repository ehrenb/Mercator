.class Lcom/google/android/gms/ads/internal/client/x$4;
.super Lcom/google/android/gms/ads/internal/client/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/x;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ge;)Lcom/google/android/gms/ads/internal/client/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/x$a",
        "<",
        "Lcom/google/android/gms/ads/internal/client/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ge;

.field final synthetic d:Lcom/google/android/gms/ads/internal/client/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/x;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ge;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/x$4;->d:Lcom/google/android/gms/ads/internal/client/x;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/x$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/x$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/x$4;->c:Lcom/google/android/gms/internal/ge;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/x$a;-><init>(Lcom/google/android/gms/ads/internal/client/x;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/client/ae;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$4;->d:Lcom/google/android/gms/ads/internal/client/x;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/x;->c(Lcom/google/android/gms/ads/internal/client/x;)Lcom/google/android/gms/ads/internal/client/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/x$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/x$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/x$4;->c:Lcom/google/android/gms/internal/ge;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ge;)Lcom/google/android/gms/ads/internal/client/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$4;->d:Lcom/google/android/gms/ads/internal/client/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/x$4;->a:Landroid/content/Context;

    const-string v2, "native_ad"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/x;->a(Lcom/google/android/gms/ads/internal/client/x;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/i;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/i;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/aj;)Lcom/google/android/gms/ads/internal/client/ae;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/x$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/x$4;->c:Lcom/google/android/gms/internal/ge;

    const v3, 0x96b608

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/aj;->createAdLoaderBuilder(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ge;I)Lcom/google/android/gms/ads/internal/client/ae;

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

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/x$4;->a()Lcom/google/android/gms/ads/internal/client/ae;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/x$4;->a(Lcom/google/android/gms/ads/internal/client/aj;)Lcom/google/android/gms/ads/internal/client/ae;

    move-result-object v0

    return-object v0
.end method
