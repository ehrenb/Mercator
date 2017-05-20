.class Lcom/google/android/gms/ads/internal/formats/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/l;->a(Lcom/google/android/gms/dynamic/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/j;

.field final synthetic b:Lcom/google/android/gms/ads/internal/formats/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/l;Lcom/google/android/gms/ads/internal/formats/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->b:Lcom/google/android/gms/ads/internal/formats/l;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/j;->c()Lcom/google/android/gms/internal/ll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->b:Lcom/google/android/gms/ads/internal/formats/l;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/l;->a(Lcom/google/android/gms/ads/internal/formats/l;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->b:Lcom/google/android/gms/ads/internal/formats/l;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/l;->a(Lcom/google/android/gms/ads/internal/formats/l;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->a:Lcom/google/android/gms/ads/internal/formats/j;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->b:Lcom/google/android/gms/ads/internal/formats/l;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/l$1;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/formats/l;->a(Lcom/google/android/gms/ads/internal/formats/l;Lcom/google/android/gms/ads/internal/formats/j;)V

    :cond_1
    return-void
.end method
