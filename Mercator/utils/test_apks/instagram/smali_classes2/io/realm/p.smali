.class public Lio/realm/p;
.super Lcm/aptoide/pt/database/realm/PaymentAuthorization;
.source "PaymentAuthorizationRealmProxy.java"

# interfaces
.implements Lio/realm/internal/j;
.implements Lio/realm/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/p$a;
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
.field private final a:Lio/realm/p$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const-string v1, "paymentId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "payerId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "redirectUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/p;->c:Ljava/util/List;

    .line 70
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;-><init>()V

    .line 73
    check-cast p1, Lio/realm/p$a;

    iput-object p1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    .line 74
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    .line 75
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 495
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

    .line 496
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 538
    :goto_0
    return-wide v4

    .line 498
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 499
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 500
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/p$a;

    .line 501
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 503
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$paymentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 504
    if-eqz v9, :cond_6

    move-object v4, p1

    .line 505
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$paymentId()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    .line 507
    :goto_1
    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 508
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 509
    if-eqz v9, :cond_1

    move-object v6, p1

    .line 510
    check-cast v6, Lio/realm/q;

    invoke-interface {v6}, Lio/realm/q;->realmGet$paymentId()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 513
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 514
    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$status()Ljava/lang/String;

    move-result-object v6

    .line 515
    if-eqz v6, :cond_2

    .line 516
    iget-wide v2, v8, Lio/realm/p$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 520
    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$payerId()Ljava/lang/String;

    move-result-object v6

    .line 521
    if-eqz v6, :cond_3

    .line 522
    iget-wide v2, v8, Lio/realm/p$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v2, p1

    .line 526
    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$url()Ljava/lang/String;

    move-result-object v6

    .line 527
    if-eqz v6, :cond_4

    .line 528
    iget-wide v2, v8, Lio/realm/p$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 532
    :goto_4
    check-cast p1, Lio/realm/q;

    invoke-interface {p1}, Lio/realm/q;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v6

    .line 533
    if-eqz v6, :cond_5

    .line 534
    iget-wide v2, v8, Lio/realm/p$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :cond_2
    iget-wide v2, v8, Lio/realm/p$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 524
    :cond_3
    iget-wide v2, v8, Lio/realm/p$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 530
    :cond_4
    iget-wide v2, v8, Lio/realm/p$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 536
    :cond_5
    iget-wide v2, v8, Lio/realm/p$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    :cond_6
    move-wide v4, v6

    goto :goto_1
.end method

