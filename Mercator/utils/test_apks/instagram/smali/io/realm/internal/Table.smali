.class public Lio/realm/internal/Table;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Lio/realm/internal/n;
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Ljava/lang/String;

.field static d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected b:J

.field protected final c:Ljava/lang/Object;

.field private final e:Lio/realm/internal/c;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lio/realm/internal/Util;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/realm/internal/Table;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    invoke-static {}, Lio/realm/internal/i;->b()V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    .line 73
    new-instance v0, Lio/realm/internal/c;

    invoke-direct {v0}, Lio/realm/internal/c;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    .line 77
    invoke-virtual {p0}, Lio/realm/internal/Table;->createNative()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->b:J

    .line 78
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Out of native memory."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method constructor <init>(Lio/realm/internal/c;Ljava/lang/Object;J)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 88
    iput-object p1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    .line 89
    iput-object p2, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    .line 90
    iput-wide p3, p0, Lio/realm/internal/Table;->b:J

    .line 95
    return-void
.end method

.method private a(Lio/realm/internal/Group;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 1000
    iget-wide v0, p1, Lio/realm/internal/Group;->a:J

    iget-wide v2, p2, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeMigratePrimaryKeyTableIfNeeded(JJ)V

    .line 1001
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 727
    new-instance v0, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column names are currently limited to max 63 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method private native nativeAddColumn(JILjava/lang/String;Z)J
.end method

.method private native nativeAddColumnLink(JILjava/lang/String;J)J
.end method

.method public static native nativeAddEmptyRow(JJ)J
.end method

.method private native nativeAddSearchIndex(JJ)V
.end method

.method private native nativeClear(J)V
.end method

.method static native nativeClose(J)V
.end method

.method private native nativeConvertColumnToNotNullable(JJ)V
.end method

.method private native nativeConvertColumnToNullable(JJ)V
.end method

.method public static native nativeFindFirstInt(JJJ)J
.end method

.method public static native nativeFindFirstNull(JJ)J
.end method

.method public static native nativeFindFirstString(JJLjava/lang/String;)J
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetColumnType(JJ)I
.end method

.method private native nativeGetLinkTarget(JJ)J
.end method

.method public static native nativeGetLinkView(JJJ)J
.end method

.method private native nativeGetLong(JJJ)J
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeHasSameSchema(JJ)Z
.end method

.method private native nativeHasSearchIndex(JJ)Z
.end method

.method private native nativeIsColumnNullable(JJ)Z
.end method

.method private native nativeMigratePrimaryKeyTableIfNeeded(JJ)V
.end method

.method private native nativeMoveLastOver(JJ)V
.end method

.method private native nativeRemoveColumn(JJ)V
.end method

.method private native nativeRemoveSearchIndex(JJ)V
.end method

.method public static native nativeSetBoolean(JJJZ)V
.end method

.method public static native nativeSetDouble(JJJD)V
.end method

.method public static native nativeSetLong(JJJJ)V
.end method

.method public static native nativeSetNull(JJJ)V
.end method

.method private native nativeSetPrimaryKey(JJLjava/lang/String;)J
.end method

.method public static native nativeSetString(JJJLjava/lang/String;)V
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeVersion(J)J
.end method

.method private native nativeWhere(J)J
.end method

.method private o()Lio/realm/internal/Table;
    .locals 6

    .prologue
    .line 967
    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Lio/realm/internal/Group;

    move-result-object v1

    .line 968
    if-nez v1, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 980
    :goto_0
    return-object v0

    .line 972
    :cond_0
    const-string v0, "pk"

    invoke-virtual {v1, v0}, Lio/realm/internal/Group;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Lio/realm/internal/Table;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 974
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_table"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    .line 975
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_property"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    goto :goto_0

    .line 977
    :cond_1
    invoke-direct {p0, v1, v0}, Lio/realm/internal/Table;->a(Lio/realm/internal/Group;Lio/realm/internal/Table;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 987
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 988
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1041
    invoke-virtual {p0}, Lio/realm/internal/Table;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no primary key defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private r(J)Z
    .locals 3

    .prologue
    .line 592
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    return-wide v0
.end method

.method public a(JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 1207
    if-nez p3, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J
    .locals 8

    .prologue
    .line 182
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->d(Ljava/lang/String;)V

    .line 183
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    iget-wide v6, p3, Lio/realm/internal/Table;->b:J

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/Table;->nativeAddColumnLink(JILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J
    .locals 7

    .prologue
    .line 162
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->d(Ljava/lang/String;)V

    .line 163
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeAddColumn(JILjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Object;)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, -0x1

    .line 426
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 427
    invoke-direct {p0}, Lio/realm/internal/Table;->q()V

    .line 429
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    .line 430
    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 435
    if-nez p1, :cond_1

    .line 436
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 448
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :pswitch_0
    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "null"

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 442
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1, v8, v9}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v0

    .line 443
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    .line 444
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/UncheckedRow;->c(J)V

    .line 484
    :goto_0
    return-wide v0

    .line 452
    :cond_1
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    .line 481
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :pswitch_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary key value is not a String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p1

    .line 457
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 458
    invoke-static {p1}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 460
    :cond_3
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1, v8, v9}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v0

    .line 461
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    .line 462
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, v2, v3, p1}, Lio/realm/internal/UncheckedRow;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 468
    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 472
    invoke-virtual {p0, v2, v3, v4, v5}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    .line 473
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 475
    :cond_4
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1, v8, v9}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v0

    .line 476
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    .line 477
    invoke-virtual {v6, v2, v3, v4, v5}, Lio/realm/internal/UncheckedRow;->a(JJ)V

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary key value is not a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 452
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/Table;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 201
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v0

    .line 204
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v2, v3, p1, p2}, Lio/realm/internal/Table;->nativeRemoveColumn(JJ)V

    .line 208
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 213
    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lio/realm/internal/Table;->p()V

    goto :goto_0
