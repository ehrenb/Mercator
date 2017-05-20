.class Lcom/google/android/gms/internal/fb$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fb$3;->a(Lcom/google/android/gms/internal/hl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hl;

.field final synthetic b:Lcom/google/android/gms/internal/fb$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb$3;Lcom/google/android/gms/internal/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fb$3$1;->b:Lcom/google/android/gms/internal/fb$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/fb$3$1;->a:Lcom/google/android/gms/internal/hl;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->c:Lcom/google/android/gms/internal/hm;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/fc;->c:Lcom/google/android/gms/internal/hm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fb$3$1;->a:Lcom/google/android/gms/internal/hl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/internal/hl;)V

    :cond_0
    return-void
.end method
