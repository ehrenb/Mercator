.class public Lb/a/a/b/b;
.super Lb/a/a/b/a;
.source "RecordReaper.java"


# static fields
.field static a:Ld/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lb/a/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/b;->a:Ld/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lb/a/a/b/a;-><init>(Lb/a/a/l;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Timer;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x2710

    .line 42
    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 43
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 45
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordReaper("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

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
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lb/a/a/b/b;->a:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lb/a/a/b/b;->a:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run() JmDNS reaping cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->a(Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-virtual {p0}, Lb/a/a/b/b;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->B()V

    goto :goto_0
.end method
