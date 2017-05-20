.class Lcom/google/android/gms/internal/fm$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ld$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/fm$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ld$c",
        "<",
        "Lcom/google/android/gms/internal/fj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fm$d;

.field final synthetic b:Lcom/google/android/gms/internal/fm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/fm$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$2;->a:Lcom/google/android/gms/internal/fm$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->c(Lcom/google/android/gms/internal/fm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fm;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->g(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/internal/fm$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->a:Lcom/google/android/gms/internal/fm$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    invoke-static {v2}, Lcom/google/android/gms/internal/fm;->g(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/internal/fm$d;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->g(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/internal/fm$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm$d;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$2;->b:Lcom/google/android/gms/internal/fm;

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$2;->a:Lcom/google/android/gms/internal/fm$d;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/fm$d;)Lcom/google/android/gms/internal/fm$d;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fm$2;->a(Lcom/google/android/gms/internal/fj;)V

    return-void
.end method
