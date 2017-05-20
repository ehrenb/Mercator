.class public Lb/a/a/c$a;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static b:Ld/a/b;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lb/a/a/c$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/c$a;->b:Ld/a/b;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lb/a/a/c$a;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/c$a;->a:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lb/a/a/c$a;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(I)[B
    .locals 2

    .prologue
    .line 71
    new-array v0, p1, [B

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lb/a/a/c$a;->read([BII)I

    .line 73
    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v0

    .line 80
    shr-int/lit8 v3, v0, 0x4

    packed-switch v3, :pswitch_data_0

    .line 105
    :pswitch_0
    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 109
    :goto_1
    :pswitch_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :pswitch_2
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v0, v3

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_1

    .line 99
    :pswitch_3
    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v0, v3

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c()I
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lb/a/a/c$a;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lb/a/a/c$a;->b()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v0

    .line 124
    if-nez v0, :cond_1

    .line 160
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 161
    iget-object v5, p0, Lb/a/a/c$a;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_1
    sget-object v4, Lb/a/a/c$1;->a:[I

    invoke-static {v0}, Lb/a/a/a/b;->a(I)Lb/a/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/a/a/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 157
    sget-object v4, Lb/a/a/c$a;->b:Ld/a/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported dns label type: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v0, v0, 0xc0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ld/a/b;->c(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    move v1, v0

    .line 159
    goto :goto_0

    .line 130
    :pswitch_0
    iget v4, p0, Lb/a/a/c$a;->pos:I

    add-int/lit8 v4, v4, -0x1

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lb/a/a/c$a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 136
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 137
    goto :goto_2

    .line 139
    :pswitch_1
    invoke-static {v0}, Lb/a/a/a/b;->b(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v1

    or-int/2addr v1, v0

    .line 140
    iget-object v0, p0, Lb/a/a/c$a;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    if-nez v0, :cond_5

    .line 142
    sget-object v0, Lb/a/a/c$a;->b:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad domain name: possible circular name detected. Bad offset: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " at 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lb/a/a/c$a;->pos:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 143
    const-string v0, ""

    move-object v1, v0

    .line 145
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 149
    :cond_3
    const/4 v0, 0x1

    .line 150
    goto/16 :goto_2

    .line 153
    :pswitch_2
    sget-object v0, Lb/a/a/c$a;->b:Ld/a/b;

    const-string v4, "Extended label are not currently supported."

    invoke-interface {v0, v4}, Ld/a/b;->b(Ljava/lang/String;)V

    move v0, v1

    .line 154
    goto/16 :goto_2

    .line 163
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v1, v0

    goto :goto_4

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lb/a/a/c$a;->a()I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Lb/a/a/c$a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
