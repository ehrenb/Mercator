.class public final Lcom/paypal/android/sdk/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/lang/String;

    sput-wide v2, Lcom/paypal/android/sdk/y;->b:J

    sput-wide v2, Lcom/paypal/android/sdk/y;->c:J

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v1, Lcom/paypal/android/sdk/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->b(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/paypal/android/sdk/y;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .locals 2

    const-class v0, Lcom/paypal/android/sdk/y;

    monitor-enter v0

    :try_start_0
    sput-wide p0, Lcom/paypal/android/sdk/y;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/paypal/android/sdk/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/y;->a()V

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/y;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .locals 6

    const-class v1, Lcom/paypal/android/sdk/y;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/paypal/android/sdk/y;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/paypal/android/sdk/y;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d()J
    .locals 6

    const-class v1, Lcom/paypal/android/sdk/y;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/paypal/android/sdk/y;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/y;->a()V

    :cond_0
    sget-wide v2, Lcom/paypal/android/sdk/y;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
