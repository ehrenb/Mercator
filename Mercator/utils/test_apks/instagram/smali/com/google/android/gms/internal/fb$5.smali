.class Lcom/google/android/gms/internal/fb$5;
.super Lcom/google/android/gms/ads/internal/client/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/ads/internal/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fb$5;->a:Lcom/google/android/gms/internal/fb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/ab$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fb$5;->a:Lcom/google/android/gms/internal/fb;

    invoke-static {v0}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fb$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fb$5$1;-><init>(Lcom/google/android/gms/internal/fb$5;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
