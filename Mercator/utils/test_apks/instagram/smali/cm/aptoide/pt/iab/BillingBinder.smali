.class public Lcm/aptoide/pt/iab/BillingBinder;
.super Lcm/aptoide/pt/iab/AptoideInAppBillingService$Stub;
.source "BillingBinder.java"


# static fields
.field public static final BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final INAPP_DATA_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final INAPP_DATA_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field public static final INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final INAPP_PURCHASE_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final RESULT_ERROR:I = 0x6

.field public static final RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final RESULT_USER_CANCELLED:I = 0x1

.field public static final SERVICES_LIST:Ljava/lang/String; = "SERVICES_LIST"


# instance fields
.field private final context:Landroid/content/Context;

.field private final errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

.field private final productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

.field private final purchaseErrorCodeFactory:Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;

.field private final repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

.field private final serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;Lcm/aptoide/pt/iab/InAppBillingSerializer;Lcm/aptoide/pt/iab/ErrorCodeFactory;Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;Lcm/aptoide/pt/v8engine/payment/ProductFactory;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcm/aptoide/pt/iab/AptoideInAppBillingService$Stub;-><init>()V

    .line 67
    iput-object p1, p0, Lcm/aptoide/pt/iab/BillingBinder;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    .line 69
    iput-object p3, p0, Lcm/aptoide/pt/iab/BillingBinder;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;

    .line 70
    iput-object p4, p0, Lcm/aptoide/pt/iab/BillingBinder;->errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    .line 71
    iput-object p5, p0, Lcm/aptoide/pt/iab/BillingBinder;->purchaseErrorCodeFactory:Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;

    .line 72
    iput-object p6, p0, Lcm/aptoide/pt/iab/BillingBinder;->productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    .line 73
    return-void
.end method

.method static synthetic lambda$consumePurchase$4(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isBillingSupported$0(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->deleteInAppPurchase(ILjava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 209
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 209
    iget-object v1, p0, Lcm/aptoide/pt/iab/BillingBinder;->purchaseErrorCodeFactory:Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const-string v0, "inapp"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subs"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const-string v0, "RESPONSE_CODE"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    :goto_0
    return-object v1

    .line 137
    :cond_1
    const-string v0, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    .line 141
    invoke-virtual {v0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getSKUDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p5, p2}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/iab/BillingBinder;ILjava/lang/String;Ljava/lang/String;)Lrx/b/e;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/iab/BillingBinder;)Lrx/b/e;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 150
    const-string v2, "BUY_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 153
    const-string v2, "RESPONSE_CODE"

    iget-object v3, p0, Lcm/aptoide/pt/iab/BillingBinder;->errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string v0, "inapp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "RESPONSE_CODE"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 173
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 174
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 180
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    .line 181
    invoke-virtual {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getInAppPurchaseInformation(ILjava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;

    .line 185
    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcm/aptoide/pt/iab/BillingBinder;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;

    .line 186
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;->getPurchaseList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcm/aptoide/pt/iab/InAppBillingSerializer;->serializePurchases(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 187
    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    new-instance v3, Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;->getSkuList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    new-instance v3, Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;->getSignatureList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 191
    const-string v0, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 195
    const-string v2, "RESPONSE_CODE"

    iget-object v3, p0, Lcm/aptoide/pt/iab/BillingBinder;->errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 196
    goto/16 :goto_0
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v0, "ITEM_ID_LIST"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v0, "ITEM_ID_LIST"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 103
    :cond_1
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 108
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    .line 109
    invoke-virtual {v2, p1, p2, v0, p3}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getSKUs(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/iab/BillingBinder;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    const-string v2, "RESPONSE_CODE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "DETAILS_LIST"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 123
    const-string v2, "RESPONSE_CODE"

    iget-object v3, p0, Lcm/aptoide/pt/iab/BillingBinder;->errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->repository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getInAppBilling(ILjava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 85
    iget-object v1, p0, Lcm/aptoide/pt/iab/BillingBinder;->errorCodeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$getBuyIntent$2(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->productFactory:Lcm/aptoide/pt/v8engine/payment/ProductFactory;

    invoke-virtual {p4}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getMetadata()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;

    move-result-object v1

    .line 144
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/payment/ProductFactory;->create(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getBuyIntent$3(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcm/aptoide/pt/iab/BillingBinder;->context:Landroid/content/Context;

    .line 146
    invoke-static {v2, p1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->getIntent(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 145
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getSkuDetails$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder;->serializer:Lcm/aptoide/pt/iab/InAppBillingSerializer;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/iab/InAppBillingSerializer;->serializeProducts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 114
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
