.class public Lcm/aptoide/pt/database/realm/RealmString;
.super Lio/realm/ad;
.source "RealmString.java"

# interfaces
.implements Lio/realm/aj;


# instance fields
.field private id:Ljava/lang/String;

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 16
    invoke-static {}, Lcm/aptoide/pt/utils/IdUtils;->randomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/RealmString;->id:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmString;->string:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/RealmString;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/RealmString;->realmGet$string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/RealmString;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$string()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/RealmString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmString;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$string(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/RealmString;->string:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/RealmString;->realmSet$id(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/RealmString;->realmSet$string(Ljava/lang/String;)V

    .line 37
    return-void
.end method
