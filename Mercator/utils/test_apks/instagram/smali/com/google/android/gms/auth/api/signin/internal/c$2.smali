.class Lcom/google/android/gms/auth/api/signin/internal/c$2;
.super Lcom/google/android/gms/auth/api/signin/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/c;->c(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/c$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/c;Lcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/c$2;->a:Lcom/google/android/gms/auth/api/signin/internal/c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/c$a;-><init>(Lcom/google/android/gms/auth/api/signin/internal/c;Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected a(Lcom/google/android/gms/auth/api/signin/internal/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/d;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/h;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/c$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/c$2$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/c$2;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/d;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/h;->c(Lcom/google/android/gms/auth/api/signin/internal/g;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/d;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/c$2;->a(Lcom/google/android/gms/auth/api/signin/internal/d;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/g;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/c$2;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
