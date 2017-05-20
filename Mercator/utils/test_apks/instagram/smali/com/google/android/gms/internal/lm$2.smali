.class Lcom/google/android/gms/internal/lm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lm;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->i()Lcom/google/android/gms/ads/internal/overlay/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/e;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    invoke-static {v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/lm$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    invoke-static {v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/lm$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/lm$c;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm$2;->a:Lcom/google/android/gms/internal/lm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm$c;)Lcom/google/android/gms/internal/lm$c;

    :cond_1
    return-void
.end method
