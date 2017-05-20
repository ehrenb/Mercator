.class public Lcom/google/android/gms/ads/internal/client/y;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/client/y;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/client/a;

.field private final d:Lcom/google/android/gms/ads/internal/client/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/y;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/y;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/y;->a(Lcom/google/android/gms/ads/internal/client/y;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/x;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/q;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/q;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/client/p;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/p;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/client/h;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/h;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/dz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/dz;-><init>()V

    new-instance v5, Lcom/google/android/gms/ads/internal/reward/client/f;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/reward/client/f;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/hs;

    invoke-direct {v6}, Lcom/google/android/gms/internal/hs;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/hc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/hc;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/client/x;-><init>(Lcom/google/android/gms/ads/internal/client/q;Lcom/google/android/gms/ads/internal/client/p;Lcom/google/android/gms/ads/internal/client/h;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/ads/internal/reward/client/f;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/hc;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->d:Lcom/google/android/gms/ads/internal/client/x;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/client/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/y;->c()Lcom/google/android/gms/ads/internal/client/y;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/y;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/ads/internal/client/y;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/y;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/ads/internal/client/x;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/y;->c()Lcom/google/android/gms/ads/internal/client/y;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/y;->d:Lcom/google/android/gms/ads/internal/client/x;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/ads/internal/client/y;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/y;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
