.class Lcom/google/android/gms/internal/nk$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nk;->a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/og;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/h",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/og;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/common/api/c;

.field final synthetic d:Lcom/google/android/gms/internal/nk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nk;Lcom/google/android/gms/internal/og;ZLcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nk$4;->d:Lcom/google/android/gms/internal/nk;

    iput-object p2, p0, Lcom/google/android/gms/internal/nk$4;->a:Lcom/google/android/gms/internal/og;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/nk$4;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/nk$4;->c:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nk$4;->d:Lcom/google/android/gms/internal/nk;

    invoke-static {v0}, Lcom/google/android/gms/internal/nk;->c(Lcom/google/android/gms/internal/nk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/k;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/k;->c()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nk$4;->d:Lcom/google/android/gms/internal/nk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nk$4;->d:Lcom/google/android/gms/internal/nk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->l()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nk$4;->a:Lcom/google/android/gms/internal/og;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/og;->b(Lcom/google/android/gms/common/api/g;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nk$4;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nk$4;->c:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->g()V

    :cond_1
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nk$4;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
