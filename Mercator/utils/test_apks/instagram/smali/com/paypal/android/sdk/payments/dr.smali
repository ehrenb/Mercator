.class final Lcom/paypal/android/sdk/payments/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/be;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/bi;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/dl;->dismissDialog(I)V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    const-string v1, "invalid_nonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/paypal/android/sdk/ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    check-cast p1, Lcom/paypal/android/sdk/ek;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/dl;->a(Lcom/paypal/android/sdk/payments/dl;Lcom/paypal/android/sdk/ek;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->b(Lcom/paypal/android/sdk/payments/dl;)V

    goto :goto_0
.end method
