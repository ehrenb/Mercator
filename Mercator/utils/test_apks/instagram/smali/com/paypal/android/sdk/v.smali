.class final Lcom/paypal/android/sdk/v;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/u;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/u;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/u;)I

    invoke-static {}, Lcom/paypal/android/sdk/u;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LogRiskMetadataTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v2}, Lcom/paypal/android/sdk/u;->b(Lcom/paypal/android/sdk/u;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->c(Lcom/paypal/android/sdk/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/u;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No host activity in the last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v2}, Lcom/paypal/android/sdk/u;->d(Lcom/paypal/android/sdk/u;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds. Stopping update interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->e(Lcom/paypal/android/sdk/u;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/v;->a:Lcom/paypal/android/sdk/u;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->f(Lcom/paypal/android/sdk/u;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/u;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in logRiskMetadataTask: "

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
