.class public Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;
.super Landroid/support/v7/a/e;
.source "PayPalPaymentActivity.java"


# static fields
.field private static final PAYPAL_CONFIGURATION_EXTRA:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_CONFIGURATION"

.field private static final PAYPAL_PAYMENT_EXTRA:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_PAYMENT"

.field private static final PAY_APP_REQUEST_CODE:I = 0xc


# instance fields
.field private configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private payment:Lcom/paypal/android/sdk/payments/PayPalPayment;

.field private serviceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalPayment;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_PAYMENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_CONFIGURATION"

    .line 38
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/a/e;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.action.PAYMENT_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    packed-switch p2, :pswitch_data_0

    .line 85
    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->finish()V

    .line 91
    :cond_0
    return-void

    .line 73
    :pswitch_0
    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_CONFIRMATION"

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    .line 76
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_PAYMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_PAYMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->payment:Lcom/paypal/android/sdk/payments/PayPalPayment;

    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.service.extra.PAYPAL_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->serviceIntent:Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->serviceIntent:Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string v1, "com.paypal.android.sdk.payment"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->payment:Lcom/paypal/android/sdk/payments/PayPalPayment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Lcm/aptoide/pt/v8engine/payment/exception/PaymentException;

    const-string v2, "Payment and PayPal configuration must be provided!"

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/payment/exception/PaymentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/a/e;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->stopService(Landroid/content/Intent;)Z

    .line 65
    return-void
.end method
