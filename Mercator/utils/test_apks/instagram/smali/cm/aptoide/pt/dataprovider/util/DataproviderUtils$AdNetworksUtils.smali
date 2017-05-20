.class public Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;
.super Ljava/lang/Object;
.source "DataproviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/util/DataproviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdNetworksUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImpressionUrlPresent(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Z
    .locals 1

    .prologue
    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;->getImpressionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static knockCpc(Lcm/aptoide/pt/model/MinimalAdInterface;)V
    .locals 1

    .prologue
    .line 78
    invoke-interface {p0}, Lcm/aptoide/pt/model/MinimalAdInterface;->getCpcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils;->knock(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static knockCpd(Lcm/aptoide/pt/model/MinimalAdInterface;)V
    .locals 1

    .prologue
    .line 83
    invoke-interface {p0}, Lcm/aptoide/pt/model/MinimalAdInterface;->getCpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils;->knock(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static knockCpi(Lcm/aptoide/pt/model/StoredMinimalAdInterface;)V
    .locals 1

    .prologue
    .line 88
    invoke-interface {p0}, Lcm/aptoide/pt/model/StoredMinimalAdInterface;->getCpiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils;->knock(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static knockImpression(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->isImpressionUrlPresent(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;->getImpressionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils;->knock(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static parseMacros(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/repository/IdsRepository;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    invoke-interface {p1}, Lcm/aptoide/pt/dataprovider/repository/IdsRepository;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "[USER_ANDROID_ID]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 64
    :cond_0
    const-string v0, "[USER_UDID]"

    invoke-interface {p1}, Lcm/aptoide/pt/dataprovider/repository/IdsRepository;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "[USER_AAID]"

    invoke-interface {p1}, Lcm/aptoide/pt/dataprovider/repository/IdsRepository;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "[TIME_STAMP]"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
