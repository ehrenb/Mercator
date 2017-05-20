.class final Lrx/c/c/b$a;
.super Lrx/g$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/c/e/l;

.field private final b:Lrx/j/b;

.field private final c:Lrx/c/e/l;

.field private final d:Lrx/c/c/b$c;


# direct methods
.method constructor <init>(Lrx/c/c/b$c;)V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Lrx/g$a;-><init>()V

    .line 140
    new-instance v0, Lrx/c/e/l;

    invoke-direct {v0}, Lrx/c/e/l;-><init>()V

    iput-object v0, p0, Lrx/c/c/b$a;->a:Lrx/c/e/l;

    .line 141
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/c/c/b$a;->b:Lrx/j/b;

    .line 142
    new-instance v0, Lrx/c/e/l;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/k;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/c/c/b$a;->a:Lrx/c/e/l;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/c/c/b$a;->b:Lrx/j/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/c/e/l;-><init>([Lrx/k;)V

    iput-object v0, p0, Lrx/c/c/b$a;->c:Lrx/c/e/l;

    .line 146
    iput-object p1, p0, Lrx/c/c/b$a;->d:Lrx/c/c/b$c;

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lrx/c/c/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/c/c/b$a;->d:Lrx/c/c/b$c;

    new-instance v1, Lrx/c/c/b$a$1;

    invoke-direct {v1, p0, p1}, Lrx/c/c/b$a$1;-><init>(Lrx/c/c/b$a;Lrx/b/a;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/c/c/b$a;->a:Lrx/c/e/l;

    invoke-virtual/range {v0 .. v5}, Lrx/c/c/b$c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/c/e/l;)Lrx/c/c/g;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p0}, Lrx/c/c/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/c/c/b$a;->d:Lrx/c/c/b$c;

    new-instance v1, Lrx/c/c/b$a$2;

    invoke-direct {v1, p0, p1}, Lrx/c/c/b$a$2;-><init>(Lrx/c/c/b$a;Lrx/b/a;)V

    iget-object v5, p0, Lrx/c/c/b$a;->b:Lrx/j/b;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/c/c/b$c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/j/b;)Lrx/c/c/g;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lrx/c/c/b$a;->c:Lrx/c/e/l;

    invoke-virtual {v0}, Lrx/c/e/l;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lrx/c/c/b$a;->c:Lrx/c/e/l;

    invoke-virtual {v0}, Lrx/c/e/l;->unsubscribe()V

    .line 153
    return-void
.end method
