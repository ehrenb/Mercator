.class public Lb/a/a/f$a;
.super Ljava/io/ByteArrayOutputStream;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lb/a/a/f;

.field private final b:I


# direct methods
.method constructor <init>(ILb/a/a/f;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/a/a/f$a;-><init>(ILb/a/a/f;I)V

    .line 38
    return-void
.end method

.method constructor <init>(ILb/a/a/f;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 42
    iput-object p2, p0, Lb/a/a/f$a;->a:Lb/a/a/f;

    .line 43
    iput p3, p0, Lb/a/a/f$a;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 47
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->write(I)V

    .line 48
    return-void
.end method

.method a(Lb/a/a/g;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lb/a/a/g;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->b(I)V

    .line 152
    invoke-virtual {p1}, Lb/a/a/g;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->b(I)V

    .line 153
    return-void
.end method

.method a(Lb/a/a/h;J)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1}, Lb/a/a/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lb/a/a/h;->e()Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->b(I)V

    .line 158
    invoke-virtual {p1}, Lb/a/a/h;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d;->a()I

    move-result v2

    invoke-virtual {p1}, Lb/a/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/f$a;->a:Lb/a/a/f;

    invoke-virtual {v0}, Lb/a/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->b(I)V

    .line 159
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lb/a/a/h;->s()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lb/a/a/f$a;->c(I)V

    .line 162
    new-instance v0, Lb/a/a/f$a;

    const/16 v2, 0x200

    iget-object v3, p0, Lb/a/a/f$a;->a:Lb/a/a/f;

    iget v4, p0, Lb/a/a/f$a;->b:I

    invoke-virtual {p0}, Lb/a/a/f$a;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lb/a/a/f$a;-><init>(ILb/a/a/f;I)V

    .line 163
    invoke-virtual {p1, v0}, Lb/a/a/h;->a(Lb/a/a/f$a;)V

    .line 164
    invoke-virtual {v0}, Lb/a/a/f$a;->toByteArray()[B

    move-result-object v0

    .line 166
    array-length v2, v0

    invoke-virtual {p0, v2}, Lb/a/a/f$a;->b(I)V

    .line 167
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lb/a/a/f$a;->write([BII)V

    .line 168
    return-void

    :cond_0
    move v0, v1

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1, p2, p3}, Lb/a/a/h;->b(J)I

    move-result v0

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/16 v6, 0x7ff

    const/16 v5, 0x7f

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 80
    move v2, v1

    move v0, v1

    .line 81
    :goto_0
    if-ge v2, p3, :cond_2

    .line 82
    add-int v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 83
    if-lt v3, v4, :cond_0

    if-gt v3, v5, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    if-le v3, v6, :cond_1

    .line 87
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0, v0}, Lb/a/a/f$a;->a(I)V

    move v0, v1

    .line 96
    :goto_2
    if-ge v0, p3, :cond_5

    .line 97
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 98
    if-lt v1, v4, :cond_3

    if-gt v1, v5, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lb/a/a/f$a;->a(I)V

    .line 96
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_3
    if-le v1, v6, :cond_4

    .line 102
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lb/a/a/f$a;->a(I)V

    .line 103
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lb/a/a/f$a;->a(I)V

    .line 104
    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lb/a/a/f$a;->a(I)V

    goto :goto_3

    .line 106
    :cond_4
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lb/a/a/f$a;->a(I)V

    .line 107
    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lb/a/a/f$a;->a(I)V

    goto :goto_3

    .line 111
    :cond_5
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    .line 120
    :cond_0
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 121
    if-gez v0, :cond_4

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .line 124
    :goto_1
    if-gtz v1, :cond_1

    .line 125
    invoke-virtual {p0, v5}, Lb/a/a/f$a;->a(I)V

    .line 135
    :goto_2
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 129
    if-eqz p2, :cond_3

    sget-boolean v0, Lb/a/a/f;->a:Z

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lb/a/a/f$a;->a:Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 131
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    shr-int/lit8 v1, v0, 0x8

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lb/a/a/f$a;->a(I)V

    .line 134
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->a(I)V

    goto :goto_2

    .line 137
    :cond_2
    iget-object v0, p0, Lb/a/a/f$a;->a:Lb/a/a/f;

    iget-object v0, v0, Lb/a/a/f;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lb/a/a/f$a;->size()I

    move-result v3

    iget v4, p0, Lb/a/a/f$a;->b:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v5, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;II)V

    .line 142
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v5, v0}, Lb/a/a/f$a;->a(Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method a([BII)V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 64
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lb/a/a/f$a;->a(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 69
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->a(I)V

    .line 70
    invoke-virtual {p0, p1}, Lb/a/a/f$a;->a(I)V

    .line 71
    return-void
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 74
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lb/a/a/f$a;->b(I)V

    .line 75
    invoke-virtual {p0, p1}, Lb/a/a/f$a;->b(I)V

    .line 76
    return-void
.end method
