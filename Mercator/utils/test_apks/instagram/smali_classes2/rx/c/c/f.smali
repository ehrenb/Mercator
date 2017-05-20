.class public final Lrx/c/c/f;
.super Ljava/lang/Object;
.source "SchedulePeriodicHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/c/f$a;
    }
.end annotation


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lrx/c/c/f;->a:J

    .line 45
    return-void
.end method

.method public static a(Lrx/g$a;Lrx/b/a;JJLjava/util/concurrent/TimeUnit;Lrx/c/c/f$a;)Lrx/k;
    .locals 16

    .prologue
    .line 59
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    .line 60
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Lrx/c/c/f$a;->a()J

    move-result-wide v6

    .line 61
    :goto_0
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v8, v6, v4

    .line 63
    new-instance v4, Lrx/c/d/a;

    invoke-direct {v4}, Lrx/c/d/a;-><init>()V

    .line 64
    new-instance v11, Lrx/c/d/a;

    invoke-direct {v11, v4}, Lrx/c/d/a;-><init>(Lrx/k;)V

    .line 66
    new-instance v5, Lrx/c/c/f$1;

    move-object/from16 v10, p1

    move-object/from16 v12, p7

    move-object/from16 v13, p0

    invoke-direct/range {v5 .. v15}, Lrx/c/c/f$1;-><init>(JJLrx/b/a;Lrx/c/d/a;Lrx/c/c/f$a;Lrx/g$a;J)V

    .line 98
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v5, v1, v2, v3}, Lrx/g$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/c/d/a;->b(Lrx/k;)Z

    .line 99
    return-object v11

    .line 60
    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/g$a;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    goto :goto_0
.end method
