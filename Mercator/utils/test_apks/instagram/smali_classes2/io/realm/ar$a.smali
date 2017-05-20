.class final Lio/realm/ar$a;
.super Lio/realm/internal/b;
.source "StoredMinimalAdRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ar;
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    const-string v1, "StoredMinimalAd"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ar$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ar$a;->a:J

    .line 41
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/ar$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "StoredMinimalAd"

    const-string v2, "referrer"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ar$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ar$a;->b:J

    .line 44
    const-string v1, "referrer"

    iget-wide v2, p0, Lio/realm/ar$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "StoredMinimalAd"

    const-string v2, "cpiUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ar$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ar$a;->c:J

    .line 47
    const-string v1, "cpiUrl"

    iget-wide v2, p0, Lio/realm/ar$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "StoredMinimalAd"

    const-string v2, "timestamp"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ar$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ar$a;->d:J

    .line 50
    const-string v1, "timestamp"

    iget-wide v2, p0, Lio/realm/ar$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "StoredMinimalAd"

    const-string v2, "adId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ar$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ar$a;->e:J

    .line 53
    const-string v1, "adId"

    iget-wide v2, p0, Lio/realm/ar$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, v0}, Lio/realm/ar$a;->a(Ljava/util/Map;)V

    .line 56
    return-void
.end method
