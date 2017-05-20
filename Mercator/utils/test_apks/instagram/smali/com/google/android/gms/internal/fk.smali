.class public Lcom/google/android/gms/internal/fk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fk$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/fk$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/fj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/fk$a",
            "<",
            "Lcom/google/android/gms/internal/fj;",
            ">;",
            "Lcom/google/android/gms/internal/ah;",
            "Lcom/google/android/gms/ads/internal/d;",
            ")",
            "Lcom/google/android/gms/internal/fj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/fl;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/fl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;)V

    iput-object v0, p3, Lcom/google/android/gms/internal/fk$a;->a:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/fk$2;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/fk$2;-><init>(Lcom/google/android/gms/internal/fk;Lcom/google/android/gms/internal/fk$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fj;->a(Lcom/google/android/gms/internal/fj$a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fk;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/fk$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/fj;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/fk;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/fk$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ah;",
            "Lcom/google/android/gms/ads/internal/d;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/fj;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/fk$a;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/fk$a;-><init>(Lcom/google/android/gms/internal/fk$1;)V

    sget-object v8, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/fk$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fk$1;-><init>(Lcom/google/android/gms/internal/fk;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/fk$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/d;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