.method public static a(Lcm/aptoide/pt/database/realm/PaymentAuthorization;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;"
        }
    .end annotation

    .prologue
    .line 595
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x0

    .line 617
    :goto_0
    return-object v0

    .line 598
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 600
    if-eqz v0, :cond_3

    .line 602
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 603
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    goto :goto_0

    .line 605
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 606
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 612
    check-cast v0, Lio/realm/q;

    move-object v2, p0

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$paymentId()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/q;->realmSet$paymentId(I)V

    move-object v0, v1

    .line 613
    check-cast v0, Lio/realm/q;

    move-object v2, p0

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$status()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/q;->realmSet$status(Ljava/lang/String;)V

    move-object v0, v1

    .line 614
    check-cast v0, Lio/realm/q;

    move-object v2, p0

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$payerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/q;->realmSet$payerId(Ljava/lang/String;)V

    move-object v0, v1

    .line 615
    check-cast v0, Lio/realm/q;

    move-object v2, p0

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/q;->realmSet$url(Ljava/lang/String;)V

    move-object v0, v1

    .line 616
    check-cast v0, Lio/realm/q;

    check-cast p0, Lio/realm/q;

    invoke-interface {p0}, Lio/realm/q;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/q;->realmSet$redirectUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 617
    goto :goto_0

    .line 609
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;-><init>()V

    .line 610
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;"
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p1

    check-cast v0, Lio/realm/q;

    move-object v1, p2

    check-cast v1, Lio/realm/q;

    invoke-interface {v1}, Lio/realm/q;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/q;->realmSet$status(Ljava/lang/String;)V

    move-object v0, p1

    .line 622
    check-cast v0, Lio/realm/q;

    move-object v1, p2

    check-cast v1, Lio/realm/q;

    invoke-interface {v1}, Lio/realm/q;->realmGet$payerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/q;->realmSet$payerId(Ljava/lang/String;)V

    move-object v0, p1

    .line 623
    check-cast v0, Lio/realm/q;

    move-object v1, p2

    check-cast v1, Lio/realm/q;

    invoke-interface {v1}, Lio/realm/q;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/q;->realmSet$url(Ljava/lang/String;)V

    move-object v0, p1

    .line 624
    check-cast v0, Lio/realm/q;

    check-cast p2, Lio/realm/q;

    invoke-interface {p2}, Lio/realm/q;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/q;->realmSet$redirectUrl(Ljava/lang/String;)V

    .line 625
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;"
        }
    .end annotation

    .prologue
    .line 356
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

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
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

    .line 385
    :goto_0
    return-object p1

    .line 362
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 363
    if-eqz v0, :cond_2

    .line 364
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-object p1, v0

    goto :goto_0

    .line 366
    :cond_2
    const/4 v1, 0x0

    .line 368
    if-eqz p2, :cond_5

    .line 369
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    move-object v0, p1

    .line 371
    check-cast v0, Lio/realm/q;

    invoke-interface {v0}, Lio/realm/q;->realmGet$paymentId()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v4

    .line 372
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 373
    new-instance v1, Lio/realm/p;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/p;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 374
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 375
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 376
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 382
    :goto_1
    if-eqz v0, :cond_4

    .line 383
    invoke-static {p0, v1, p1, p3}, Lio/realm/p;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Lcm/aptoide/pt/database/realm/PaymentAuthorization;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 385
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/p;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

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

    .line 147
    const-string v0, "class_PaymentAuthorization"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "class_PaymentAuthorization"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 149
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "paymentId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 150
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "status"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 151
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "payerId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 152
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 153
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "redirectUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 154
    const-string v1, "paymentId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 155
    const-string v1, "paymentId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_PaymentAuthorization"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "class_PaymentAuthorization"

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 13
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
    .line 542
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 543
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 544
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lio/realm/p$a;

    .line 545
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    .line 547
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 548
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 549
    invoke-interface {p2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 550
    instance-of v4, v12, Lio/realm/internal/j;

    if-eqz v4, :cond_1

    move-object v4, v12

    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v12

    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v12

    .line 551
    check-cast v4, Lio/realm/internal/j;

    invoke-interface {v4}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    :cond_1
    const-wide/16 v6, -0x1

    move-object v4, v12

    .line 555
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$paymentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 556
    if-eqz v8, :cond_8

    move-object v4, v12

    .line 557
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$paymentId()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    .line 559
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 560
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 561
    if-eqz v8, :cond_2

    move-object v6, v12

    .line 562
    check-cast v6, Lio/realm/q;

    invoke-interface {v6}, Lio/realm/q;->realmGet$paymentId()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :cond_2
    move-wide v8, v4

    .line 565
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    .line 566
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$status()Ljava/lang/String;

    move-result-object v10

    .line 567
    if-eqz v10, :cond_3

    .line 568
    iget-wide v6, v11, Lio/realm/p$a;->b:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v4, v12

    .line 572
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$payerId()Ljava/lang/String;

    move-result-object v10

    .line 573
    if-eqz v10, :cond_4

    .line 574
    iget-wide v6, v11, Lio/realm/p$a;->c:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v4, v12

    .line 578
    check-cast v4, Lio/realm/q;

    invoke-interface {v4}, Lio/realm/q;->realmGet$url()Ljava/lang/String;

    move-result-object v10

    .line 579
    if-eqz v10, :cond_5

    .line 580
    iget-wide v6, v11, Lio/realm/p$a;->d:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 584
    :goto_4
    check-cast v12, Lio/realm/q;

    invoke-interface {v12}, Lio/realm/q;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v10

    .line 585
    if-eqz v10, :cond_6

    .line 586
    iget-wide v6, v11, Lio/realm/p$a;->e:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :cond_3
    iget-wide v6, v11, Lio/realm/p$a;->b:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 576
    :cond_4
    iget-wide v6, v11, Lio/realm/p$a;->c:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 582
    :cond_5
    iget-wide v6, v11, Lio/realm/p$a;->d:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 588
    :cond_6
    iget-wide v6, v11, Lio/realm/p$a;->e:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 592
    :cond_7
    return-void

    :cond_8
    move-wide v4, v6

    goto :goto_1
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentAuthorization;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 392
    if-eqz v0, :cond_0

    .line 393
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 402
    :goto_0
    return-object v0

    .line 395
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-object v0, p1

    check-cast v0, Lio/realm/q;

    invoke-interface {v0}, Lio/realm/q;->realmGet$paymentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-object v1, v0

    .line 396
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 397
    check-cast v1, Lio/realm/q;

    move-object v2, p1

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$paymentId()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/q;->realmSet$paymentId(I)V

    move-object v1, v0

    .line 398
    check-cast v1, Lio/realm/q;

    move-object v2, p1

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$status()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/q;->realmSet$status(Ljava/lang/String;)V

    move-object v1, v0

    .line 399
    check-cast v1, Lio/realm/q;

    move-object v2, p1

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$payerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/q;->realmSet$payerId(Ljava/lang/String;)V

    move-object v1, v0

    .line 400
    check-cast v1, Lio/realm/q;

    move-object v2, p1

    check-cast v2, Lio/realm/q;

    invoke-interface {v2}, Lio/realm/q;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/q;->realmSet$url(Ljava/lang/String;)V

    move-object v1, v0

    .line 401
    check-cast v1, Lio/realm/q;

    check-cast p1, Lio/realm/q;

    invoke-interface {p1}, Lio/realm/q;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/q;->realmSet$redirectUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/p$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x5

    .line 162
    const-string v0, "class_PaymentAuthorization"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 163
    const-string v0, "class_PaymentAuthorization"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 165
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

    .line 167
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 169
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Lio/realm/p$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/p$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 174
    const-string v1, "paymentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'paymentId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    const-string v1, "paymentId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 178
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'paymentId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3
    iget-wide v4, v0, Lio/realm/p$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lio/realm/p$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'paymentId\'. Either maintain the same type for primary key field \'paymentId\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "paymentId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 184
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'paymentId\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_5
    const-string v1, "paymentId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 187
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'paymentId\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_6
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 190
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'status\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_7
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 193
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'status\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_8
    iget-wide v4, v0, Lio/realm/p$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'status\' does support null values in the existing Realm file. Remove @Required or @PrimaryKey from field \'status\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_9
    const-string v1, "payerId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 199
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'payerId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_a
    const-string v1, "payerId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 202
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'payerId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_b
    iget-wide v4, v0, Lio/realm/p$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 205
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'payerId\' does support null values in the existing Realm file. Remove @Required or @PrimaryKey from field \'payerId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_c
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 208
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'url\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_d
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 211
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'url\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    iget-wide v4, v0, Lio/realm/p$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 214
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'url\' is required. Either set @Required to field \'url\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_f
    const-string v1, "redirectUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 217
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'redirectUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_10
    const-string v1, "redirectUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_11

    .line 220
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'redirectUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_11
    iget-wide v4, v0, Lio/realm/p$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 223
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'redirectUrl\' is required. Either set @Required to field \'redirectUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_12
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'PaymentAuthorization\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_13
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    if-ne p0, p1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 678
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

    .line 679
    :cond_3
    check-cast p1, Lio/realm/p;

    .line 681
    iget-object v2, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 682
    iget-object v3, p1, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 683
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 685
    :cond_6
    iget-object v2, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 686
    iget-object v3, p1, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 687
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 689
    :cond_9
    iget-object v2, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/p;->b:Lio/realm/t;

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

    .line 664
    iget-object v1, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 665
    iget-object v2, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 666
    iget-object v3, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 669
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 670
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 671
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 672
    return v0

    :cond_1
    move v1, v0

    .line 669
    goto :goto_0
.end method

.method public realmGet$payerId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 105
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$paymentId()I
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 80
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$redirectUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 134
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 91
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 119
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$payerId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'payerId\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 114
    return-void
.end method

.method public realmSet$paymentId(I)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 85
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->a:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 86
    return-void
.end method

.method public realmSet$redirectUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 100
    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->a:Lio/realm/p$a;

    iget-wide v2, v1, Lio/realm/p$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const-string v0, "Invalid object"

    .line 654
    :goto_0
    return-object v0

    .line 633
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PaymentAuthorization = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    const-string v0, "{paymentId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p0}, Lio/realm/p;->realmGet$paymentId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v0, "{status:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p0}, Lio/realm/p;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v0, "{payerId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p0}, Lio/realm/p;->realmGet$payerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v0, "{url:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p0}, Lio/realm/p;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/p;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v0, "{redirectUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Lio/realm/p;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/p;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 647
    :cond_1
    const-string v0, "null"

    goto :goto_1

    .line 651
    :cond_2
    const-string v0, "null"

    goto :goto_2
.end method
