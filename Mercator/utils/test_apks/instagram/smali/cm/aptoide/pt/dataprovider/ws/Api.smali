.class public Lcm/aptoide/pt/dataprovider/ws/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static final LANG:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->LANG:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getHWSpecsFilter()Z

    move-result v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->filters(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isMature()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isAdultSwitchActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
