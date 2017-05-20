.class public Lio/realm/ar;
.super Lcm/aptoide/pt/database/realm/StoredMinimalAd;
.source "StoredMinimalAdRealmProxy.java"

# interfaces
.implements Lio/realm/as;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ar$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/realm/ar$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "referrer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "cpiUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "adId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/ar;->c:Ljava/util/List;

    .line 70
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;-><init>()V

    .line 73
    check-cast p1, Lio/realm/ar$a;

    iput-object p1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    .line 74
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    .line 75
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 480
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 513
    :goto_0
    return-wide v4

    .line 483
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 485
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/ar$a;

    .line 486
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 488
    check-cast v4, Lio/realm/as;

    invoke-interface {v4}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 489
    if-eqz v6, :cond_4

    move-object v4, v6

    .line 490
    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    .line 492
    :goto_1
    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 493
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 494
    if-eqz v6, :cond_1

    .line 495
    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 498
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 499
    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$referrer()Ljava/lang/String;

    move-result-object v6

    .line 500
    if-eqz v6, :cond_2

    .line 501
    iget-wide v2, v8, Lio/realm/ar$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 505
    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v6

    .line 506
    if-eqz v6, :cond_3

    .line 507
    iget-wide v2, v8, Lio/realm/ar$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 511
    :goto_3
    iget-wide v2, v8, Lio/realm/ar$a;->d:J

    move-object v6, p1

    check-cast v6, Lio/realm/as;

    invoke-interface {v6}, Lio/realm/as;->realmGet$timestamp()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 512
    iget-wide v2, v8, Lio/realm/ar$a;->e:J

    check-cast p1, Lio/realm/as;

    invoke-interface {p1}, Lio/realm/as;->realmGet$adId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    goto :goto_0

    .line 503
    :cond_2
    iget-wide v2, v8, Lio/realm/ar$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 509
    :cond_3
    iget-wide v2, v8, Lio/realm/ar$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    :cond_4
    move-wide v4, v10

    goto :goto_1
.end method

