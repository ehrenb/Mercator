.class Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;
.super Ljava/lang/Object;
.source "PurchaseFactory.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/payment/Purchase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->create(Lcm/aptoide/pt/model/v3/PaidApp;)Lcm/aptoide/pt/v8engine/payment/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

.field final synthetic val$app:Lcm/aptoide/pt/model/v3/PaidApp;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/model/v3/PaidApp;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;->this$0:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;->val$app:Lcm/aptoide/pt/model/v3/PaidApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory$2;->val$app:Lcm/aptoide/pt/model/v3/PaidApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPath()Lcm/aptoide/pt/model/v3/PaidApp$Path;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Path;->getStringPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
