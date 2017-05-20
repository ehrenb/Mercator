.class final Lcom/paypal/android/sdk/payments/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bk;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/cu;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cv;->a:Lcom/paypal/android/sdk/payments/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cv;->a:Lcom/paypal/android/sdk/payments/cu;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/cu;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    return-void
.end method
