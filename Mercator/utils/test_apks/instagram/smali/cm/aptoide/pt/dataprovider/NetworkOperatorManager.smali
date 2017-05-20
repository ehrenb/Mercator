.class public Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;
.super Ljava/lang/Object;
.source "NetworkOperatorManager.java"


# instance fields
.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 19
    return-void
.end method

.method private codePortionLength(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getMobileCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    const-string v0, ""

    .line 24
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->codePortionLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileNetworkCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    const-string v0, ""

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->codePortionLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimCountryISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSimStateReady()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
