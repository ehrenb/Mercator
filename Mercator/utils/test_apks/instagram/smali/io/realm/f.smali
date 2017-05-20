.class public final Lio/realm/f;
.super Lio/realm/ad;
.source "DynamicRealmObject.java"

# interfaces
.implements Lio/realm/internal/j;


# instance fields
.field private final a:Lio/realm/t;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 36
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0}, Lio/realm/t;-><init>(Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    .line 66
    return-void
.end method

.method constructor <init>(Lio/realm/a;Lio/realm/internal/l;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 36
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0}, Lio/realm/t;-><init>(Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    .line 69
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0, p1}, Lio/realm/t;->a(Lio/realm/a;)V

    .line 70
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    instance-of v1, p2, Lio/realm/internal/CheckedRow;

    if-eqz v1, :cond_0

    check-cast p2, Lio/realm/internal/CheckedRow;

    :goto_0
    invoke-virtual {v0, p2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    .line 71
    return-void

    .line 70
    :cond_0
    check-cast p2, Lio/realm/internal/UncheckedRow;

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->e()Lio/realm/internal/CheckedRow;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLio/realm/RealmFieldType;)V
    .locals 8

    .prologue
    .line 662
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lio/realm/internal/l;->e(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 663
    if-eq v2, p4, :cond_4

    .line 664
    const-string v0, ""

    .line 665
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq p4, v1, :cond_0

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne p4, v1, :cond_1

    .line 666
    :cond_0
    const-string v0, "n"

    .line 668
    :cond_1
    const-string v1, ""

    .line 669
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq p4, v3, :cond_2

    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne p4, v3, :cond_3

    .line 670
    :cond_2
    const-string v1, "n"

    .line 672
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'%s\' is not a%s \'%s\', but a%s \'%s\'."

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object p4, v5, v0

    const/4 v0, 0x3

    aput-object v1, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 395
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/realm/f;->a(Ljava/lang/String;Z)V

    .line 423
    :goto_0
    return-void

    .line 396
    :cond_0
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_1

    .line 397
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/realm/f;->a(Ljava/lang/String;S)V

    goto :goto_0

    .line 398
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 399
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/realm/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 400
    :cond_2
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_3

    .line 401
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/f;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 402
    :cond_3
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_4

    .line 403
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/realm/f;->a(Ljava/lang/String;B)V

    goto :goto_0

    .line 404
    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    .line 405
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/realm/f;->a(Ljava/lang/String;F)V

    goto :goto_0

    .line 406
    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    .line 407
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/f;->a(Ljava/lang/String;D)V

    goto :goto_0

    .line 408
    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 409
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/realm/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_7
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_8

    .line 411
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lio/realm/f;->a(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 412
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 413
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lio/realm/f;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 414
    :cond_9
    const-class v1, Lio/realm/f;

    if-ne v0, v1, :cond_a

    .line 415
    check-cast p2, Lio/realm/f;

    invoke-virtual {p0, p1, p2}, Lio/realm/f;->a(Ljava/lang/String;Lio/realm/f;)V

    goto :goto_0

    .line 416
    :cond_a
    const-class v1, Lio/realm/aa;

    if-ne v0, v1, :cond_b

    .line 418
    check-cast p2, Lio/realm/aa;

    .line 419
    invoke-virtual {p0, p1, p2}, Lio/realm/f;->a(Ljava/lang/String;Lio/realm/aa;)V

    goto/16 :goto_0

    .line 421
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is of an type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 240
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/f;->a(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 241
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;B)V
    .locals 6

    .prologue
    .line 481
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 482
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v0, v1, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 483
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 506
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2, p3}, Lio/realm/internal/l;->a(JD)V

    .line 507
    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 494
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lio/realm/internal/l;->a(JF)V

    .line 495
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 457
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 458
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v0, v1, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 459
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 470
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2, p3}, Lio/realm/internal/l;->a(JJ)V

    .line 471
    return-void
.end method

.method public a(Ljava/lang/String;Lio/realm/aa;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/aa",
            "<",
            "Lio/realm/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    if-nez p2, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null values not allowed for lists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v1

    .line 594
    iget-object v0, p2, Lio/realm/aa;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p2, Lio/realm/aa;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    move v1, v2

    .line 607
    :goto_0
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 608
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lio/realm/internal/l;->m(J)Lio/realm/internal/LinkView;

    move-result-object v5

    .line 609
    invoke-virtual {v5}, Lio/realm/internal/LinkView;->a()V

    .line 610
    invoke-virtual {v5}, Lio/realm/internal/LinkView;->d()Lio/realm/internal/Table;

    move-result-object v6

    move v4, v2

    .line 611
    :goto_1
    invoke-virtual {p2}, Lio/realm/aa;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 612
    invoke-virtual {p2, v4}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 613
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v7

    iget-object v8, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v8}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element in \'list\' must belong to the same Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    iget-object v0, p2, Lio/realm/aa;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lio/realm/aa;->b:Ljava/lang/String;

    .line 600
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 601
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The elements in the list is not the proper type. Was %s expected %s."

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    :cond_2
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-object v0, v0, Lio/realm/a;->f:Lio/realm/ah;

    iget-object v4, p2, Lio/realm/aa;->a:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Lio/realm/ah;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 604
    goto :goto_0

    .line 616
    :cond_4
    if-nez v1, :cond_5

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 617
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Element at index %d is not the proper type. Was \'%s\' expected \'%s\'."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 619
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {v6}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10

    .line 617
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_5
    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lio/realm/internal/LinkView;->b(J)V

    .line 611
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 623
    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;Lio/realm/f;)V
    .locals 6

    .prologue
    .line 558
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 559
    if-nez p2, :cond_0

    .line 560
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->n(J)V

    .line 576
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v2, p2, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    if-nez v2, :cond_2

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot link to objects that are not part of the Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    iget-object v3, p2, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add an object from another Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_3
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->i(J)Lio/realm/internal/Table;

    move-result-object v2

    .line 569
    iget-object v3, p2, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    .line 570
    invoke-virtual {v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type of object is wrong. Was %s, expected %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 572
    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 571
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_4
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    iget-object v3, p2, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    invoke-interface {v2, v0, v1, v4, v5}, Lio/realm/internal/l;->b(JJ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 364
    instance-of v1, p2, Ljava/lang/String;

    .line 365
    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 368
    :goto_0
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 369
    iget-object v4, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/realm/internal/l;->e(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 370
    if-eqz v1, :cond_1

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v1, :cond_1

    .line 371
    sget-object v1, Lio/realm/f$1;->a:[I

    invoke-virtual {v2}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 378
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 384
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    .line 385
    invoke-virtual {p0, p1}, Lio/realm/f;->b(Ljava/lang/String;)V

    .line 389
    :goto_2
    return-void

    .line 373
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    .line 374
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    .line 375
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    .line 376
    :pswitch_5
    invoke-static {v0}, Lio/realm/internal/a/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    .line 387
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/realm/f;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 518
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    .line 519
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 542
    if-nez p2, :cond_0

    .line 543
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->c(J)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lio/realm/internal/l;->a(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;S)V
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 446
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v0, v1, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 447
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 434
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lio/realm/internal/l;->a(JZ)V

    .line 435
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 530
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lio/realm/internal/l;->a(J[B)V

    .line 531
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->a()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 346
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lio/realm/internal/l;->d(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-object v1
.end method

.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 632
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 633
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->e(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 634
    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne v2, v3, :cond_0

    .line 635
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->n(J)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/l;->c(J)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-static {v0}, Lio/realm/ah;->a(Lio/realm/internal/Table;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 726
    :cond_0
    :goto_0
    return v1

    .line 708
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 711
    check-cast p1, Lio/realm/f;

    .line 713
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 714
    iget-object v3, p1, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 715
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    :cond_2
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 720
    iget-object v3, p1, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 722
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    :cond_3
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 715
    :cond_4
    if-eqz v3, :cond_2

    goto :goto_0

    .line 722
    :cond_5
    if-eqz v3, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 726
    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 693
    iget-object v2, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 694
    iget-object v3, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 697
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 698
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 699
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 700
    return v0

    :cond_1
    move v1, v0

    .line 697
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    const-string v0, "Invalid object"

    .line 785
    :goto_0
    return-object v0

    .line 735
    :cond_1
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lio/realm/f;->a()[Ljava/lang/String;

    move-result-object v4

    .line 738
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_8

    aget-object v0, v4, v1

    .line 739
    iget-object v6, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v6}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v6

    invoke-interface {v6, v0}, Lio/realm/internal/l;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 740
    iget-object v8, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v8}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lio/realm/internal/l;->e(J)Lio/realm/RealmFieldType;

    move-result-object v8

    .line 741
    const-string v9, "{"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    sget-object v0, Lio/realm/f$1;->a:[I

    invoke-virtual {v8}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 778
    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :goto_2
    const-string v0, "}, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 745
    :pswitch_0
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "null"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 748
    :pswitch_1
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "null"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->f(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 751
    :pswitch_2
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "null"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->h(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_5

    .line 754
    :pswitch_3
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "null"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->i(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    .line 757
    :pswitch_4
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 760
    :pswitch_5
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->l(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 763
    :pswitch_6
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "null"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->j(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_7

    .line 766
    :pswitch_7
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lio/realm/internal/l;->a(J)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "null"

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    .line 768
    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lio/realm/internal/Table;->i(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 771
    :pswitch_8
    iget-object v0, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lio/realm/internal/Table;->i(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Lio/realm/internal/Table;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    const-string v8, "RealmList<%s>[%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    iget-object v10, p0, Lio/realm/f;->a:Lio/realm/t;

    invoke-virtual {v10}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v10

    invoke-interface {v10, v6, v7}, Lio/realm/internal/l;->m(J)Lio/realm/internal/LinkView;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/LinkView;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 783
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
