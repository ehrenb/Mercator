.class Lcom/google/android/gms/ads/internal/cache/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/cache/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/cache/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/cache/a$2;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$2;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->b(Lcom/google/android/gms/ads/internal/cache/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/a$2;->a:Lcom/google/android/gms/ads/internal/cache/a;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/a;)V

    goto :goto_0
.end method
