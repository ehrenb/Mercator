.class final Lcom/paypal/android/sdk/w;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/u;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/u;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->g(Lcom/paypal/android/sdk/u;)I

    invoke-static {}, Lcom/paypal/android/sdk/u;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LoadConfigurationTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v2}, Lcom/paypal/android/sdk/u;->h(Lcom/paypal/android/sdk/u;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/af;

    iget-object v1, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v1}, Lcom/paypal/android/sdk/u;->i(Lcom/paypal/android/sdk/u;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v2}, Lcom/paypal/android/sdk/u;->j(Lcom/paypal/android/sdk/u;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/w;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v3}, Lcom/paypal/android/sdk/u;->k(Lcom/paypal/android/sdk/u;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/af;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ak;->a(Lcom/paypal/android/sdk/aj;)V

    return-void
.end method
