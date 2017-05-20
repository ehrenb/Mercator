.class final Lio/realm/r$a;
.super Lio/realm/internal/b;
.source "PaymentConfirmationRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/r;
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Lio/realm/internal/b;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    const-string v1, "PaymentConfirmation"

    const-string v2, "productId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/r$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/r$a;->a:J

    .line 40
    const-string v1, "productId"

    iget-wide v2, p0, Lio/realm/r$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "PaymentConfirmation"

    const-string v2, "payerId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/r$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/r$a;->b:J

    .line 43
    const-string v1, "payerId"

    iget-wide v2, p0, Lio/realm/r$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "PaymentConfirmation"

    const-string v2, "status"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/r$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/r$a;->c:J

    .line 46
    const-string v1, "status"

    iget-wide v2, p0, Lio/realm/r$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "PaymentConfirmation"

    const-string v2, "paymentConfirmationId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/r$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/r$a;->d:J

    .line 49
    const-string v1, "paymentConfirmationId"

    iget-wide v2, p0, Lio/realm/r$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, v0}, Lio/realm/r$a;->a(Ljava/util/Map;)V

    .line 52
    return-void
.end method
