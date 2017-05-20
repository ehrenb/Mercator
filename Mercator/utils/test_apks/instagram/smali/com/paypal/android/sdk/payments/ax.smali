.class final Lcom/paypal/android/sdk/payments/ax;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/aw;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ax;->a:Lcom/paypal/android/sdk/payments/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ax;->a:Lcom/paypal/android/sdk/payments/aw;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/aw;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    return-void
.end method
