.class final Lcm/aptoide/pt/database/realm/MinimalAd$1;
.super Ljava/lang/Object;
.source "MinimalAd.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/database/realm/MinimalAd;
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
        "Lcm/aptoide/pt/database/realm/MinimalAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/database/realm/MinimalAd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/MinimalAd$1;->createFromParcel(Landroid/os/Parcel;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lcm/aptoide/pt/database/realm/MinimalAd;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/MinimalAd$1;->newArray(I)[Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    return-object v0
.end method
