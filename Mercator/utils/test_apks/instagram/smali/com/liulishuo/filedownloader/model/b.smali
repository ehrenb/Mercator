.class public Lcom/liulishuo/filedownloader/model/b;
.super Ljava/lang/Object;
.source "FileDownloadStatus.java"


# direct methods
.method public static a(I)Z
    .locals 1

    .prologue
    .line 128
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    if-ne p0, p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    if-lt p0, v1, :cond_2

    const/4 v2, 0x6

    if-gt p0, v2, :cond_2

    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    const/16 v2, 0xb

    if-le p1, v2, :cond_0

    .line 149
    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 196
    goto :goto_0

    .line 151
    :pswitch_2
    packed-switch p1, :pswitch_data_1

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    move v0, v1

    .line 163
    goto :goto_0

    .line 167
    :pswitch_4
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 173
    goto :goto_0

    .line 176
    :pswitch_5
    packed-switch p1, :pswitch_data_3

    :pswitch_6
    move v0, v1

    .line 183
    goto :goto_0

    .line 187
    :pswitch_7
    sparse-switch p1, :sswitch_data_1

    move v0, v1

    .line 192
    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_3
    .end packed-switch

    .line 151
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 158
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 176
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch

    .line 187
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Lcom/liulishuo/filedownloader/a;)Z
    .locals 2

    .prologue
    .line 276
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->r()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->r()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 132
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    if-ne p0, p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-static {p0}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 215
    goto :goto_0

    .line 218
    :cond_3
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 220
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 222
    goto :goto_0

    .line 228
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 230
    goto :goto_0

    .line 235
    :pswitch_5
    packed-switch p1, :pswitch_data_3

    :pswitch_6
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 239
    goto :goto_0

    .line 244
    :pswitch_8
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 246
    goto :goto_0

    .line 252
    :pswitch_a
    packed-switch p1, :pswitch_data_5

    :pswitch_b
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 255
    goto :goto_0

    .line 261
    :pswitch_d
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 265
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 220
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch

    .line 228
    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_4
    .end packed-switch

    .line 235
    :pswitch_data_3
    .packed-switch -0x4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 244
    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch

    .line 252
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 261
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
