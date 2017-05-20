.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
.super Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;
.source "DownloadInstallBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;,
        Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;,
        Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;,
        Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;
    }
.end annotation


# instance fields
.field private action:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private context:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

.field private downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

.field private error:Ljava/lang/Throwable;

.field private name:Ljava/lang/String;

.field private obbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

.field private obbUrl:Ljava/lang/String;

.field private origin:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

.field private packageName:Ljava/lang/String;

.field private patchObbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

.field private patchObbUrl:Ljava/lang/String;

.field private resultStatus:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

.field private url:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;ILcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;-><init>()V

    .line 42
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->action:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    .line 43
    iput p8, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->versionCode:I

    .line 44
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->origin:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 45
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->packageName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->url:Ljava/lang/String;

    .line 47
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;->MAIN:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    .line 48
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbUrl:Ljava/lang/String;

    .line 49
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;->PATCH:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    .line 50
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbUrl:Ljava/lang/String;

    .line 51
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->name:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->context:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 53
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    .line 55
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 57
    return-void
.end method

.method static synthetic lambda$send$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAptoideClientUUID()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAptoideClientUUID()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAction()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAction()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getVersionCode()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getVersionCode()I

    move-result v3

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_f

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v3

    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_18

    if-eqz v3, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1e

    if-eqz v3, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1f
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_21

    if-eqz v3, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_22
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getContext()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getContext()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    move-result-object v3

    if-nez v2, :cond_24

    if-eqz v3, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_25
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getDownloadInstallEventConverter()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getDownloadInstallEventConverter()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    move-result-object v3

    if-nez v2, :cond_27

    if-eqz v3, :cond_28

    :cond_26
    move v0, v1

    goto/16 :goto_0

    :cond_27
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getResultStatus()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getResultStatus()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    move-result-object v3

    if-nez v2, :cond_2a

    if-eqz v3, :cond_2b

    :cond_29
    move v0, v1

    goto/16 :goto_0

    :cond_2a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_2b
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getError()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v2, :cond_2c

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAction()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->action:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    return-object v0
.end method

.method public getAptoideClientUUID()Lcm/aptoide/pt/interfaces/AptoideClientUUID;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    return-object v0
.end method

.method public getContext()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->context:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    return-object v0
.end method

.method public getDownloadInstallEventConverter()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    return-object v0
.end method

.method public getObbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->origin:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    return-object v0
.end method

.method public getPatchObbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->resultStatus:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 21
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAptoideClientUUID()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAction()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getVersionCode()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getContext()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getDownloadInstallEventConverter()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getResultStatus()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getError()Ljava/lang/Throwable;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_d

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d
.end method

.method public isReadyToSend()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->resultStatus:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$send$0(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public send()V
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->isReadyToSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->resultStatus:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->error:Ljava/lang/Throwable;

    .line 63
    invoke-virtual {v2, p0, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->convert(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;Ljava/lang/Throwable;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->action:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->name:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->context:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 64
    invoke-virtual {v5}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->name()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "The event was not ready to send!"

    invoke-static {p0, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAction(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->action:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    return-void
.end method

.method public setContext(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->context:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    return-void
.end method

.method public setDownloadInstallEventConverter(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->error:Ljava/lang/Throwable;

    .line 79
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setObbType(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    return-void
.end method

.method public setObbUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->obbUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->origin:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPatchObbType(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbType:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    return-void
.end method

.method public setPatchObbUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->patchObbUrl:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->resultStatus:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->versionCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInstallBaseEvent(aptoideClientUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAptoideClientUUID()Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getAction()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obbUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patchObbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbType()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$ObbType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patchObbUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getContext()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadInstallEventConverter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getDownloadInstallEventConverter()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getResultStatus()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
