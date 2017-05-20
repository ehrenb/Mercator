.class Lcom/google/android/gms/internal/op$1;
.super Lcom/google/android/gms/internal/oq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/op;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/op;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/op$1;->a:Lcom/google/android/gms/internal/op;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/oq$a;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/or;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/op$1;->a(Lcom/google/android/gms/internal/or;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/or;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ot;

    new-instance v1, Lcom/google/android/gms/internal/op$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/op$a;-><init>(Lcom/google/android/gms/internal/mx$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ot;->a(Lcom/google/android/gms/internal/os;)V

    return-void
.end method
