.class Lcom/google/android/gms/ads/internal/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/g;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/jw;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fm;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/google/android/gms/ads/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/g;Lcom/google/android/gms/internal/fm;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g$2;->f:Lcom/google/android/gms/ads/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/g$2;->a:Lcom/google/android/gms/internal/fm;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/g$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/g$2;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/g$2;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/g$2;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g$2;->a:Lcom/google/android/gms/internal/fm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->a()Lcom/google/android/gms/internal/fm$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/g$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/g$2$1;-><init>(Lcom/google/android/gms/ads/internal/g$2;)V

    new-instance v2, Lcom/google/android/gms/internal/ld$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ld$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fm$c;->a(Lcom/google/android/gms/internal/ld$c;Lcom/google/android/gms/internal/ld$a;)V

    return-void
.end method
