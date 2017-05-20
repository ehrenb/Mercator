.class public Lcom/google/android/gms/ads/internal/client/j;
.super Lcom/google/android/gms/ads/internal/client/ag$a;


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/ag$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/client/j;)Lcom/google/android/gms/ads/internal/client/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/j;->a:Lcom/google/android/gms/ads/internal/client/ac;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ab;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/j;->a:Lcom/google/android/gms/ads/internal/client/ac;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ai;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ak;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/reward/client/d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/dj;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hm;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hq;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/j$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/j$1;-><init>(Lcom/google/android/gms/ads/internal/client/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g_()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k_()V
    .locals 0

    return-void
.end method

.method public l()Lcom/google/android/gms/ads/internal/client/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
