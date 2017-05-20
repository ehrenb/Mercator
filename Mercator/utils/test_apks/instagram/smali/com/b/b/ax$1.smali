.class final Lcom/b/b/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/cz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ax;


# direct methods
.method constructor <init>(Lcom/b/b/ax;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/b/b/ax$1;->a:Lcom/b/b/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 4

    .prologue
    .line 76
    .line 1079
    iget-object v0, p0, Lcom/b/b/ax$1;->a:Lcom/b/b/ax;

    invoke-static {v0}, Lcom/b/b/ax;->a(Lcom/b/b/ax;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/b/ax$1;->a:Lcom/b/b/ax;

    invoke-static {v0}, Lcom/b/b/ax;->a(Lcom/b/b/ax;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1080
    const/4 v0, 0x4

    invoke-static {}, Lcom/b/b/ax;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/b/b/ax$1;->a:Lcom/b/b/ax;

    invoke-static {v0}, Lcom/b/b/ax;->b(Lcom/b/b/ax;)V

    .line 76
    :cond_0
    return-void
.end method