.method public static a(Lcm/aptoide/pt/database/realm/StoredMinimalAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;"
        }
    .end annotation

    .prologue
    .line 560
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 563
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 565
    if-eqz v0, :cond_3

    .line 567
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 568
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    goto :goto_0

    .line 570
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    .line 571
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 577
    check-cast v0, Lio/realm/as;

    move-object v2, p0

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/as;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 578
    check-cast v0, Lio/realm/as;

    move-object v2, p0

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$referrer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/as;->realmSet$referrer(Ljava/lang/String;)V

    move-object v0, v1

    .line 579
    check-cast v0, Lio/realm/as;

    move-object v2, p0

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/as;->realmSet$cpiUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 580
    check-cast v0, Lio/realm/as;

    move-object v2, p0

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/as;->realmSet$timestamp(J)V

    move-object v0, v1

    .line 581
    check-cast v0, Lio/realm/as;

    check-cast p0, Lio/realm/as;

    invoke-interface {p0}, Lio/realm/as;->realmGet$adId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/as;->realmSet$adId(J)V

    move-object v0, v1

    .line 582
    goto :goto_0

    .line 574
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;-><init>()V

    .line 575
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;"
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p1

    check-cast v0, Lio/realm/as;

    move-object v1, p2

    check-cast v1, Lio/realm/as;

    invoke-interface {v1}, Lio/realm/as;->realmGet$referrer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/as;->realmSet$referrer(Ljava/lang/String;)V

    move-object v0, p1

    .line 587
    check-cast v0, Lio/realm/as;

    move-object v1, p2

    check-cast v1, Lio/realm/as;

    invoke-interface {v1}, Lio/realm/as;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/as;->realmSet$cpiUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 588
    check-cast v0, Lio/realm/as;

    move-object v1, p2

    check-cast v1, Lio/realm/as;

    invoke-interface {v1}, Lio/realm/as;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/as;->realmSet$timestamp(J)V

    move-object v0, p1

    .line 589
    check-cast v0, Lio/realm/as;

    check-cast p2, Lio/realm/as;

    invoke-interface {p2}, Lio/realm/as;->realmGet$adId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/as;->realmSet$adId(J)V

    .line 590
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;"
        }
    .end annotation

    .prologue
    .line 353
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/a;->c:J

    iget-wide v2, p0, Lio/realm/u;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :goto_0
    return-object p1

    .line 359
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 360
    if-eqz v0, :cond_2

    .line 361
    check-cast v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-object p1, v0

    goto :goto_0

    .line 363
    :cond_2
    const/4 v1, 0x0

    .line 365
    if-eqz p2, :cond_5

    .line 366
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    move-object v0, p1

    .line 368
    check-cast v0, Lio/realm/as;

    invoke-interface {v0}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v4

    .line 369
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 370
    new-instance v1, Lio/realm/ar;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v0, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/ar;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 371
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 372
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 373
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 379
    :goto_1
    if-eqz v0, :cond_4

    .line 380
    invoke-static {p0, v1, p1, p3}, Lio/realm/ar;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Lcm/aptoide/pt/database/realm/StoredMinimalAd;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-result-object p1

    goto :goto_0

    .line 375
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 382
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/ar;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v0, "class_StoredMinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "class_StoredMinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 146
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 147
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "referrer"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 148
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "cpiUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 149
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 150
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "adId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 151
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 152
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_StoredMinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "class_StoredMinimalAd"

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/util/Iterator",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    const-class v2, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 518
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/ar$a;

    .line 520
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 522
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 523
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    .line 524
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 525
    instance-of v6, v15, Lio/realm/internal/j;

    if-eqz v6, :cond_1

    move-object v6, v15

    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v15

    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v15

    .line 526
    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/l;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_1
    const-wide/16 v10, -0x1

    move-object v6, v15

    .line 530
    check-cast v6, Lio/realm/as;

    invoke-interface {v6}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v8

    .line 531
    if-eqz v8, :cond_6

    move-object v6, v8

    .line 532
    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    .line 534
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 535
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 536
    if-eqz v8, :cond_2

    .line 537
    check-cast v8, Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 540
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 541
    check-cast v6, Lio/realm/as;

    invoke-interface {v6}, Lio/realm/as;->realmGet$referrer()Ljava/lang/String;

    move-result-object v12

    .line 542
    if-eqz v12, :cond_3

    .line 543
    iget-wide v8, v14, Lio/realm/ar$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 547
    check-cast v6, Lio/realm/as;

    invoke-interface {v6}, Lio/realm/as;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v12

    .line 548
    if-eqz v12, :cond_4

    .line 549
    iget-wide v8, v14, Lio/realm/ar$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 553
    :goto_3
    iget-wide v8, v14, Lio/realm/ar$a;->d:J

    move-object v6, v15

    check-cast v6, Lio/realm/as;

    invoke-interface {v6}, Lio/realm/as;->realmGet$timestamp()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 554
    iget-wide v8, v14, Lio/realm/ar$a;->e:J

    check-cast v15, Lio/realm/as;

    invoke-interface {v15}, Lio/realm/as;->realmGet$adId()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    goto/16 :goto_0

    .line 545
    :cond_3
    iget-wide v8, v14, Lio/realm/ar$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 551
    :cond_4
    iget-wide v8, v14, Lio/realm/ar$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 557
    :cond_5
    return-void

    :cond_6
    move-wide v6, v10

    goto :goto_1
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/StoredMinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/StoredMinimalAd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 389
    if-eqz v0, :cond_0

    .line 390
    check-cast v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    .line 399
    :goto_0
    return-object v0

    .line 392
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-object v0, p1

    check-cast v0, Lio/realm/as;

    invoke-interface {v0}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    move-object v1, v0

    .line 393
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 394
    check-cast v1, Lio/realm/as;

    move-object v2, p1

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/as;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 395
    check-cast v1, Lio/realm/as;

    move-object v2, p1

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$referrer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/as;->realmSet$referrer(Ljava/lang/String;)V

    move-object v1, v0

    .line 396
    check-cast v1, Lio/realm/as;

    move-object v2, p1

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/as;->realmSet$cpiUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 397
    check-cast v1, Lio/realm/as;

    move-object v2, p1

    check-cast v2, Lio/realm/as;

    invoke-interface {v2}, Lio/realm/as;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/as;->realmSet$timestamp(J)V

    move-object v1, v0

    .line 398
    check-cast v1, Lio/realm/as;

    check-cast p1, Lio/realm/as;

    invoke-interface {p1}, Lio/realm/as;->realmGet$adId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/as;->realmSet$adId(J)V

    goto :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/ar$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x5

    .line 159
    const-string v0, "class_StoredMinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    const-string v0, "class_StoredMinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 5 but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 166
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lio/realm/ar$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/ar$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 171
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 175
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    iget-wide v4, v0, Lio/realm/ar$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lio/realm/ar$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'packageName\'. Either maintain the same type for primary key field \'packageName\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 181
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'packageName\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_5
    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 184
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'packageName\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_6
    const-string v1, "referrer"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 187
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'referrer\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_7
    const-string v1, "referrer"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 190
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'referrer\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_8
    iget-wide v4, v0, Lio/realm/ar$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 193
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'referrer\' is required. Either set @Required to field \'referrer\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_9
    const-string v1, "cpiUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 196
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'cpiUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_a
    const-string v1, "cpiUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 199
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'cpiUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_b
    iget-wide v4, v0, Lio/realm/ar$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 202
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'cpiUrl\' is required. Either set @Required to field \'cpiUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_c
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 205
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'timestamp\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_d
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 208
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'timestamp\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_e
    iget-wide v4, v0, Lio/realm/ar$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 211
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'timestamp\' does support null values in the existing Realm file. Use corresponding boxed type for field \'timestamp\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_f
    const-string v1, "adId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 214
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'adId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_10
    const-string v1, "adId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_11

    .line 217
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'adId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_11
    iget-wide v4, v0, Lio/realm/ar$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 220
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'adId\' does support null values in the existing Realm file. Use corresponding boxed type for field \'adId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_12
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'StoredMinimalAd\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_13
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    if-ne p0, p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 644
    :cond_3
    check-cast p1, Lio/realm/ar;

    .line 646
    iget-object v2, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 647
    iget-object v3, p1, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 648
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 650
    :cond_6
    iget-object v2, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 651
    iget-object v3, p1, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 652
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 654
    :cond_9
    iget-object v2, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 629
    iget-object v1, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 631
    iget-object v3, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 634
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 635
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 636
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 637
    return v0

    :cond_1
    move v1, v0

    .line 634
    goto :goto_0
