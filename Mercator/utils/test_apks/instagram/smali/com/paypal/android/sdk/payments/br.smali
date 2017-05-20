.class final Lcom/paypal/android/sdk/payments/br;
.super Lcom/paypal/android/sdk/payments/ea;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/payments/ea;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/payments/bs;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ea;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/bs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bs;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bs;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "PaymentActivity.EXTRA_PAYMENT"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/br;->a(ZLjava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
