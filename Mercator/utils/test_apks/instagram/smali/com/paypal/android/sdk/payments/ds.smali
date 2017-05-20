.class final Lcom/paypal/android/sdk/payments/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->c(Lcom/paypal/android/sdk/payments/dl;)V

    return-void
.end method
