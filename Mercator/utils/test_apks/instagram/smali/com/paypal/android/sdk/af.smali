.class public Lcom/paypal/android/sdk/af;
.super Lcom/paypal/android/sdk/aj;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/aj;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/af;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/paypal/android/sdk/af;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/paypal/android/sdk/af;->a:Ljava/lang/String;

    const-string v1, "entering LoadConfigurationRequest."

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/paypal/android/sdk/af;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Lcom/paypal/android/sdk/q;

    iget-object v1, p0, Lcom/paypal/android/sdk/af;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/paypal/android/sdk/af;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/ak;->b(Lcom/paypal/android/sdk/aj;)V

    :goto_1
    sget-object v0, Lcom/paypal/android/sdk/af;->a:Ljava/lang/String;

    const-string v1, "leaving LoadConfigurationRequest."

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/paypal/android/sdk/af;->a:Ljava/lang/String;

    const-string v2, "LoadConfigurationRequest loading remote config failed."

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/af;->d:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/ak;->b(Lcom/paypal/android/sdk/aj;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/paypal/android/sdk/ak;->b(Lcom/paypal/android/sdk/aj;)V

    throw v0
.end method