.end method

.method a(JJ)V
    .locals 5

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->r(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 705
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 708
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v0

    .line 709
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "null"

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(JJJ)V
    .locals 5

    .prologue
    .line 693
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->r(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0, p1, p2, p5, p6}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v0

    .line 695
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 696
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 699
    :cond_0
    return-void
.end method

.method a(JJLjava/lang/String;)V
    .locals 5

    .prologue
    .line 684
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->h(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0, p1, p2, p5}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v0

    .line 686
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 687
    invoke-static {p5}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 690
    :cond_0
    return-void
.end method

.method public a(Lio/realm/internal/Table;)Z
    .locals 4

    .prologue
    .line 1391
    if-nez p1, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    iget-wide v2, p1, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeHasSameSchema(JJ)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)J
    .locals 9

    .prologue
    .line 736
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/Table;->nativeGetLong(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJJ)V
    .locals 9

    .prologue
    .line 851
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 852
    invoke-virtual/range {p0 .. p6}, Lio/realm/internal/Table;->a(JJJ)V

    .line 853
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 854
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 955
    invoke-direct {p0}, Lio/realm/internal/Table;->o()Lio/realm/internal/Table;

    move-result-object v0

    .line 956
    if-nez v0, :cond_0

    .line 957
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary keys are only supported if Table is part of a Group"

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    iget-wide v2, v0, Lio/realm/internal/Table;->b:J

    iget-wide v4, p0, Lio/realm/internal/Table;->b:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeSetPrimaryKey(JJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 960
    return-void
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 272
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeIsColumnNullable(JJ)Z

    move-result v0

    return v0
.end method

.method public c(JJ)J
    .locals 7

    .prologue
    .line 1179
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 321
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeClear(J)V

    .line 322
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 281
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeConvertColumnToNullable(JJ)V

    .line 282
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 110
    iget-object v1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 112
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 117
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/Table;->b:J

    .line 119
    :cond_0
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native createNative()J
.end method

.method public d()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 290
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeConvertColumnToNotNullable(JJ)V

    .line 291
    return-void
.end method

.method public e()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 402
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 403
    invoke-virtual {p0}, Lio/realm/internal/Table;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v0

    .line 405
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 406
    sget-object v3, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v2}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 418
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_0
    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 409
    const-string v0, ""

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 422
    :cond_0
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v0

    return-wide v0

    .line 413
    :pswitch_1
    invoke-virtual {p0, v0, v1, v8, v9}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 414
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x2

    .line 643
    iget-wide v2, p0, Lio/realm/internal/Table;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lio/realm/internal/Table;->f:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 644
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 660
    :cond_1
    :goto_0
    return-wide v0

    .line 646
    :cond_2
    invoke-direct {p0}, Lio/realm/internal/Table;->o()Lio/realm/internal/Table;

    move-result-object v2

    .line 647
    if-eqz v2, :cond_1

    .line 651
    invoke-virtual {p0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v2, v4, v5, v3}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v4

    .line 653
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 654
    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/UncheckedRow;->k(J)Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 660
    :goto_1
    iget-wide v0, p0, Lio/realm/internal/Table;->f:J

    goto :goto_0

    .line 657
    :cond_3
    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    goto :goto_1
