.class public Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;
.super Ljava/lang/Object;
.source "GetPushNotificationsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Images"
.end annotation


# instance fields
.field private bannerUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "banner_url"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    instance-of v0, p1, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getBannerUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getIconUrl()Ljava/lang/String;

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

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 30
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getIconUrl()Ljava/lang/String;

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

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->bannerUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetPushNotificationsResponse.Notification.Images(bannerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse$Notification$Images;->getIconUrl()Ljava/lang/String;

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
