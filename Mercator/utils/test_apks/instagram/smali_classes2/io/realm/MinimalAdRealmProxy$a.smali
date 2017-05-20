.class final Lio/realm/MinimalAdRealmProxy$a;
.super Lio/realm/internal/b;
.source "MinimalAdRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/MinimalAdRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    const-string v1, "MinimalAd"

    const-string v2, "description"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->a:J

    .line 47
    const-string v1, "description"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "MinimalAd"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->b:J

    .line 50
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "MinimalAd"

    const-string v2, "networkId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->c:J

    .line 53
    const-string v1, "networkId"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "MinimalAd"

    const-string v2, "clickUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->d:J

    .line 56
    const-string v1, "clickUrl"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "MinimalAd"

    const-string v2, "cpcUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->e:J

    .line 59
    const-string v1, "cpcUrl"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "MinimalAd"

    const-string v2, "cpdUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->f:J

    .line 62
    const-string v1, "cpdUrl"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "MinimalAd"

    const-string v2, "appId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->g:J

    .line 65
    const-string v1, "appId"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "MinimalAd"

    const-string v2, "adId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->h:J

    .line 68
    const-string v1, "adId"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "MinimalAd"

    const-string v2, "cpiUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->i:J

    .line 71
    const-string v1, "cpiUrl"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "MinimalAd"

    const-string v2, "name"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->j:J

    .line 74
    const-string v1, "name"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "MinimalAd"

    const-string v2, "iconPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->k:J

    .line 77
    const-string v1, "iconPath"

    iget-wide v2, p0, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, v0}, Lio/realm/MinimalAdRealmProxy$a;->a(Ljava/util/Map;)V

    .line 80
    return-void
.end method
