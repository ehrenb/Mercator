.class public Lcm/aptoide/pt/database/realm/StoredMinimalAd;
.super Lio/realm/ad;
.source "StoredMinimalAd.java"

# interfaces
.implements Lcm/aptoide/pt/model/StoredMinimalAdInterface;
.implements Lio/realm/as;


# static fields
.field public static final CPI_URL:Ljava/lang/String; = "cpiUrl"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final REFERRER:Ljava/lang/String; = "referrer"


# instance fields
.field private adId:J

.field private cpiUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->packageName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->referrer:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->cpiUrl:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->adId:J

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->timestamp:J

    .line 34
    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmGet$adId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmGet$referrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmGet$timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$adId()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->adId:J

    return-wide v0
.end method

.method public realmGet$cpiUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->cpiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$referrer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->timestamp:J

    return-wide v0
.end method

.method public realmSet$adId(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->adId:J

    return-void
.end method

.method public realmSet$cpiUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->cpiUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$referrer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->referrer:Ljava/lang/String;

    return-void
.end method

.method public realmSet$timestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->timestamp:J

    return-void
.end method

.method public setAdId(J)V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmSet$adId(J)V

    .line 74
    return-void
.end method

.method public setCpiUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmSet$cpiUrl(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmSet$packageName(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmSet$referrer(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->realmSet$timestamp(J)V

    .line 66
    return-void
.end method
