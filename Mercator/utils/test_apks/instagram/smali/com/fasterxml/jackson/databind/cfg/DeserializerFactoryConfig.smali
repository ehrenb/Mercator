.class public Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.super Ljava/lang/Object;
.source "DeserializerFactoryConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

.field protected static final NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;


# instance fields
.field protected final _abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

.field protected final _additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

.field protected final _valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/Deserializers;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 18
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 19
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 20
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    .line 72
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 86
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 88
    if-nez p3, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 89
    if-nez p4, :cond_3

    sget-object p4, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    :cond_3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 90
    if-nez p5, :cond_4

    sget-object p5, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    :cond_4
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 91
    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
