.class public Lcom/google/android/gms/internal/lk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ll;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private d:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ll;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/lk;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/ads/internal/overlay/l;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lk;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/lk;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    iput-object p4, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/overlay/l;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    return-object v0
.end method

.method public a(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/l;->a(IIII)V

    :cond_0
    return-void
.end method

.method public a(IIIIIZ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->y()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->a()Lcom/google/android/gms/internal/de;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->x()Lcom/google/android/gms/internal/dc;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "vpr2"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/da;->a(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/dc;[Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/lk;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    iget-object v3, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ll;->y()Lcom/google/android/gms/internal/dd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/dd;->a()Lcom/google/android/gms/internal/de;

    move-result-object v5

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ll;IZLcom/google/android/gms/internal/de;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/l;->a(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->l()Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/lm;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->i()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->n()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lk;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    :cond_0
    return-void
.end method
