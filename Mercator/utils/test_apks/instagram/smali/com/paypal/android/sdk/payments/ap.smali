.class final Lcom/paypal/android/sdk/payments/ap;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ao;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ap;->a:Lcom/paypal/android/sdk/payments/ao;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ap;->a:Lcom/paypal/android/sdk/payments/ao;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->e(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V

    return-void
.end method
