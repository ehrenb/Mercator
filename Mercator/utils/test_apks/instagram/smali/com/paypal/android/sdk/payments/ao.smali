.class final Lcom/paypal/android/sdk/payments/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bh;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->d(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->d(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delaying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds so user doesn\'t see flicker."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->a(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->f(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/paypal/android/sdk/payments/ap;

    invoke-direct {v3, p0}, Lcom/paypal/android/sdk/payments/ap;-><init>(Lcom/paypal/android/sdk/payments/ao;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->e(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V

    goto :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/payments/bi;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/payments/bi;III)V

    return-void
.end method
