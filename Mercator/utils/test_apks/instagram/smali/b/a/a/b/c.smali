.class public Lb/a/a/b/c;
.super Lb/a/a/b/a;
.source "Responder.java"


# static fields
.field static a:Ld/a/b;


# instance fields
.field private final b:Lb/a/a/c;

.field private final c:Ljava/net/InetAddress;

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lb/a/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/c;->a:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;Lb/a/a/c;Ljava/net/InetAddress;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lb/a/a/b/a;-><init>(Lb/a/a/l;)V

    .line 46
    iput-object p2, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    .line 47
    iput-object p3, p0, Lb/a/a/b/c;->c:Ljava/net/InetAddress;

    .line 48
    iput p4, p0, Lb/a/a/b/c;->d:I

    .line 49
    sget v0, Lb/a/a/a/a;->a:I

    if-eq p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lb/a/a/b/c;->e:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Timer;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x1

    .line 84
    iget-object v2, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v2}, Lb/a/a/c;->g()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 85
    sget-object v3, Lb/a/a/b/c;->a:Ld/a/b;

    invoke-interface {v3}, Ld/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    sget-object v3, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start() question="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/a/a/g;->a(Lb/a/a/l;)Z

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 93
    :cond_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0}, Lb/a/a/c;->r()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 94
    :goto_0
    if-gez v0, :cond_3

    move v0, v1

    .line 97
    :cond_3
    sget-object v1, Lb/a/a/b/c;->a:Ld/a/b;

    invoke-interface {v1}, Ld/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    sget-object v1, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "start() Responder chosen delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/l;->r()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/l;->s()Z

    move-result v1

    if-nez v1, :cond_5

    .line 101
    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 103
    :cond_5
    return-void

    .line 93
    :cond_6
    invoke-static {}, Lb/a/a/l;->F()Ljava/util/Random;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object v2, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v2}, Lb/a/a/c;->b()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 107
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0, v1}, Lb/a/a/l;->b(Lb/a/a/c;)V

    .line 110
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 111
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0}, Lb/a/a/c;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 117
    sget-object v4, Lb/a/a/b/c;->a:Ld/a/b;

    invoke-interface {v4}, Ld/a/b;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    sget-object v4, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "run() JmDNS responding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-boolean v4, p0, Lb/a/a/b/c;->e:Z

    if-eqz v4, :cond_1

    .line 123
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lb/a/a/g;->a(Lb/a/a/l;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "run() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->close()V

    .line 169
    :cond_2
    :goto_1
    return-void

    .line 130
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    iget-object v0, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0}, Lb/a/a/c;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 132
    invoke-virtual {v0, v4, v5}, Lb/a/a/h;->c(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lb/a/a/b/c;->a:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ld/a/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 141
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    sget-object v0, Lb/a/a/b/c;->a:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    sget-object v0, Lb/a/a/b/c;->a:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "run() JmDNS responding"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 145
    :cond_6
    new-instance v1, Lb/a/a/f;

    const v4, 0x8400

    iget-boolean v0, p0, Lb/a/a/b/c;->e:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    iget-object v5, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v5}, Lb/a/a/c;->c()I

    move-result v5

    invoke-direct {v1, v4, v0, v5}, Lb/a/a/f;-><init>(IZI)V

    .line 146
    iget-boolean v0, p0, Lb/a/a/b/c;->e:Z

    if-eqz v0, :cond_7

    .line 147
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lb/a/a/b/c;->c:Ljava/net/InetAddress;

    iget v5, p0, Lb/a/a/b/c;->d:I

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Lb/a/a/f;->a(Ljava/net/InetSocketAddress;)V

    .line 149
    :cond_7
    iget-object v0, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0}, Lb/a/a/c;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/f;->a(I)V

    .line 150
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/g;

    .line 151
    if-eqz v0, :cond_c

    .line 152
    invoke-virtual {p0, v1, v0}, Lb/a/a/b/c;->a(Lb/a/a/f;Lb/a/a/g;)Lb/a/a/f;

    move-result-object v0

    :goto_5
    move-object v1, v0

    .line 154
    goto :goto_4

    .line 145
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 155
    :cond_9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/h;

    .line 156
    if-eqz v0, :cond_b

    .line 157
    iget-object v3, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {p0, v1, v3, v0}, Lb/a/a/b/c;->a(Lb/a/a/f;Lb/a/a/c;Lb/a/a/h;)Lb/a/a/f;

    move-result-object v0

    :goto_7
    move-object v1, v0

    .line 160
    goto :goto_6

    .line 161
    :cond_a
    invoke-virtual {v1}, Lb/a/a/f;->v()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/a/l;->a(Lb/a/a/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto :goto_7

    :cond_c
    move-object v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/a/a/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b/c;->b:Lb/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
