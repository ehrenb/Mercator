.class public Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return-void
.end method

.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 108
    :cond_2
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    if-eqz v2, :cond_3

    .line 111
    check-cast p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    iget v2, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 112
    iget v3, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 114
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 101
    return-void
.end method
