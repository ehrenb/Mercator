.class Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;
.super Ljava/lang/Object;
.source "PurchaseFactory.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/payment/Purchase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->create(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

.field final synthetic val$purchase:Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;

.field final synthetic val$purchaseSignature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->this$0:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->val$purchase:Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->val$purchaseSignature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->this$0:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    # getter for: Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->access$000(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;)Lcm/aptoide/pt/iab/InAppBillingSerializer;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->val$purchase:Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/iab/InAppBillingSerializer;->serializePurchase(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$1;->val$purchaseSignature:Ljava/lang/String;

    return-object v0
.end method
