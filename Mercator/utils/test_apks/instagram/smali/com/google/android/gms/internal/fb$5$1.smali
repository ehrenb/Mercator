.class Lcom/google/android/gms/internal/fb$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fb$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fb$5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb$5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fb$5$1;->a:Lcom/google/android/gms/internal/fb$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->e:Lcom/google/android/gms/ads/internal/client/ab;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->e:Lcom/google/android/gms/ads/internal/client/ab;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/ab;->a()V

    :cond_0
    return-void
.end method
