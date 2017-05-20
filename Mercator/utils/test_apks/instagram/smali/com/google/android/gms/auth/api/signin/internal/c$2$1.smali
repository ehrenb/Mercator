.class Lcom/google/android/gms/auth/api/signin/internal/c$2$1;
.super Lcom/google/android/gms/auth/api/signin/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/c$2;->a(Lcom/google/android/gms/auth/api/signin/internal/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/c$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/c$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/c$2$1;->a:Lcom/google/android/gms/auth/api/signin/internal/c$2;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/c$2$1;->a:Lcom/google/android/gms/auth/api/signin/internal/c$2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/c$2;->b(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method
