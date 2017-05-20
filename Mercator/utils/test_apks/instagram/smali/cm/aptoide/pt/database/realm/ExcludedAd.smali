.class public Lcm/aptoide/pt/database/realm/ExcludedAd;
.super Lio/realm/ad;
.source "ExcludedAd.java"

# interfaces
.implements Lio/realm/h;


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/ExcludedAd;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/ExcludedAd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/ExcludedAd;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/ExcludedAd;->realmSet$packageName(Ljava/lang/String;)V

    .line 27
    return-void
.end method
