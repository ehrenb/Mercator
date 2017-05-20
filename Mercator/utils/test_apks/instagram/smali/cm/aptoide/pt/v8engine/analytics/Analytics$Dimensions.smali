.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final APKFY:Ljava/lang/String; = "Apkfy"

.field public static final INSTALLER:Ljava/lang/String; = "Installer"

.field public static final PARTNER:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VERTICAL:Ljava/lang/String;

.field public static final WEBSITE:Ljava/lang/String; = "Website"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getVerticalDimension()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->VERTICAL:Ljava/lang/String;

    .line 915
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerDimension()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->PARTNER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setDimension(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 926
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 930
    :cond_0
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-static {p0, p1}, Lcom/localytics/android/Localytics;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setEntryPointDimension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 975
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 976
    return-void
.end method

.method public static setGmsPresent(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 940
    if-eqz p0, :cond_0

    .line 941
    const-string v0, "GMS Present"

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    const-string v0, "GMS Not Present"

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setPartnerDimension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 923
    return-void
.end method

.method public static setSamplingTypeDimension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 971
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 972
    return-void
.end method

.method public static setUTMCampaign(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 957
    return-void
.end method

.method public static setUTMContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 961
    return-void
.end method

.method public static setUTMDimensionsToUnknown()V
    .locals 2

    .prologue
    .line 964
    const/4 v0, 0x4

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 965
    const/4 v0, 0x5

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 966
    const/4 v0, 0x6

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 967
    const/4 v0, 0x7

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 968
    return-void
.end method

.method public static setUTMMedium(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 953
    return-void
.end method

.method public static setUTMSource(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 949
    return-void
.end method

.method public static setVerticalDimension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setDimension(ILjava/lang/String;)V

    .line 937
    return-void
.end method
