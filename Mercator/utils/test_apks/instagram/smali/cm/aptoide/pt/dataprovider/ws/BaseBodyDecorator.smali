.class public Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;
.super Ljava/lang/Object;
.source "BaseBodyDecorator.java"


# instance fields
.field private final aptoideClientUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->aptoideClientUUID:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
    .locals 2

    .prologue
    .line 21
    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setAccessToken(Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->aptoideClientUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setAptoideId(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->getVerCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setAptoideVercode(I)V

    .line 28
    const-string v0, "pool"

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setCdn(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setLang(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/Api;->isMature()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setMature(Z)V

    .line 31
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getHWSpecsFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setQ(Ljava/lang/String;)V

    .line 34
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    invoke-virtual {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->setCountry(Ljava/lang/String;)V

    .line 41
    :cond_2
    return-object p1
.end method
