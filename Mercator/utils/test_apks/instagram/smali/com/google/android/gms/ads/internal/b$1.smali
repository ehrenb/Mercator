.class Lcom/google/android/gms/ads/internal/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/b;->a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/ads/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/b;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->s()Lcom/google/android/gms/ads/internal/purchase/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/i;->a(Landroid/content/Intent;)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->s()Lcom/google/android/gms/ads/internal/purchase/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/v;->j:Lcom/google/android/gms/internal/ju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/v;->j:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->b:Lcom/google/android/gms/internal/ll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/v;->j:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->b:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->i()Lcom/google/android/gms/ads/internal/overlay/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/v;->j:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->b:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->i()Lcom/google/android/gms/ads/internal/overlay/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/e;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$1;->b:Lcom/google/android/gms/ads/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/v;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/v;->F:Z

    return-void
.end method
