.class public abstract Lcom/google/android/gms/ads/internal/overlay/j;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/b$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/ads/internal/overlay/w;

.field protected final b:Lcom/google/android/gms/ads/internal/overlay/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/w;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->a:Lcom/google/android/gms/ads/internal/overlay/w;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/b;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/overlay/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/b$a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/ads/internal/overlay/b;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/ads/internal/overlay/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/b;->a(F)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/j;->a()V

    return-void
.end method

.method public abstract a(FF)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/google/android/gms/ads/internal/overlay/i;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/ads/internal/overlay/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/b;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/j;->a()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/ads/internal/overlay/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/b;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/j;->a()V

    return-void
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method
