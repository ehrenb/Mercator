.class final Lcom/paypal/android/sdk/payments/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ce;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cf;->a:Lcom/paypal/android/sdk/payments/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->a:Lcom/paypal/android/sdk/payments/ce;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ce;->a:Lcom/paypal/android/sdk/fs;

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/fs;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->a:Lcom/paypal/android/sdk/payments/ce;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ce;->c:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cf;->a:Lcom/paypal/android/sdk/payments/ce;

    iget-object v1, v1, Lcom/paypal/android/sdk/payments/ce;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V

    return-void
.end method
