.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;
.super Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
.source "DownloadEvent.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "DOWNLOAD"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloadHadProgress:Z

.field private mirrorApk:Ljava/lang/String;

.field private mirrorObbMain:Ljava/lang/String;

.field private mirrorObbPatch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;ILcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;)V
    .locals 11

    .prologue
    .line 31
    const-string v10, "DOWNLOAD"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;-><init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;ILcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->downloadHadProgress:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->isDownloadHadProgress()Z

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->isDownloadHadProgress()Z

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorApk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorApk()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbMain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbMain()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbPatch()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getMirrorApk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorApk:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorObbMain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorObbMain:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorObbPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorObbPatch:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 15
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->isDownloadHadProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorApk()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbMain()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbPatch()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public isDownloadHadProgress()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->downloadHadProgress:Z

    return v0
.end method

.method public isReadyToSend()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->isReadyToSend()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->downloadHadProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->send()V

    .line 38
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getError()Ljava/lang/Throwable;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 41
    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setDownloadHadProgress(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->downloadHadProgress:Z

    return-void
.end method

.method public setMirrorApk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorApk:Ljava/lang/String;

    return-void
.end method

.method public setMirrorObbMain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorObbMain:Ljava/lang/String;

    return-void
.end method

.method public setMirrorObbPatch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->mirrorObbPatch:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadEvent(downloadHadProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->isDownloadHadProgress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mirrorApk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorApk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mirrorObbMain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbMain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mirrorObbPatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbPatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
