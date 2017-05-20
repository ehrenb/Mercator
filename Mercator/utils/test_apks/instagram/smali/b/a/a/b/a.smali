.class public abstract Lb/a/a/b/a;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field private final a:Lb/a/a/l;


# direct methods
.method protected constructor <init>(Lb/a/a/l;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 32
    iput-object p1, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/f;Lb/a/a/c;Lb/a/a/h;)Lb/a/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lb/a/a/f;->a(Lb/a/a/c;Lb/a/a/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object p1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {p1}, Lb/a/a/f;->e()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lb/a/a/f;->f()Z

    move-result v1

    .line 117
    invoke-virtual {p1}, Lb/a/a/f;->x()I

    move-result v2

    .line 118
    invoke-virtual {p1}, Lb/a/a/f;->d()I

    move-result v3

    .line 120
    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Lb/a/a/f;->b(I)V

    .line 121
    invoke-virtual {p1, v3}, Lb/a/a/f;->a(I)V

    .line 122
    iget-object v3, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    invoke-virtual {v3, p1}, Lb/a/a/l;->a(Lb/a/a/f;)V

    .line 124
    new-instance p1, Lb/a/a/f;

    invoke-direct {p1, v0, v1, v2}, Lb/a/a/f;-><init>(IZI)V

    .line 125
    invoke-virtual {p1, p2, p3}, Lb/a/a/f;->a(Lb/a/a/c;Lb/a/a/h;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    .line 81
    :try_start_0
    invoke-virtual {p1, p2}, Lb/a/a/f;->a(Lb/a/a/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object p1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p1}, Lb/a/a/f;->e()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lb/a/a/f;->f()Z

    move-result v1

    .line 85
    invoke-virtual {p1}, Lb/a/a/f;->x()I

    move-result v2

    .line 86
    invoke-virtual {p1}, Lb/a/a/f;->d()I

    move-result v3

    .line 88
    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Lb/a/a/f;->b(I)V

    .line 89
    invoke-virtual {p1, v3}, Lb/a/a/f;->a(I)V

    .line 90
    iget-object v3, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    invoke-virtual {v3, p1}, Lb/a/a/l;->a(Lb/a/a/f;)V

    .line 92
    new-instance p1, Lb/a/a/f;

    invoke-direct {p1, v0, v1, v2}, Lb/a/a/f;-><init>(IZI)V

    .line 93
    invoke-virtual {p1, p2}, Lb/a/a/f;->a(Lb/a/a/g;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/f;Lb/a/a/h;)Lb/a/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .line 174
    :try_start_0
    invoke-virtual {p1, p2}, Lb/a/a/f;->a(Lb/a/a/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object p1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {p1}, Lb/a/a/f;->e()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Lb/a/a/f;->f()Z

    move-result v1

    .line 178
    invoke-virtual {p1}, Lb/a/a/f;->x()I

    move-result v2

    .line 179
    invoke-virtual {p1}, Lb/a/a/f;->d()I

    move-result v3

    .line 181
    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Lb/a/a/f;->b(I)V

    .line 182
    invoke-virtual {p1, v3}, Lb/a/a/f;->a(I)V

    .line 183
    iget-object v3, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    invoke-virtual {v3, p1}, Lb/a/a/l;->a(Lb/a/a/f;)V

    .line 185
    new-instance p1, Lb/a/a/f;

    invoke-direct {p1, v0, v1, v2}, Lb/a/a/f;-><init>(IZI)V

    .line 186
    invoke-virtual {p1, p2}, Lb/a/a/f;->a(Lb/a/a/h;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/f;Lb/a/a/h;J)Lb/a/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    .line 144
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Lb/a/a/f;->a(Lb/a/a/h;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object p1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {p1}, Lb/a/a/f;->e()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Lb/a/a/f;->f()Z

    move-result v1

    .line 148
    invoke-virtual {p1}, Lb/a/a/f;->x()I

    move-result v2

    .line 149
    invoke-virtual {p1}, Lb/a/a/f;->d()I

    move-result v3

    .line 151
    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Lb/a/a/f;->b(I)V

    .line 152
    invoke-virtual {p1, v3}, Lb/a/a/f;->a(I)V

    .line 153
    iget-object v3, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    invoke-virtual {v3, p1}, Lb/a/a/l;->a(Lb/a/a/f;)V

    .line 155
    new-instance p1, Lb/a/a/f;

    invoke-direct {p1, v0, v1, v2}, Lb/a/a/f;-><init>(IZI)V

    .line 156
    invoke-virtual {p1, p2, p3, p4}, Lb/a/a/f;->a(Lb/a/a/h;J)V

    goto :goto_0
.end method

.method public a()Lb/a/a/l;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/l;

    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lb/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
