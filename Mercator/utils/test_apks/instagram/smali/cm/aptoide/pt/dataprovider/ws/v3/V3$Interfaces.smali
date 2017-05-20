.class interface abstract Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;
.super Ljava/lang/Object;
.source "V3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Interfaces"
.end annotation


# virtual methods
.method public abstract addApkFlag(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "addApkFlag"
    .end annotation
.end method

.method public abstract createPaymentAuthorization(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/BaseV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "createPurchaseAuthorization"
    .end annotation
.end method

.method public abstract createPaymentConfirmation(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/BaseV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payProduct"
    .end annotation
.end method

.method public abstract deleteInAppBillingPurchase(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/BaseV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "processInAppBilling"
    .end annotation
.end method

.method public abstract getApkInfo(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/PaidApp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getApkInfo"
    .end annotation
.end method

.method public abstract getInAppBillingAvailable(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "processInAppBilling"
    .end annotation
.end method

.method public abstract getInAppBillingPurchases(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "processInAppBilling"
    .end annotation
.end method

.method public abstract getInAppBillingSkuDetails(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "processInAppBilling"
    .end annotation
.end method

.method public abstract getPaymentAuthorization(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "productPurchaseAuthorization"
    .end annotation
.end method

.method public abstract getPaymentConfirmation(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkProductPayment"
    .end annotation
.end method

.method public abstract getPushNotifications(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getPushNotifications"
    .end annotation
.end method
