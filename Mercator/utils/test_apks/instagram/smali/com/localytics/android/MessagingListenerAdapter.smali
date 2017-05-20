.class public Lcom/localytics/android/MessagingListenerAdapter;
.super Ljava/lang/Object;
.source "MessagingListenerAdapter.java"

# interfaces
.implements Lcom/localytics/android/MessagingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localyticsDidDismissInAppMessage()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public localyticsDidDisplayInAppMessage()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public localyticsShouldShowPlacesPushNotification(Lcom/localytics/android/PlacesCampaign;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public localyticsShouldShowPushNotification(Lcom/localytics/android/PushCampaign;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public localyticsWillDismissInAppMessage()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public localyticsWillDisplayInAppMessage()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public localyticsWillShowPlacesPushNotification(Landroid/support/v4/app/am$d;Lcom/localytics/android/PlacesCampaign;)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 49
    return-object p1
.end method

.method public localyticsWillShowPushNotification(Landroid/support/v4/app/am$d;Lcom/localytics/android/PushCampaign;)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 56
    return-object p1
.end method
