.class public Lcm/aptoide/pt/iab/InAppBillingService;
.super Landroid/app/Service;
.source "InAppBillingService.java"


# instance fields
.field private billingBinder:Lcm/aptoide/pt/iab/AptoideInAppBillingService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/iab/InAppBillingService;->billingBinder:Lcm/aptoide/pt/iab/AptoideInAppBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    new-instance v0, Lcm/aptoide/pt/iab/BillingBinder;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInAppBillingRepository(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/iab/InAppBillingSerializer;

    invoke-direct {v3}, Lcm/aptoide/pt/iab/InAppBillingSerializer;-><init>()V

    new-instance v4, Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-direct {v4}, Lcm/aptoide/pt/iab/ErrorCodeFactory;-><init>()V

    new-instance v5, Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;

    invoke-direct {v5}, Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;-><init>()V

    new-instance v6, Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    invoke-direct {v6}, Lcm/aptoide/pt/v8engine/payment/ProductFactory;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/iab/BillingBinder;-><init>(Landroid/content/Context;Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;Lcm/aptoide/pt/iab/InAppBillingSerializer;Lcm/aptoide/pt/iab/ErrorCodeFactory;Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;Lcm/aptoide/pt/v8engine/payment/ProductFactory;)V

    iput-object v0, p0, Lcm/aptoide/pt/iab/InAppBillingService;->billingBinder:Lcm/aptoide/pt/iab/AptoideInAppBillingService$Stub;

    .line 23
    return-void
.end method
