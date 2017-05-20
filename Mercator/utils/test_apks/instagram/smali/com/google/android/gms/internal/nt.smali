.class public Lcom/google/android/gms/internal/nt;
.super Ljava/lang/Object;


# instance fields
.field protected final d:Lcom/google/android/gms/internal/nu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/nu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nt;->d:Lcom/google/android/gms/internal/nu;

    return-void
.end method

.method protected static b(Lcom/google/android/gms/internal/ns;)Lcom/google/android/gms/internal/nu;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ns;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ns;->c()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/oh;->a(Landroid/support/v4/app/u;)Lcom/google/android/gms/internal/oh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ns;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nv;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 0

    return-void
.end method
