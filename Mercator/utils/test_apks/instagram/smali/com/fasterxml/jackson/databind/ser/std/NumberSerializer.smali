.class public Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "NumberSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;


# instance fields
.field protected final _isInt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    const-class v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 37
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->_isInt:Z

    .line 38
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 63
    :goto_0
    return-void

    .line 46
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    goto :goto_0

    .line 55
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 57
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 58
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
