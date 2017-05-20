.class final Lio/realm/g$a;
.super Lio/realm/internal/b;
.source "ExcludedAdRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    const-string v1, "ExcludedAd"

    const-string v2, "packageName"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/g$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/g$a;->a:J

    .line 37
    const-string v1, "packageName"

    iget-wide v2, p0, Lio/realm/g$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, v0}, Lio/realm/g$a;->a(Ljava/util/Map;)V

    .line 40
    return-void
.end method
