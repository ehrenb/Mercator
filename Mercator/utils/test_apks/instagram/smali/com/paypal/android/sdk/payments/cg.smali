.class final Lcom/paypal/android/sdk/payments/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/be;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/bi;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cj;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNAUTHORIZED_PAYMENT"

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/bx;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "server thinks token is expired, get new one. AccessToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cj;->b:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/bh;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/bh;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/payments/bx;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_ERROR_CODE"

    iget-object v2, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/fk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/fk;->b(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    new-instance v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/bs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bs;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/payments/PayPalPayment;Lcom/paypal/android/sdk/payments/ProofOfPayment;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/paypal/android/sdk/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    check-cast p1, Lcom/paypal/android/sdk/ef;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/ef;)V

    goto :goto_0
.end method
