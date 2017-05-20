.class Lcom/google/android/gms/internal/ig$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ig;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ig$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kx;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ig;Lcom/google/android/gms/internal/kx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ig$2;->c:Lcom/google/android/gms/internal/ig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/kx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ig$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ig$2;->a:Lcom/google/android/gms/internal/kx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ig$2;->c:Lcom/google/android/gms/internal/ig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->b(Lcom/google/android/gms/internal/ig;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/q;->F()Landroid/support/v4/f/j;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ig$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/kx;->b(Ljava/lang/Object;)V

    return-void
.end method
