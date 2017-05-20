.class public Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;
.super Ljava/lang/Object;
.source "DownloadInstallAnalyticsBaseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultError"
.end annotation


# instance fields
.field message:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getMessage()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getType()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->message:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInstallAnalyticsBaseBody.ResultError(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->getType()Ljava/lang/String;

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