.end method

.method public f(J)Lio/realm/RealmFieldType;
    .locals 3

    .prologue
    .line 368
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 124
    iget-object v1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/Table;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget-object v2, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    iget-wide v4, p0, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v4, v5, v0}, Lio/realm/internal/c;->a(JZ)V

    .line 128
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/Table;->b:J

    .line 130
    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(J)V
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 398
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeMoveLastOver(JJ)V

    .line 399
    return-void
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 680
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Lio/realm/internal/Group;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/internal/Group;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/Group;

    .line 1010
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/internal/Table;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Lio/realm/internal/Group;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(J)Z
    .locals 3

    .prologue
    .line 671
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(J)Lio/realm/internal/Table;
    .locals 5

    .prologue
    .line 798
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 799
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetLinkTarget(JJ)J

    move-result-wide v2

    .line 802
    :try_start_0
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    iget-object v4, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/c;Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    invoke-static {v2, v3}, Lio/realm/internal/Table;->nativeClose(J)V

    .line 806
    throw v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/internal/Table;

    if-nez v0, :cond_1

    .line 1028
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/Group;

    iget-boolean v0, v0, Lio/realm/internal/Group;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    .line 1028
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->i()Z

    move-result v0

    goto :goto_0
.end method

.method public j(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->b(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 1035
    invoke-virtual {p0}, Lio/realm/internal/Table;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lio/realm/internal/Table;->r()V

    .line 1038
    :cond_0
    return-void
.end method

.method public k()Lio/realm/internal/TableQuery;
    .locals 4

    .prologue
    .line 1153
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->a()V

    .line 1154
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v2

    .line 1157
    :try_start_0
    new-instance v0, Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-direct {v0, v1, p0, v2, v3}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/c;Lio/realm/internal/Table;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    invoke-static {v2, v3}, Lio/realm/internal/TableQuery;->nativeClose(J)V

    .line 1160
    throw v0
.end method

.method public k(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->c(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lio/realm/internal/CheckedRow;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/c;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/CheckedRow;->a(Lio/realm/internal/c;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1328
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 1377
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported for tables"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(J)V
    .locals 3

    .prologue
    .line 937
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 938
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeAddSearchIndex(JJ)V

    .line 939
    return-void
.end method

.method public n()J
    .locals 2

    .prologue
    .line 1412
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(J)V
    .locals 3

    .prologue
    .line 942
    invoke-virtual {p0}, Lio/realm/internal/Table;->j()V

    .line 943
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeRemoveSearchIndex(JJ)V

    .line 944
    return-void
.end method

.method native nativeGetRowPtr(JJ)J
.end method

.method public o(J)Z
    .locals 3

    .prologue
    .line 1015
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeHasSearchIndex(JJ)Z

    move-result v0

    return v0
.end method

.method public p(J)J
    .locals 1

    .prologue
    .line 1174
    return-wide p1
.end method

.method public q(J)J
    .locals 3

    .prologue
    .line 1220
    iget-wide v0, p0, Lio/realm/internal/Table;->b:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1345
    invoke-virtual {p0}, Lio/realm/internal/Table;->d()J

    move-result-wide v2

    .line 1346
    invoke-virtual {p0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "The Table "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 1354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' field as a PrimaryKey, and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    :cond_1
    const-string v0, "contains "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1358
    const-string v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 1361
    if-eqz v0, :cond_2

    .line 1362
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_2
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    :cond_3
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    const-string v0, " And "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {p0}, Lio/realm/internal/Table;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1370
    const-string v0, " rows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
