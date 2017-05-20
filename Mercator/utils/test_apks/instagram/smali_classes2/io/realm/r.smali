.class public Lio/realm/r;
.super Lcm/aptoide/pt/database/realm/PaymentConfirmation;
.source "PaymentConfirmationRealmProxy.java"

# interfaces
.implements Lio/realm/internal/j;
.implements Lio/realm/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/r$a;
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
.field private final a:Lio/realm/r$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const-string v1, "productId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "payerId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "paymentConfirmationId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/r;->c:Ljava/util/List;

    .line 65
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;-><init>()V

    .line 68
    check-cast p1, Lio/realm/r$a;

    iput-object p1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    .line 69
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    .line 70
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 442
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

    .line 443
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 479
    :goto_0
    return-wide v4

    .line 445
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 447
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/r$a;

    .line 448
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 450
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$productId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 451
    if-eqz v9, :cond_5

    move-object v4, p1

    .line 452
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$productId()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    .line 454
    :goto_1
    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 455
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 456
    if-eqz v9, :cond_1

    move-object v6, p1

    .line 457
    check-cast v6, Lio/realm/s;

    invoke-interface {v6}, Lio/realm/s;->realmGet$productId()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 460
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 461
    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$payerId()Ljava/lang/String;

    move-result-object v6

    .line 462
    if-eqz v6, :cond_2

    .line 463
    iget-wide v2, v8, Lio/realm/r$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 467
    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$status()Ljava/lang/String;

    move-result-object v6

    .line 468
    if-eqz v6, :cond_3

    .line 469
    iget-wide v2, v8, Lio/realm/r$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 473
    :goto_3
    check-cast p1, Lio/realm/s;

    invoke-interface {p1}, Lio/realm/s;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v6

    .line 474
    if-eqz v6, :cond_4

    .line 475
    iget-wide v2, v8, Lio/realm/r$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    iget-wide v2, v8, Lio/realm/r$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 471
    :cond_3
    iget-wide v2, v8, Lio/realm/r$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 477
    :cond_4
    iget-wide v2, v8, Lio/realm/r$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    :cond_5
    move-wide v4, v6

    goto :goto_1
.end method

