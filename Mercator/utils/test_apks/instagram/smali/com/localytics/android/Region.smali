.class public abstract Lcom/localytics/android/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Region$Event;
    }
.end annotation


# instance fields
.field protected mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEnterAnalyticsEnabled:Z

.field protected mExitAnalyticsEnabled:Z

.field protected mLatitude:D

.field protected mLongitude:D

.field protected mName:Ljava/lang/String;

.field protected mPlaceId:J

.field protected mSchemaVersion:I

.field protected mType:Ljava/lang/String;

.field protected mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    instance-of v1, p1, Lcom/localytics/android/Region;

    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    check-cast p1, Lcom/localytics/android/Region;

    .line 34
    iget-object v1, p0, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 36
    iget-object v1, p1, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    iget-object v1, p1, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/localytics/android/Region;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/localytics/android/Region;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/localytics/android/Region;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/localytics/android/Region;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlaceId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/localytics/android/Region;->mPlaceId:J

    return-wide v0
.end method

.method protected getSchemaVersion()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/localytics/android/Region;->mSchemaVersion:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/localytics/android/Region;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/localytics/android/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected isEnterAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/localytics/android/Region;->mEnterAnalyticsEnabled:Z

    return v0
.end method

.method protected isExitAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/localytics/android/Region;->mExitAnalyticsEnabled:Z

    return v0
.end method

.method protected readStringMap(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-object v2
.end method

.method protected setEnterAnalyticsEnabled(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/localytics/android/Region;->mEnterAnalyticsEnabled:Z

    .line 146
    return-void
.end method

.method protected setExitAnalyticsEnabled(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/localytics/android/Region;->mExitAnalyticsEnabled:Z

    .line 151
    return-void
.end method

.method protected setLatitude(D)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/localytics/android/Region;->mLatitude:D

    .line 81
    return-void
.end method

.method protected setLongitude(D)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/localytics/android/Region;->mLongitude:D

    .line 96
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/localytics/android/Region;->mName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method protected setSchemaVersion(I)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/localytics/android/Region;->mSchemaVersion:I

    .line 161
    return-void
.end method

.method protected writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method