.end method

.method public realmGet$adId()J
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 135
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$cpiUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 109
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 80
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$referrer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 94
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 124
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmSet$adId(J)V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 140
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->e:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 141
    return-void
.end method

.method public realmSet$cpiUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'packageName\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 89
    return-void
.end method

.method public realmSet$referrer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 99
    if-nez p1, :cond_0

    .line 100
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$timestamp(J)V
    .locals 5

    .prologue
    .line 128
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 129
    iget-object v0, p0, Lio/realm/ar;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ar;->a:Lio/realm/ar$a;

    iget-wide v2, v1, Lio/realm/ar$a;->d:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string v0, "Invalid object"

    .line 619
    :goto_0
    return-object v0

    .line 598
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "StoredMinimalAd = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Lio/realm/ar;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v0, "{referrer:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p0}, Lio/realm/ar;->realmGet$referrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/ar;->realmGet$referrer()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v0, "{cpiUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Lio/realm/ar;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/ar;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v0, "{timestamp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p0}, Lio/realm/ar;->realmGet$timestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v0, "{adId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {p0}, Lio/realm/ar;->realmGet$adId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 617
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 604
    :cond_1
    const-string v0, "null"

    goto :goto_1

    .line 608
    :cond_2
    const-string v0, "null"

    goto :goto_2
.end method
