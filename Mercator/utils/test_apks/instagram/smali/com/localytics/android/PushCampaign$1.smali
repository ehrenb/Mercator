.class final Lcom/localytics/android/PushCampaign$1;
.super Ljava/lang/Object;
.source "PushCampaign.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/PushCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/localytics/android/PushCampaign;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PushCampaign;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/localytics/android/PushCampaign;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/localytics/android/PushCampaign;-><init>(Landroid/os/Parcel;Lcom/localytics/android/PushCampaign$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushCampaign$1;->createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PushCampaign;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/localytics/android/PushCampaign;
    .locals 1

    .prologue
    .line 208
    new-array v0, p1, [Lcom/localytics/android/PushCampaign;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushCampaign$1;->newArray(I)[Lcom/localytics/android/PushCampaign;

    move-result-object v0

    return-object v0
.end method
