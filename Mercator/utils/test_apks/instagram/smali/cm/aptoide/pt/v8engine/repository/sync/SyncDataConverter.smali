.class public Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;
.super Ljava/lang/Object;
.source "SyncDataConverter.java"


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_API_VERSION"

.field private static final APP_ID:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_APP_ID"

.field private static final DESCRIPTION:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DESCRIPTION"

.field private static final DEVELOPER_PAYLOAD:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DEVELOPER_PAYLOAD"

.field private static final ICON:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ICON"

.field private static final ID:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ID"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_PACKAGE_NAME"

.field private static final SKU:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_SKU"

.field private static final STORE_NAME:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_STORE_NAME"

.field private static final TITLE:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TITLE"

.field private static final TYPE:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBundle(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ID"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ICON"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TITLE"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DESCRIPTION"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    if-eqz v0, :cond_0

    .line 82
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DEVELOPER_PAYLOAD"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_SKU"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_PACKAGE_NAME"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TYPE"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_API_VERSION"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getApiVersion()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    if-eqz v0, :cond_1

    .line 90
    const-string v2, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_APP_ID"

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getAppId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_STORE_NAME"

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    return-object v1
.end method

.method public toList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public toProduct(Landroid/os/Bundle;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 43
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ID"

    invoke-virtual {p1, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 44
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_ICON"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DESCRIPTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_DEVELOPER_PAYLOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_SKU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_API_VERSION"

    invoke-virtual {p1, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 54
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_APP_ID"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 55
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PRODUCT_STORE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    if-eq v1, v13, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 58
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    if-eq v5, v13, :cond_0

    .line 64
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_0
    if-eq v1, v13, :cond_1

    if-eqz v12, :cond_1

    .line 68
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    move-wide v5, v10

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
