.class final Lcom/paypal/android/sdk/payments/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dy;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dy;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->f(Lcom/paypal/android/sdk/payments/dl;)V

    return-void
.end method
