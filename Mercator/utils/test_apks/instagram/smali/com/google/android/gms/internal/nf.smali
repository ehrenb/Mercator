.class public Lcom/google/android/gms/internal/nf;
.super Lcom/google/android/gms/internal/my;


# instance fields
.field private final e:Lcom/google/android/gms/common/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/internal/mu",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/no;


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/my;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->e:Lcom/google/android/gms/common/util/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->f:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/nf;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->f:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/no;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/my;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->f:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/no;->b(Lcom/google/android/gms/internal/nf;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->f:Lcom/google/android/gms/internal/no;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/no;->c()V

    return-void
.end method

.method e()Lcom/google/android/gms/common/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/internal/mu",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->e:Lcom/google/android/gms/common/util/a;

    return-object v0
.end method
