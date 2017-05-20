.class final Lio/realm/y$a;
.super Lio/realm/internal/b;
.source "RealmIntegerRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 37
    const-string v1, "RealmInteger"

    const-string v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/y$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/y$a;->a:J

    .line 38
    const-string v1, "id"

    iget-wide v2, p0, Lio/realm/y$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "RealmInteger"

    const-string v2, "integer"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/y$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/y$a;->b:J

    .line 41
    const-string v1, "integer"

    iget-wide v2, p0, Lio/realm/y$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, v0}, Lio/realm/y$a;->a(Ljava/util/Map;)V

    .line 44
    return-void
.end method
