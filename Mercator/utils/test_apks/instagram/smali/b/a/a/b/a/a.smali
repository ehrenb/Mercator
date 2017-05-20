.class public abstract Lb/a/a/b/a/a;
.super Lb/a/a/b/a;
.source "DNSResolverTask.java"


# static fields
.field private static b:Ld/a/b;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lb/a/a/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/a/a;->b:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lb/a/a/b/a;-><init>(Lb/a/a/l;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b/a/a;->a:I

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract a(Lb/a/a/f;)Lb/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Ljava/util/Timer;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0xe1

    .line 49
    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 50
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 52
    :cond_0
    return-void
.end method

.method protected abstract b(Lb/a/a/f;)Lb/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public run()V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lb/a/a/b/a/a;->cancel()Z

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget v0, p0, Lb/a/a/b/a/a;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/a/a/b/a/a;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    .line 65
    sget-object v0, Lb/a/a/b/a/a;->b:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lb/a/a/b/a/a;->b:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run() JmDNS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 68
    :cond_3
    new-instance v0, Lb/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/f;-><init>(I)V

    .line 69
    invoke-virtual {p0, v0}, Lb/a/a/b/a/a;->a(Lb/a/a/f;)Lb/a/a/f;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/l;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {p0, v0}, Lb/a/a/b/a/a;->b(Lb/a/a/f;)Lb/a/a/f;

    move-result-object v0

    .line 73
    :cond_4
    invoke-virtual {v0}, Lb/a/a/f;->v()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/a/l;->a(Lb/a/a/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lb/a/a/b/a/a;->b:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p0}, Lb/a/a/b/a/a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->z()V

    goto :goto_0

    .line 78
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lb/a/a/b/a/a;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/a/a/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/a/a/b/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
