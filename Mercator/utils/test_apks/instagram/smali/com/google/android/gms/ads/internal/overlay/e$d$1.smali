.class Lcom/google/android/gms/ads/internal/overlay/e$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/e$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/google/android/gms/ads/internal/overlay/e$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/e$d;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e$d$1;->b:Lcom/google/android/gms/ads/internal/overlay/e$d;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/e$d$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/e$d$1;->b:Lcom/google/android/gms/ads/internal/overlay/e$d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/e$d;->a:Lcom/google/android/gms/ads/internal/overlay/e;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/e;->a(Lcom/google/android/gms/ads/internal/overlay/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/e$d$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
