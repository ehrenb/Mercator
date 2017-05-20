.class public Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;
.super Ljava/lang/Object;
.source "PurchaseFactory.java"


# instance fields
.field private final serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/iab/InAppBillingSerializer;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;)Lcm/aptoide/pt/iab/InAppBillingSerializer;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;

    return-object v0
.end method


# virtual methods
.method public create(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Purchase;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;-><init>(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Lcm/aptoide/pt/model/v3/PaidApp;)Lcm/aptoide/pt/v8engine/payment/Purchase;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;-><init>(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/model/v3/PaidApp;)V

    return-object v0
.end method
