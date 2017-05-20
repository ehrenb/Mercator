.class public Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.source "PushNotificationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3",
        "<",
        "Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 23
    return-void
.end method

.method public static of()Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;
    .locals 4

    .prologue
    .line 26
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    .line 28
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    const-string v2, "oem_id"

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    const-string v0, "mode"

    const-string v2, "json"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "limit"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "lang"

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getNotificationType()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v2, "notification_type"

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "aptoide_tests"

    .line 38
    :cond_1
    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    const-string v0, "id"

    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getLastPushNotificationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v0

    .line 41
    :cond_2
    const-string v0, "notification_type"

    const-string v2, "aptoide_vanilla"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/GetPushNotificationsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;->getPushNotifications(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/PushNotificationsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
