.class public Lcom/liulishuo/filedownloader/message/d;
.super Ljava/lang/Object;
.source "MessageSnapshotTaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BLcom/liulishuo/filedownloader/model/a;Lcom/liulishuo/filedownloader/services/i;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v1

    .line 105
    const/4 v0, -0x4

    if-ne p0, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "please use #catchWarn instead %d"

    new-array v3, v5, [Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 173
    :pswitch_0
    const-string v0, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 175
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    .line 174
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-class v0, Lcom/liulishuo/filedownloader/message/d;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 187
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 188
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    move-object v0, v2

    .line 196
    :goto_1
    return-object v0

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;

    .line 114
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(IJJ)V

    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;

    .line 117
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(III)V

    goto :goto_1

    .line 121
    :pswitch_2
    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;-><init>(I)V

    goto :goto_1

    .line 124
    :pswitch_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->l()Ljava/lang/String;

    move-result-object v6

    .line 126
    :goto_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;

    .line 128
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 130
    :cond_3
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;

    .line 131
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->i()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :pswitch_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;

    .line 137
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;-><init>(IJ)V

    goto :goto_1

    .line 139
    :cond_4
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;

    .line 140
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;-><init>(II)V

    goto :goto_1

    .line 144
    :pswitch_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    .line 146
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    goto/16 :goto_1

    .line 148
    :cond_5
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    .line 149
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->h()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v4, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    goto/16 :goto_1

    .line 153
    :pswitch_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;

    .line 155
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->e()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;-><init>(IJLjava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 157
    :cond_6
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;

    .line 158
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->e()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;-><init>(IILjava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 163
    :pswitch_7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 165
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 167
    :cond_7
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 168
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 183
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_9
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 191
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->g()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v2, v1, v3, v0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static a(IJJZ)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 7

    .prologue
    .line 56
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 57
    if-eqz p5, :cond_0

    .line 58
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(IJJ)V

    .line 66
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(IJJ)V

    goto :goto_0

    .line 63
    :cond_1
    if-eqz p5, :cond_2

    .line 64
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(III)V

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(III)V

    goto :goto_0
.end method

.method public static a(ILjava/io/File;Z)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 39
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 40
    if-eqz p2, :cond_0

    .line 41
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZJ)V

    .line 50
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    goto :goto_0

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;

    long-to-int v1, v2

    invoke-direct {v0, p0, v4, v1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZI)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    long-to-int v1, v2

    invoke-direct {v0, p0, v4, v1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    goto :goto_0
.end method

.method public static a(Lcom/liulishuo/filedownloader/a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5

    .prologue
    .line 72
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v1

    .line 74
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v1

    .line 77
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->m()I

    move-result v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "take block completed snapshot, must has already be completed. %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 94
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-object v0
.end method

.method public static b(Lcom/liulishuo/filedownloader/a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 6

    .prologue
    .line 82
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v1

    .line 84
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->n()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->p()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;-><init>(IJJ)V

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v1

    .line 87
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->m()I

    move-result v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->o()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;-><init>(III)V

    goto :goto_0
.end method
