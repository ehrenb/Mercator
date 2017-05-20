.class final Lio/realm/ap$a;
.super Lio/realm/internal/b;
.source "StoreRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ap;
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    const-string v1, "Store"

    const-string v2, "storeId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->a:J

    .line 43
    const-string v1, "storeId"

    iget-wide v2, p0, Lio/realm/ap$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "Store"

    const-string v2, "iconPath"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->b:J

    .line 46
    const-string v1, "iconPath"

    iget-wide v2, p0, Lio/realm/ap$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "Store"

    const-string v2, "theme"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->c:J

    .line 49
    const-string v1, "theme"

    iget-wide v2, p0, Lio/realm/ap$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "Store"

    const-string v2, "downloads"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->d:J

    .line 52
    const-string v1, "downloads"

    iget-wide v2, p0, Lio/realm/ap$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "Store"

    const-string v2, "storeName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->e:J

    .line 55
    const-string v1, "storeName"

    iget-wide v2, p0, Lio/realm/ap$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "Store"

    const-string v2, "username"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->f:J

    .line 58
    const-string v1, "username"

    iget-wide v2, p0, Lio/realm/ap$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "Store"

    const-string v2, "passwordSha1"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/ap$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/ap$a;->g:J

    .line 61
    const-string v1, "passwordSha1"

    iget-wide v2, p0, Lio/realm/ap$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0, v0}, Lio/realm/ap$a;->a(Ljava/util/Map;)V

    .line 64
    return-void
.end method
