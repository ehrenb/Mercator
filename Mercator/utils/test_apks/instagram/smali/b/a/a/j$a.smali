.class public final Lb/a/a/j$a;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"

# interfaces
.implements Lb/a/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/j$a$a;
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/l;

.field private final b:Ljava/util/Timer;

.field private final c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lb/a/a/l;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    .line 277
    new-instance v0, Lb/a/a/j$a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-virtual {v2}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lb/a/a/j$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    .line 278
    new-instance v0, Lb/a/a/j$a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-virtual {v2}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").State.Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lb/a/a/j$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    .line 279
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/c;Ljava/net/InetAddress;I)V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lb/a/a/b/c;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1, p1, p2, p3}, Lb/a/a/b/c;-><init>(Lb/a/a/l;Lb/a/a/c;Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/c;->a(Ljava/util/Timer;)V

    .line 396
    return-void
.end method

.method public a(Lb/a/a/q;)V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lb/a/a/b/a/b;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1, p1}, Lb/a/a/b/a/b;-><init>(Lb/a/a/l;Lb/a/a/q;)V

    iget-object v1, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/a/b;->a(Ljava/util/Timer;)V

    .line 369
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 386
    new-instance v0, Lb/a/a/b/a/c;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1, p1}, Lb/a/a/b/a/c;-><init>(Lb/a/a/l;Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/a/c;->a(Ljava/util/Timer;)V

    .line 387
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 288
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 297
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 306
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 315
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lb/a/a/b/b/d;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1}, Lb/a/a/b/b/d;-><init>(Lb/a/a/l;)V

    iget-object v1, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/b/d;->a(Ljava/util/Timer;)V

    .line 324
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lb/a/a/b/b/a;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1}, Lb/a/a/b/b/a;-><init>(Lb/a/a/l;)V

    iget-object v1, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/b/a;->a(Ljava/util/Timer;)V

    .line 333
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Lb/a/a/b/b/e;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1}, Lb/a/a/b/b/e;-><init>(Lb/a/a/l;)V

    iget-object v1, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/b/e;->a(Ljava/util/Timer;)V

    .line 342
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lb/a/a/b/b/b;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1}, Lb/a/a/b/b/b;-><init>(Lb/a/a/l;)V

    iget-object v1, p0, Lb/a/a/j$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/b/b;->a(Ljava/util/Timer;)V

    .line 351
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lb/a/a/b/b;

    iget-object v1, p0, Lb/a/a/j$a;->a:Lb/a/a/l;

    invoke-direct {v0, v1}, Lb/a/a/b/b;-><init>(Lb/a/a/l;)V

    iget-object v1, p0, Lb/a/a/j$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lb/a/a/b/b;->a(Ljava/util/Timer;)V

    .line 360
    return-void
.end method
