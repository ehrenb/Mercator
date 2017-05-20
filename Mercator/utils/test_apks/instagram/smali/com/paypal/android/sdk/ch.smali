.class public final Lcom/paypal/android/sdk/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/dq;


# static fields
.field private static volatile a:Lcom/paypal/android/sdk/ch;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/paypal/android/sdk/ch;
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/ch;

    if-nez v0, :cond_1

    const-class v1, Lcom/paypal/android/sdk/ch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/ch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/ch;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ch;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/ch;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/ch;->a:Lcom/paypal/android/sdk/ch;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/eh;
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/eh;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/eh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/eh;
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/ch;->c()Lcom/paypal/android/sdk/eh;

    move-result-object v0

    return-object v0
.end method