.method public static a(Lcm/aptoide/pt/database/realm/PaymentConfirmation;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;"
        }
    .end annotation

    .prologue
    .line 530
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 531
    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return-object v0

    .line 533
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 535
    if-eqz v0, :cond_3

    .line 537
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 538
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 541
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 547
    check-cast v0, Lio/realm/s;

    move-object v2, p0

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$productId()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/s;->realmSet$productId(I)V

    move-object v0, v1

    .line 548
    check-cast v0, Lio/realm/s;

    move-object v2, p0

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$payerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/s;->realmSet$payerId(Ljava/lang/String;)V

    move-object v0, v1

    .line 549
    check-cast v0, Lio/realm/s;

    move-object v2, p0

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$status()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/s;->realmSet$status(Ljava/lang/String;)V

    move-object v0, v1

    .line 550
    check-cast v0, Lio/realm/s;

    check-cast p0, Lio/realm/s;

    invoke-interface {p0}, Lio/realm/s;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/s;->realmSet$paymentConfirmationId(Ljava/lang/String;)V

    move-object v0, v1

    .line 551
    goto :goto_0

    .line 544
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;-><init>()V

    .line 545
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;"
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p1

    check-cast v0, Lio/realm/s;

    move-object v1, p2

    check-cast v1, Lio/realm/s;

    invoke-interface {v1}, Lio/realm/s;->realmGet$payerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/s;->realmSet$payerId(Ljava/lang/String;)V

    move-object v0, p1

    .line 556
    check-cast v0, Lio/realm/s;

    move-object v1, p2

    check-cast v1, Lio/realm/s;

    invoke-interface {v1}, Lio/realm/s;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/s;->realmSet$status(Ljava/lang/String;)V

    move-object v0, p1

    .line 557
    check-cast v0, Lio/realm/s;

    check-cast p2, Lio/realm/s;

    invoke-interface {p2}, Lio/realm/s;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/s;->realmSet$paymentConfirmationId(Ljava/lang/String;)V

    .line 558
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;"
        }
    .end annotation

    .prologue
    .line 312
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

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
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

    .line 341
    :goto_0
    return-object p1

    .line 318
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 319
    if-eqz v0, :cond_2

    .line 320
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-object p1, v0

    goto :goto_0

    .line 322
    :cond_2
    const/4 v1, 0x0

    .line 324
    if-eqz p2, :cond_5

    .line 325
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    move-object v0, p1

    .line 327
    check-cast v0, Lio/realm/s;

    invoke-interface {v0}, Lio/realm/s;->realmGet$productId()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v4

    .line 328
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 329
    new-instance v1, Lio/realm/r;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v0, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/r;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 330
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 331
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 332
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 338
    :goto_1
    if-eqz v0, :cond_4

    .line 339
    invoke-static {p0, v1, p1, p3}, Lio/realm/r;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Lcm/aptoide/pt/database/realm/PaymentConfirmation;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/r;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v0, "class_PaymentConfirmation"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "class_PaymentConfirmation"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 129
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "productId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 130
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "payerId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 131
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "status"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 132
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "paymentConfirmationId"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 133
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 134
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_PaymentConfirmation"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "class_PaymentConfirmation"

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
    .line 483
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 485
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lio/realm/r$a;

    .line 486
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    .line 488
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 489
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 490
    invoke-interface {p2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
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

    .line 492
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

    .line 495
    :cond_1
    const-wide/16 v6, -0x1

    move-object v4, v12

    .line 496
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$productId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 497
    if-eqz v8, :cond_7

    move-object v4, v12

    .line 498
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$productId()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    .line 500
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 501
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 502
    if-eqz v8, :cond_2

    move-object v6, v12

    .line 503
    check-cast v6, Lio/realm/s;

    invoke-interface {v6}, Lio/realm/s;->realmGet$productId()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :cond_2
    move-wide v8, v4

    .line 506
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    .line 507
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$payerId()Ljava/lang/String;

    move-result-object v10

    .line 508
    if-eqz v10, :cond_3

    .line 509
    iget-wide v6, v11, Lio/realm/r$a;->b:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v4, v12

    .line 513
    check-cast v4, Lio/realm/s;

    invoke-interface {v4}, Lio/realm/s;->realmGet$status()Ljava/lang/String;

    move-result-object v10

    .line 514
    if-eqz v10, :cond_4

    .line 515
    iget-wide v6, v11, Lio/realm/r$a;->c:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 519
    :goto_3
    check-cast v12, Lio/realm/s;

    invoke-interface {v12}, Lio/realm/s;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v10

    .line 520
    if-eqz v10, :cond_5

    .line 521
    iget-wide v6, v11, Lio/realm/r$a;->d:J

    move-wide v4, v0

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :cond_3
    iget-wide v6, v11, Lio/realm/r$a;->b:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 517
    :cond_4
    iget-wide v6, v11, Lio/realm/r$a;->c:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 523
    :cond_5
    iget-wide v6, v11, Lio/realm/r$a;->d:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 527
    :cond_6
    return-void

    :cond_7
    move-wide v4, v6

    goto :goto_1
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/PaymentConfirmation;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 348
    if-eqz v0, :cond_0

    .line 349
    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 357
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-object v0, p1

    check-cast v0, Lio/realm/s;

    invoke-interface {v0}, Lio/realm/s;->realmGet$productId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-object v1, v0

    .line 352
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 353
    check-cast v1, Lio/realm/s;

    move-object v2, p1

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$productId()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/s;->realmSet$productId(I)V

    move-object v1, v0

    .line 354
    check-cast v1, Lio/realm/s;

    move-object v2, p1

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$payerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/s;->realmSet$payerId(Ljava/lang/String;)V

    move-object v1, v0

    .line 355
    check-cast v1, Lio/realm/s;

    move-object v2, p1

    check-cast v2, Lio/realm/s;

    invoke-interface {v2}, Lio/realm/s;->realmGet$status()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/s;->realmSet$status(Ljava/lang/String;)V

    move-object v1, v0

    .line 356
    check-cast v1, Lio/realm/s;

    check-cast p1, Lio/realm/s;

    invoke-interface {p1}, Lio/realm/s;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/s;->realmSet$paymentConfirmationId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/r$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    .line 141
    const-string v0, "class_PaymentConfirmation"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    const-string v0, "class_PaymentConfirmation"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 4 but was "

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

    .line 146
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 148
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Lio/realm/r$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/r$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 153
    const-string v1, "productId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'productId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    const-string v1, "productId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 157
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'productId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    iget-wide v4, v0, Lio/realm/r$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lio/realm/r$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'productId\'. Either maintain the same type for primary key field \'productId\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "productId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 163
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'productId\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_5
    const-string v1, "productId"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 166
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'productId\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_6
    const-string v1, "payerId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 169
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'payerId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_7
    const-string v1, "payerId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 172
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'payerId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_8
    iget-wide v4, v0, Lio/realm/r$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 175
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'payerId\' does support null values in the existing Realm file. Remove @Required or @PrimaryKey from field \'payerId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_9
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 178
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'status\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_a
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 181
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'status\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_b
    iget-wide v4, v0, Lio/realm/r$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 184
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'status\' does support null values in the existing Realm file. Remove @Required or @PrimaryKey from field \'status\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_c
    const-string v1, "paymentConfirmationId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 187
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'paymentConfirmationId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_d
    const-string v1, "paymentConfirmationId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_e

    .line 190
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'paymentConfirmationId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_e
    iget-wide v4, v0, Lio/realm/r$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 193
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'paymentConfirmationId\' is required. Either set @Required to field \'paymentConfirmationId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_f
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'PaymentConfirmation\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_10
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    if-ne p0, p1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 607
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

    .line 608
    :cond_3
    check-cast p1, Lio/realm/r;

    .line 610
    iget-object v2, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 611
    iget-object v3, p1, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 612
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 614
    :cond_6
    iget-object v2, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v3, p1, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 616
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 618
    :cond_9
    iget-object v2, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/r;->b:Lio/realm/t;

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

    .line 593
    iget-object v1, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 594
    iget-object v2, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 595
    iget-object v3, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 598
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 599
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 600
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 601
    return v0

    :cond_1
    move v1, v0

    .line 598
    goto :goto_0
.end method

.method public realmGet$payerId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 86
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$paymentConfirmationId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 114
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$productId()I
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 75
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 100
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$payerId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'payerId\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public realmSet$paymentConfirmationId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$productId(I)V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 80
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->a:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 81
    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'status\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lio/realm/r;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r;->a:Lio/realm/r$a;

    iget-wide v2, v1, Lio/realm/r$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const-string v0, "Invalid object"

    .line 583
    :goto_0
    return-object v0

    .line 566
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PaymentConfirmation = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    const-string v0, "{productId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p0}, Lio/realm/r;->realmGet$productId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v0, "{payerId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p0}, Lio/realm/r;->realmGet$payerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v0, "{status:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Lio/realm/r;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v0, "{paymentConfirmationId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Lio/realm/r;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/r;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method
