.class Lcom/google/android/gms/internal/ig$4;
.super Lcom/google/android/gms/internal/if$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ig;->a(Lcom/google/android/gms/ads/internal/formats/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ei;

.field final synthetic b:Lcom/google/android/gms/internal/ig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ig;Lcom/google/android/gms/internal/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ig$4;->b:Lcom/google/android/gms/internal/ig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ig$4;->a:Lcom/google/android/gms/internal/ei;

    invoke-direct {p0}, Lcom/google/android/gms/internal/if$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fn;)V
    .locals 2

    const-string v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/ig$4;->a:Lcom/google/android/gms/internal/ei;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method
