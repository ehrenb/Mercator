.class public Lio/realm/internal/async/c;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/async/c$b;,
        Lio/realm/internal/async/c$a;,
        Lio/realm/internal/async/c$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lio/realm/x;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/c$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/realm/internal/async/c$b$c;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method private constructor <init>(ILio/realm/x;Ljava/util/List;Lio/realm/internal/async/c$b$c;Ljava/lang/ref/WeakReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/x;",
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/c$b$c;",
            ">;",
            "Lio/realm/internal/async/c$b$c;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lio/realm/internal/async/c;->a:I

    .line 59
    iput-object p2, p0, Lio/realm/internal/async/c;->b:Lio/realm/x;

    .line 60
    iput-object p3, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    .line 62
    iput-object p5, p0, Lio/realm/internal/async/c;->e:Ljava/lang/ref/WeakReference;

    .line 63
    iput p6, p0, Lio/realm/internal/async/c;->f:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(ILio/realm/x;Ljava/util/List;Lio/realm/internal/async/c$b$c;Ljava/lang/ref/WeakReference;ILio/realm/internal/async/c$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lio/realm/internal/async/c;-><init>(ILio/realm/x;Ljava/util/List;Lio/realm/internal/async/c$b$c;Ljava/lang/ref/WeakReference;I)V

    return-void
.end method

.method public static a()Lio/realm/internal/async/c$b$d;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lio/realm/internal/async/c$b$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/async/c$b$f;-><init>(Lio/realm/internal/async/c$1;)V

    return-object v0
.end method

.method private a(Lio/realm/internal/async/c$c;[J)V
    .locals 8

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/async/c$b$c;

    .line 183
    iget-object v3, p1, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lio/realm/internal/async/c$b$c;->a:Ljava/lang/ref/WeakReference;

    add-int/lit8 v0, v1, 0x1

    aget-wide v6, p2, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lio/realm/internal/SharedGroup;Lio/realm/internal/async/c$c;)Z
    .locals 6

    .prologue
    .line 188
    invoke-direct {p0}, Lio/realm/internal/async/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    iget-object v0, v0, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget v0, v0, Lio/realm/internal/async/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    iget-object v2, v2, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget v2, v2, Lio/realm/internal/async/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    invoke-virtual {p1}, Lio/realm/internal/SharedGroup;->h()J

    move-result-wide v0

    iget-object v2, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    iget-wide v2, v2, Lio/realm/internal/async/c$b$c;->b:J

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeFindWithHandover(JJJ)J

    move-result-wide v0

    .line 194
    iget-object v2, p2, Lio/realm/internal/async/c$c;->b:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    iget-object v3, v3, Lio/realm/internal/async/c$b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lio/realm/internal/async/c;->d:Lio/realm/internal/async/c$b$c;

    iget-wide v0, v0, Lio/realm/internal/async/c$b$c;->b:J

    invoke-static {v0, v1}, Lio/realm/internal/TableQuery;->nativeCloseQueryHandover(J)V

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private b()Lio/realm/internal/async/c$a;
    .locals 12

    .prologue
    .line 124
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 125
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    .line 126
    iget-object v1, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [[J

    .line 127
    iget-object v1, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [[Z

    .line 129
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lio/realm/internal/async/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/async/c$b$c;

    .line 131
    iget-object v4, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget v4, v4, Lio/realm/internal/async/a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 166
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget v1, v1, Lio/realm/internal/async/a;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_1
    iget-wide v4, v1, Lio/realm/internal/async/c$b$c;->b:J

    aput-wide v4, v3, v2

    .line 134
    aget-object v1, v0, v2

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v4

    .line 135
    aget-object v1, v0, v2

    const/4 v4, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v4

    .line 136
    aget-object v1, v0, v2

    const/4 v4, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v1, v4

    .line 137
    aget-object v1, v0, v2

    const/4 v4, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v1, v4

    .line 168
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 169
    goto :goto_0

    .line 141
    :pswitch_2
    iget-wide v4, v1, Lio/realm/internal/async/c$b$c;->b:J

    aput-wide v4, v3, v2

    .line 142
    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x4

    aput-wide v10, v4, v5

    .line 143
    aget-object v4, v0, v2

    const/4 v5, 0x1

    iget-object v1, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget-wide v10, v1, Lio/realm/internal/async/a;->b:J

    aput-wide v10, v4, v5

    goto :goto_1

    .line 147
    :pswitch_3
    iget-wide v4, v1, Lio/realm/internal/async/c$b$c;->b:J

    aput-wide v4, v3, v2

    .line 148
    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x1

    aput-wide v10, v4, v5

    .line 149
    aget-object v4, v0, v2

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    .line 150
    aget-object v4, v0, v2

    const/4 v5, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    .line 151
    aget-object v4, v0, v2

    const/4 v5, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    .line 152
    aget-object v4, v0, v2

    const/4 v5, 0x4

    iget-object v9, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget-wide v10, v9, Lio/realm/internal/async/a;->b:J

    aput-wide v10, v4, v5

    .line 153
    aget-object v9, v0, v2

    const/4 v10, 0x5

    iget-object v1, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget-object v1, v1, Lio/realm/internal/async/a;->c:Lio/realm/ao;

    invoke-virtual {v1}, Lio/realm/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    :goto_2
    aput-wide v4, v9, v10

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 157
    :pswitch_4
    iget-wide v4, v1, Lio/realm/internal/async/c$b$c;->b:J

    aput-wide v4, v3, v2

    .line 158
    aget-object v4, v0, v2

    const/4 v5, 0x0

    const-wide/16 v10, 0x2

    aput-wide v10, v4, v5

    .line 159
    aget-object v4, v0, v2

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    .line 160
    aget-object v4, v0, v2

    const/4 v5, 0x2

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    .line 161
    aget-object v4, v0, v2

    const/4 v5, 0x3

    const-wide/16 v10, -0x1

    aput-wide v10, v4, v5

    .line 162
    iget-object v4, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget-object v4, v4, Lio/realm/internal/async/a;->d:[J

    aput-object v4, v6, v2

    .line 163
    iget-object v1, v1, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    iget-object v1, v1, Lio/realm/internal/async/a;->e:[Lio/realm/ao;

    invoke-static {v1}, Lio/realm/internal/TableQuery;->a([Lio/realm/ao;)[Z

    move-result-object v1

    aput-object v1, v7, v2

    goto/16 :goto_1

    .line 170
    :cond_1
    new-instance v1, Lio/realm/internal/async/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/realm/internal/async/c$a;-><init>(Lio/realm/internal/async/c$1;)V

    .line 172
    iput-object v3, v1, Lio/realm/internal/async/c$a;->a:[J

    .line 173
    iput-object v6, v1, Lio/realm/internal/async/c$a;->c:[[J

    .line 174
    iput-object v7, v1, Lio/realm/internal/async/c$a;->d:[[Z

    .line 175
    iput-object v0, v1, Lio/realm/internal/async/c$a;->b:[[J

    .line 177
    return-object v1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 72
    const/4 v0, 0x0

    .line 74
    :try_start_0
    new-instance v6, Lio/realm/internal/SharedGroup;

    iget-object v1, p0, Lio/realm/internal/async/c;->b:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lio/realm/internal/async/c;->b:Lio/realm/x;

    .line 76
    invoke-virtual {v3}, Lio/realm/x;->g()Lio/realm/internal/SharedGroup$a;

    move-result-object v3

    iget-object v4, p0, Lio/realm/internal/async/c;->b:Lio/realm/x;

    .line 77
    invoke-virtual {v4}, Lio/realm/x;->c()[B

    move-result-object v4

    invoke-direct {v6, v1, v2, v3, v4}, Lio/realm/internal/SharedGroup;-><init>(Ljava/lang/String;ZLio/realm/internal/SharedGroup$a;[B)V
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget v0, p0, Lio/realm/internal/async/c;->a:I

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lio/realm/internal/async/c$c;->a()Lio/realm/internal/async/c$c;

    move-result-object v8

    .line 83
    invoke-direct {p0}, Lio/realm/internal/async/c;->b()Lio/realm/internal/async/c$a;

    move-result-object v5

    .line 84
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->h()J

    move-result-wide v0

    iget-object v2, v5, Lio/realm/internal/async/c$a;->a:[J

    iget-object v3, v5, Lio/realm/internal/async/c$a;->b:[[J

    iget-object v4, v5, Lio/realm/internal/async/c$a;->c:[[J

    iget-object v5, v5, Lio/realm/internal/async/c$a;->d:[[Z

    invoke-static/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeBatchUpdateQueries(J[J[[J[[J[[Z)[J

    move-result-object v0

    .line 89
    invoke-direct {p0, v8, v0}, Lio/realm/internal/async/c;->a(Lio/realm/internal/async/c$c;[J)V

    .line 91
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->i()Lio/realm/internal/SharedGroup$b;

    move-result-object v0

    iput-object v0, v8, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;

    move v1, v7

    move-object v2, v8

    .line 99
    :goto_0
    iget-object v0, p0, Lio/realm/internal/async/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 100
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/realm/internal/async/c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lio/realm/internal/async/c;->a(Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lio/realm/internal/async/c;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :cond_0
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->close()V

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    :try_start_2
    invoke-static {}, Lio/realm/internal/async/c$c;->b()Lio/realm/internal/async/c$c;

    move-result-object v1

    .line 95
    invoke-direct {p0, v6, v1}, Lio/realm/internal/async/c;->a(Lio/realm/internal/SharedGroup;Lio/realm/internal/async/c$c;)Z

    move-result v0

    .line 96
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->i()Lio/realm/internal/SharedGroup$b;

    move-result-object v2

    iput-object v2, v1, Lio/realm/internal/async/c$c;->c:Lio/realm/internal/SharedGroup$b;
    :try_end_2
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 106
    :goto_2
    :try_start_3
    const-string v1, "Query update task could not complete due to a BadVersionException. Retry is scheduled by a REALM_CHANGED event."

    invoke-static {v1}, Lio/realm/internal/b/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->close()V

    goto :goto_1

    .line 109
    :catch_1
    move-exception v1

    move-object v6, v0

    .line 110
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lio/realm/internal/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    iget-object v0, p0, Lio/realm/internal/async/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 112
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    const v2, 0x6197ecb

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :cond_3
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->close()V

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_4
    if-eqz v6, :cond_4

    .line 118
    invoke-virtual {v6}, Lio/realm/internal/SharedGroup;->close()V

    :cond_4
    throw v0

    .line 117
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    .line 109
    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 104
    :catch_3
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method
