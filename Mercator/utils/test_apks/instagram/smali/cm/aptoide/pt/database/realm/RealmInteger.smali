.class public Lcm/aptoide/pt/database/realm/RealmInteger;
.super Lio/realm/ad;
.source "RealmInteger.java"

# interfaces
.implements Lio/realm/z;


# instance fields
.field private id:Ljava/lang/String;

.field private integer:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 16
    invoke-static {}, Lcm/aptoide/pt/utils/IdUtils;->randomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->id:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->integer:Ljava/lang/Integer;

    .line 18
    return-void
.end method


# virtual methods
.method public getInteger()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/RealmInteger;->realmGet$integer()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$integer()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->integer:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$integer(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmInteger;->integer:Ljava/lang/Integer;

    return-void
.end method

.method public setInteger(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/RealmInteger;->realmSet$integer(Ljava/lang/Integer;)V

    .line 29
    return-void
.end method
