.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 182
    return-void

    .line 178
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 179
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 169
    return-void

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 166
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 208
    :cond_0
    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 201
    :cond_0
    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 77
    return-void

    .line 73
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 74
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 48
    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 45
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 103
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 117
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 142
    :cond_0
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 133
    :cond_0
    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteTypeId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 150
    :cond_0
    return-void
.end method
