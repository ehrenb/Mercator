.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;


# instance fields
.field private final _disabled:I

.field private final _enabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 292
    iput p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 293
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 2

    .prologue
    .line 300
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 305
    .line 306
    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 307
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v2, v4

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 311
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    return-object v0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    if-ne p1, p0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 378
    :cond_3
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 379
    iget v2, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    .line 359
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 360
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    :goto_0
    return-object v0

    .line 362
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    add-int/2addr v0, v1

    return v0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 4

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object p0

    .line 321
    :cond_1
    iget v0, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 322
    iget v1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 323
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 326
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-nez v2, :cond_3

    move-object p0, p1

    .line 327
    goto :goto_0

    .line 330
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 331
    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 334
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v2, v1, :cond_4

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-eq v0, v1, :cond_0

    .line 338
    :cond_4
    new-instance p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    goto :goto_0
.end method
