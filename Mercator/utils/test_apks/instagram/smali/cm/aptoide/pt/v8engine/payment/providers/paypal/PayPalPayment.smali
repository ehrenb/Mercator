.class public Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;
.super Lcm/aptoide/pt/v8engine/payment/AptoidePayment;
.source "PayPalPayment.java"


# static fields
.field public static final PAYMENT_CONFIRMATION_EXTRA:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_CONFIRMATION"

.field public static final PAYMENT_RESULT_ACTION:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.service.action.PAYMENT_RESULT"

.field public static final PAYMENT_STATUS_CANCELLED:I = 0x2

.field public static final PAYMENT_STATUS_EXTRA:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

.field public static final PAYMENT_STATUS_FAILED:I = 0x1

.field public static final PAYMENT_STATUS_OK:I


# instance fields
.field private final configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private final confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Price;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Z)V
    .locals 10

    .prologue
    .line 46
    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move/from16 v8, p11

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/v8engine/payment/Price;ZLcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;)V

    .line 48
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->context:Landroid/content/Context;

    .line 49
    move-object/from16 v0, p7

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 50
    move-object/from16 v0, p10

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    .line 51
    return-void
.end method

.method private getIntentPaymentConfirmationId(Landroid/content/Intent;II)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :pswitch_0
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/exception/PaymentFailureException;

    const-string v1, "PayPal payment failed"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/payment/exception/PaymentFailureException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    const-string v0, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_CONFIRMATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->a()Lcom/paypal/android/sdk/payments/ProofOfPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ProofOfPayment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/exception/PaymentFailureException;

    const-string v1, "PayPal payment returned invalid payment confirmation"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/payment/exception/PaymentFailureException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/exception/PaymentCancellationException;

    const-string v1, "PayPal payment cancelled by user"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/payment/exception/PaymentCancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isPaymentConfirmationIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 74
    if-eqz p1, :cond_0

    const-string v0, "cm.aptoide.pt.v8engine.payment.service.action.PAYMENT_RESULT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cm.aptoide.pt.v8engine.payment.service.extra.PAYMENT_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startPayPalActivity(Lcm/aptoide/pt/v8engine/payment/Price;Lcm/aptoide/pt/v8engine/payment/Product;)V
    .locals 7

    .prologue
    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->context:Landroid/content/Context;

    new-instance v2, Lcom/paypal/android/sdk/payments/PayPalPayment;

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Price;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Price;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/payment/Product;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sale"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->configuration:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 67
    invoke-static {v1, v2, v3}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPaymentActivity;->getIntent(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalPayment;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method synthetic lambda$process$0()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getPrice()Lcm/aptoide/pt/v8engine/payment/Price;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getProduct()Lcm/aptoide/pt/v8engine/payment/Product;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->startPayPalActivity(Lcm/aptoide/pt/v8engine/payment/Price;Lcm/aptoide/pt/v8engine/payment/Product;)V

    return-void
.end method

.method synthetic lambda$process$1(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->isPaymentConfirmationIntent(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$process$2(Landroid/content/Intent;)Lrx/d;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getProduct()Lcm/aptoide/pt/v8engine/payment/Product;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getIntentPaymentConfirmationId(Landroid/content/Intent;II)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$process$3(Ljava/lang/String;)Lrx/d;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->createPaymentConfirmation(ILjava/lang/String;)Lrx/a;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public process()Lrx/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "cm.aptoide.pt.v8engine.payment.service.action.PAYMENT_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3, v3}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;)Lrx/b/a;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;)Lrx/b/e;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;)Lrx/b/e;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;)Lrx/b/e;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method
