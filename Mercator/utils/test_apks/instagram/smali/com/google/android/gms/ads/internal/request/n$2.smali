.class Lcom/google/android/gms/ads/internal/request/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/n;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/ads/internal/request/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/n;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/n$2;->c:Lcom/google/android/gms/ads/internal/request/n;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/n$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/n$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n$2;->c:Lcom/google/android/gms/ads/internal/request/n;

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/n;->f()Lcom/google/android/gms/internal/fm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fm;->a()Lcom/google/android/gms/internal/fm$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/n;->a(Lcom/google/android/gms/ads/internal/request/n;Lcom/google/android/gms/internal/fm$c;)Lcom/google/android/gms/internal/fm$c;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n$2;->c:Lcom/google/android/gms/ads/internal/request/n;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/n;->b(Lcom/google/android/gms/ads/internal/request/n;)Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/n$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/request/n$2$1;-><init>(Lcom/google/android/gms/ads/internal/request/n$2;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/n$2$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/n$2$2;-><init>(Lcom/google/android/gms/ads/internal/request/n$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    return-void
.end method
