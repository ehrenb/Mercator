.class public Lcm/aptoide/pt/database/realm/MinimalAd;
.super Lio/realm/ad;
.source "MinimalAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcm/aptoide/pt/model/MinimalAdInterface;
.implements Lio/realm/o;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adId:Ljava/lang/Long;

.field private appId:Ljava/lang/Long;

.field private clickUrl:Ljava/lang/String;

.field private cpcUrl:Ljava/lang/String;

.field private cpdUrl:Ljava/lang/String;

.field private cpiUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private networkId:Ljava/lang/Long;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcm/aptoide/pt/database/realm/MinimalAd$1;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/MinimalAd$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/database/realm/MinimalAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->description:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->packageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->networkId:Ljava/lang/Long;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->clickUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpcUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpdUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->appId:Ljava/lang/Long;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->adId:Ljava/lang/Long;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpiUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->iconPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 49
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->packageName:Ljava/lang/String;

    .line 50
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->networkId:Ljava/lang/Long;

    .line 51
    iput-object p4, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->clickUrl:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpcUrl:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpdUrl:Ljava/lang/String;

    .line 54
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->appId:Ljava/lang/Long;

    .line 55
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->adId:Ljava/lang/Long;

    .line 56
    iput-object p11, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpiUrl:Ljava/lang/String;

    .line 57
    iput-object p12, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->name:Ljava/lang/String;

    .line 58
    iput-object p13, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->iconPath:Ljava/lang/String;

    .line 59
    iput-object p14, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->description:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 16

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getPartner()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;

    move-result-object v1

    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Info;->getId()I

    move-result v0

    .line 82
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Partner$Data;->getClickUrl()Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_0
    new-instance v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;->getCpcUrl()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;->getCpdUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;->getAdId()J

    move-result-wide v10

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getInfo()Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Info;->getCpiUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getIcon()Ljava/lang/String;

    move-result-object v14

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;->getData()Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse$Data;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v1 .. v15}, Lcm/aptoide/pt/database/realm/MinimalAd;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAdId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$adId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$appId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpcUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$adId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->adId:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$appId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$clickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cpcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cpdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cpiUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$iconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$networkId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->networkId:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$adId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->adId:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$appId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->appId:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$clickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cpcUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpcUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cpdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpdUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cpiUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->cpiUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$iconPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->iconPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$networkId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->networkId:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/MinimalAd;->packageName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$appId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$adId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method
