.class public Lcm/aptoide/pt/v8engine/payment/PaymentFactory;
.super Ljava/lang/Object;
.source "PaymentFactory.java"


# static fields
.field public static final BOACOMPRA:Ljava/lang/String; = "boacompra"

.field public static final BOACOMPRAGOLD:Ljava/lang/String; = "boacompragold"

.field public static final DUMMY:Ljava/lang/String; = "dummy"

.field public static final PAYPAL:Ljava/lang/String; = "paypal"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private getPayPalConfiguration()Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    .line 64
    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 65
    const-string v1, "Ae7hhBelw5_LbMgIwpC3WKT9AGbfVma5mlQCRgwxbIeC2qSfnUnKw-dVfiCRW-tutjsiBCbVH9PdhWUz"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 66
    return-object v0
.end method

.method private getPrice(DLjava/lang/String;DLjava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Price;
    .locals 8

    .prologue
    .line 59
    new-instance v1, Lcm/aptoide/pt/v8engine/payment/Price;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p6

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/payment/Price;-><init>(DLjava/lang/String;Ljava/lang/String;D)V

    return-object v1
.end method


# virtual methods
.method public create(Lcm/aptoide/pt/model/v3/PaymentServiceResponse;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/payment/Payment;
    .locals 18

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getShortName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payment not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :sswitch_0
    const-string v3, "paypal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "boacompra"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "boacompragold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "dummy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 35
    :pswitch_0
    new-instance v13, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getShortName()Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getSign()Ljava/lang/String;

    move-result-object v17

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getPrice()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getCurrency()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getTaxRate()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getSign()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    .line 37
    invoke-direct/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->getPrice(DLjava/lang/String;DLjava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Price;

    move-result-object v7

    .line 38
    invoke-direct/range {p0 .. p0}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->getPayPalConfiguration()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v8

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getDescription()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->context:Landroid/content/Context;

    .line 40
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v11

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->isAuthorizationRequired()Z

    move-result v12

    move-object v1, v13

    move-object v2, v9

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lcm/aptoide/pt/v8engine/payment/providers/paypal/PayPalPayment;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Price;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Z)V

    move-object v1, v13

    .line 50
    :goto_1
    return-object v1

    .line 45
    :pswitch_1
    new-instance v10, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getShortName()Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getDescription()Ljava/lang/String;

    move-result-object v14

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getPrice()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getCurrency()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getTaxRate()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->getSign()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    .line 47
    invoke-direct/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->getPrice(DLjava/lang/String;DLjava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Price;

    move-result-object v7

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;->isAuthorizationRequired()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->context:Landroid/content/Context;

    .line 50
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v9

    move-object v1, v10

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/v8engine/payment/Price;ZLcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;)V

    move-object v1, v10

    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x78af63ce -> :sswitch_1
        -0x3b51a10d -> :sswitch_0
        -0x76c4c6e -> :sswitch_2
        0x5b804a8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
