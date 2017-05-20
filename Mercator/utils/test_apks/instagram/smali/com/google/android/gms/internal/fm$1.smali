.class Lcom/google/android/gms/internal/fm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm;->c(Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/fm$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ah;

.field final synthetic b:Lcom/google/android/gms/internal/fm$d;

.field final synthetic c:Lcom/google/android/gms/internal/fm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/fm$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/ah;

    iput-object p3, p0, Lcom/google/android/gms/internal/fm$1;->b:Lcom/google/android/gms/internal/fm$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v2}, Lcom/google/android/gms/internal/fm;->b(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fm;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/fm$1$1;-><init>(Lcom/google/android/gms/internal/fm$1;Lcom/google/android/gms/internal/fj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fj;->a(Lcom/google/android/gms/internal/fj$a;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/fm$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/fm$1$2;-><init>(Lcom/google/android/gms/internal/fm$1;Lcom/google/android/gms/internal/fj;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    new-instance v1, Lcom/google/android/gms/internal/ku;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ku;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/fm$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/fm$1$3;-><init>(Lcom/google/android/gms/internal/fm$1;Lcom/google/android/gms/internal/fj;Lcom/google/android/gms/internal/ku;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->f(Lcom/google/android/gms/internal/fm;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->f(Lcom/google/android/gms/internal/fm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fj;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/fm$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/fm$1$4;-><init>(Lcom/google/android/gms/internal/fm$1;Lcom/google/android/gms/internal/fj;)V

    sget v0, Lcom/google/android/gms/internal/fm$a;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->f(Lcom/google/android/gms/internal/fm;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->f(Lcom/google/android/gms/internal/fm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fj;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->c:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->f(Lcom/google/android/gms/internal/fm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fj;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
