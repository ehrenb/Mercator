.class public final Lcom/paypal/android/sdk/aa;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/paypal/android/sdk/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/s;

    invoke-direct {v0}, Lcom/paypal/android/sdk/s;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/aa;->a:Lcom/paypal/android/sdk/s;

    return-void
.end method

.method public static a()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/aa;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/aa;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "suFileName"

    invoke-static {v1}, Lcom/paypal/android/sdk/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "superUserApk"

    invoke-static {v1}, Lcom/paypal/android/sdk/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
