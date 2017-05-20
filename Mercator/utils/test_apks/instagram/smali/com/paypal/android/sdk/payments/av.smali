.class final Lcom/paypal/android/sdk/payments/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected exit - isFinishing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    check-cast p2, Lcom/paypal/android/sdk/payments/bf;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/bf;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service state invalid.  Did you start the PayPalService?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/paypal/android/sdk/payments/ay;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/paypal/android/sdk/payments/ay;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ay;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ay;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/bh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/bh;Z)V

    goto/16 :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/av;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    return-void
.end method
