.class final Lcom/b/b/ct$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ct;
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
        "Lcom/b/b/bj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ct;


# direct methods
.method constructor <init>(Lcom/b/b/ct;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/b/b/ct$2;->a:Lcom/b/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 67
    check-cast p1, Lcom/b/b/bj;

    .line 1070
    iget-object v0, p1, Lcom/b/b/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1071
    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/b/b/ct;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {v0, v1}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_0
    return-void

    .line 1076
    :cond_0
    sget-object v1, Lcom/b/b/ct$5;->a:[I

    iget-object v2, p1, Lcom/b/b/bj;->b:Lcom/b/b/bj$a;

    invoke-virtual {v2}, Lcom/b/b/bj$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1079
    :pswitch_0
    invoke-static {}, Lcom/b/b/ct;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/b/b/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/b/b/ct$2;->a:Lcom/b/b/ct;

    invoke-static {v1, v0}, Lcom/b/b/ct;->a(Lcom/b/b/ct;Landroid/content/Context;)V

    goto :goto_0

    .line 1085
    :pswitch_1
    invoke-static {}, Lcom/b/b/ct;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/b/b/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/b/b/ct$2;->a:Lcom/b/b/ct;

    invoke-virtual {v1, v0}, Lcom/b/b/ct;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1093
    :pswitch_2
    invoke-static {}, Lcom/b/b/ct;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/b/b/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-static {v4, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/b/b/ct$2;->a:Lcom/b/b/ct;

    invoke-virtual {v1, v0}, Lcom/b/b/ct;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
