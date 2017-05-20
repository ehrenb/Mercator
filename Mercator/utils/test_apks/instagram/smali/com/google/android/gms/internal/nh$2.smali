.class Lcom/google/android/gms/internal/nh$2;
.super Lcom/google/android/gms/internal/nm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nh;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/nh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nh$2;->a:Lcom/google/android/gms/internal/nh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/nm$a;-><init>(Lcom/google/android/gms/internal/nl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nh$2;->a:Lcom/google/android/gms/internal/nh;

    invoke-static {v0}, Lcom/google/android/gms/internal/nh;->a(Lcom/google/android/gms/internal/nh;)Lcom/google/android/gms/internal/nm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/nm;->h:Lcom/google/android/gms/internal/nr$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nr$a;->a(Landroid/os/Bundle;)V

    return-void
.end method
