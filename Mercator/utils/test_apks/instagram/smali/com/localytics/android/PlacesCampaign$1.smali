.class final Lcom/localytics/android/PlacesCampaign$1;
.super Ljava/lang/Object;
.source "PlacesCampaign.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/PlacesCampaign;
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
        "Lcom/localytics/android/PlacesCampaign;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PlacesCampaign;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/localytics/android/PlacesCampaign;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/localytics/android/PlacesCampaign;-><init>(Landroid/os/Parcel;Lcom/localytics/android/PlacesCampaign$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/localytics/android/PlacesCampaign$1;->createFromParcel(Landroid/os/Parcel;)Lcom/localytics/android/PlacesCampaign;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/localytics/android/PlacesCampaign;
    .locals 1

    .prologue
    .line 304
    new-array v0, p1, [Lcom/localytics/android/PlacesCampaign;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/localytics/android/PlacesCampaign$1;->newArray(I)[Lcom/localytics/android/PlacesCampaign;

    move-result-object v0

    return-object v0
.end method
